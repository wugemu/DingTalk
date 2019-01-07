.class public final Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.super Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;,
        Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final FFP_PROPV_DECODER_AVCODEC:I = 0x1

.field public static final FFP_PROPV_DECODER_MEDIACODEC:I = 0x2

.field public static final FFP_PROPV_DECODER_UNKNOWN:I = 0x0

.field public static final FFP_PROPV_DECODER_VIDEOTOOLBOX:I = 0x3

.field public static final FFP_PROP_AUDIO_ACCELERATE:I = 0x5211

.field public static final FFP_PROP_AUDIO_SLOWSPEED:I = 0x4e8e

.field public static final FFP_PROP_AVFORMAT_OPEN_TIME:I = 0x4e9a

.field public static final FFP_PROP_AVFORMAT_STREAM_INFO_TIME:I = 0x4e9b

.field public static final FFP_PROP_AV_SYNC_TYPE:I = 0x4ea4

.field public static final FFP_PROP_DECODER_VIDEO_FPS:I = 0x4e91

.field public static final FFP_PROP_DOWNLOAD_BITRATE:I = 0x4e93

.field public static final FFP_PROP_DOWNLOAD_VIDEO_FPS:I = 0x4e90

.field public static final FFP_PROP_ENABLE_ACCURATE_SEEK:I = 0x4ea3

.field public static final FFP_PROP_FIRSTPLAY_NEED_TIME:I = 0x4e95

.field public static final FFP_PROP_FIRST_PKT_NEED_TIME:I = 0x4e97

.field public static final FFP_PROP_FLOAT_AVDELAY:I = 0x2714

.field public static final FFP_PROP_FLOAT_AVDIFF:I = 0x2715

.field public static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final FFP_PROP_HEVC_DECODE_OPT:I = 0x4e85

.field public static final FFP_PROP_HTTP_OPEN_TIME:I = 0x4e96

.field public static final FFP_PROP_INT64_AUDIO_CACHED_BYTES:I = 0x4e28

.field public static final FFP_PROP_INT64_AUDIO_CACHED_DURATION:I = 0x4e26

.field public static final FFP_PROP_INT64_AUDIO_CACHED_FRAMES:I = 0x4e2c

.field public static final FFP_PROP_INT64_AUDIO_CACHED_PACKETS:I = 0x4e2a

.field public static final FFP_PROP_INT64_AUDIO_DECODER:I = 0x4e24

.field public static final FFP_PROP_INT64_AVCODEC_DECODE_TIME:I = 0x4e2d

.field public static final FFP_PROP_INT64_FIRST_FRAME_RENDERING_OPT:I = 0x520a

.field public static final FFP_PROP_INT64_SELECTED_AUDIO_STREAM:I = 0x4e22

.field public static final FFP_PROP_INT64_SELECTED_VIDEO_STREAM:I = 0x4e21

.field public static final FFP_PROP_INT64_VIDEO_CACHED_BYTES:I = 0x4e27

.field public static final FFP_PROP_INT64_VIDEO_CACHED_DURATION:I = 0x4e25

.field public static final FFP_PROP_INT64_VIDEO_CACHED_FRAMES:I = 0x4e2b

.field public static final FFP_PROP_INT64_VIDEO_CACHED_PACKETS:I = 0x4e29

.field public static final FFP_PROP_INT64_VIDEO_DECODER:I = 0x4e23

.field public static final FFP_PROP_INTERVAL_DOWNLOAD_BITRATE:I = 0x4ea2

.field public static final FFP_PROP_M3U8_SELECT_VIDEO:I = 0xc3b4

.field public static final FFP_PROP_NETWORK_TRAFFIC:I = 0x520e

.field public static final FFP_PROP_NETWORK_TRAFFIC_REPORT_TRIGGER:I = 0x520d

.field public static final FFP_PROP_OBJ_VIDEO_FPS:I = 0x7531

.field public static final FFP_PROP_ONLY_ONE_STREAM:I = 0x4e9d

.field public static final FFP_PROP_PLAYBUFFER_NEED_TIME:I = 0x4e98

.field public static final FFP_PROP_PLAYER_MUTED:I = 0x5210

.field public static final FFP_PROP_PLAY_TYPE:I = 0x520f

.field public static final FFP_PROP_RENDER_VIDEO_FPS:I = 0x4e92

.field public static final FFP_PROP_SEND_SEI:I = 0x4e8f

.field public static final FFP_PROP_SEND_VIA:I = 0x4e99

.field public static final FFP_PROP_STRING_CDNIP:I = 0x4e9c

.field public static final FFP_PROP_STRING_LOCAL_IP:I = 0x520c

.field public static final FFP_PROP_STRING_SERVER_IP:I = 0x520b

.field public static final FFP_PROP_USE_OPENSL_UNDER_KITKAT:I = 0x4ea1

.field public static final FFP_PROP_VIDEO_CODEC_INFO:I = 0x4e94

.field public static final FFP_VALUE_M3U8_SELECT_VIDEO_FIRST:I = 0x0

.field public static final FFP_VALUE_M3U8_SELECT_VIDEO_HIGH:I = 0x1

.field public static final FFP_VALUE_M3U8_SELECT_VIDEO_LOW:I = 0x2

.field public static final FFP_VALUE_M3U8_SELECT_VIDEO_MID:I = 0x3

.field public static final IJK_LOG_DEBUG:I = 0x3

.field public static final IJK_LOG_DEFAULT:I = 0x1

.field public static final IJK_LOG_ERROR:I = 0x6

.field public static final IJK_LOG_FATAL:I = 0x7

.field public static final IJK_LOG_INFO:I = 0x4

.field public static final IJK_LOG_SILENT:I = 0x8

.field public static final IJK_LOG_UNKNOWN:I = 0x0

.field public static final IJK_LOG_VERBOSE:I = 0x2

.field public static final IJK_LOG_WARN:I = 0x5

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_OUT_OF_BUFFERING:I = 0x12c

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_RESUME_BUFFERING:I = 0x12d

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final OPT_CATEGORY_CODEC:I = 0x2

.field public static final OPT_CATEGORY_FORMAT:I = 0x1

.field public static final OPT_CATEGORY_PLAYER:I = 0x4

.field public static final OPT_CATEGORY_SWS:I = 0x3

.field public static final ORANGE_ACCURATE_SEEK:Ljava/lang/String; = "ijkAccurateSeekWhiteList"

.field public static final ORANGE_USENEWHEVC:Ljava/lang/String; = "UseNewHEVC2"

.field public static final ORANGE_USE_OPENSL_UNDER_KITKAT:Ljava/lang/String; = "useOpenslUnderKitkat"

.field public static final PROP_FLOAT_VIDEO_DECODE_FRAMES_PER_SECOND:I = 0x2711

.field public static final PROP_FLOAT_VIDEO_OUTPUT_FRAMES_PER_SECOND:I = 0x2712

.field public static final SDL_FCC_RV16:I = 0x36315652

.field public static final SDL_FCC_RV32:I = 0x32335652

.field public static final SDL_FCC_YV12:I = 0x32315659

.field private static final TAG:Ljava/lang/String; = "AVSDK"

.field private static volatile mIsLibLoaded:Z

.field private static volatile mIsNativeInitialized:Z


# instance fields
.field private mDuration:J

.field private mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

.field private mFdListener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

.field private mListenerContext:I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaDataSource:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaPlayer:J
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeSurfaceTexture:I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 230
    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;-><init>()V

    .line 195
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 250
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initPlayer(Ljjr;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 195
    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 255
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initPlayer(Ljjr;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljjq;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configAdapter"    # Ljjq;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>(Landroid/content/Context;Ljjq;Ljjr;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljjq;Ljjr;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configAdapter"    # Ljjq;
    .param p3, "customLibLoader"    # Ljjr;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;-><init>(Landroid/content/Context;Ljjq;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 264
    invoke-direct {p0, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initPlayer(Ljjr;)V

    .line 265
    return-void
.end method

.method private native _enableFaceDetect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getDuration()J
.end method

.method private native _getLoopCount()I
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSourceFd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setLoopCount(I)V
.end method

.method private native _setStreamSelected(IZ)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 68
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 68
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .prologue
    .line 68
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mFdListener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->enableFaceDetectInner(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V

    return-void
.end method

.method private enableFaceDetectInner(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "modelPath"    # Ljava/lang/String;
    .param p3, "modelNormalPath"    # Ljava/lang/String;
    .param p4, "classifierPath"    # Ljava/lang/String;
    .param p5, "listener"    # Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1037
    :try_start_0
    iput-object p5, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mFdListener:Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    .line 1038
    invoke-static {}, Landroid/taobao/atlas/framework/Atlas;->getInstance()Landroid/taobao/atlas/framework/Atlas;

    move-result-object v0

    const-string/jumbo v1, "alg.taobao.com.inovation_alg"

    invoke-virtual {v0, v1}, Landroid/taobao/atlas/framework/Atlas;->getBundle(Ljava/lang/String;)Lorg/osgi/framework/Bundle;

    move-result-object v0

    check-cast v0, Landroid/taobao/atlas/framework/BundleImpl;

    invoke-virtual {v0}, Landroid/taobao/atlas/framework/BundleImpl;->getArchive()Landroid/taobao/atlas/framework/bundlestorage/BundleArchive;

    move-result-object v0

    const-string/jumbo v1, "libAliFaceAlignmentModule.so"

    invoke-virtual {v0, v1}, Landroid/taobao/atlas/framework/bundlestorage/BundleArchive;->findLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1039
    .local v6, "soFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_enableFaceDetect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    .end local v6    # "soFile":Ljava/io/File;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initNativeOnce()V
    .locals 2

    .prologue
    .line 232
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 233
    :try_start_0
    sget-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_init()V

    .line 235
    const/4 v0, 0x1

    sput-boolean v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    .line 237
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initPlayer(Ljjr;)V
    .locals 6
    .param p1, "customLibLoader"    # Ljjr;

    .prologue
    .line 303
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ljjr;)V

    .line 304
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->initNativeOnce()V

    .line 307
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 308
    new-instance v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    .line 317
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 318
    const/4 v1, 0x4

    const-string/jumbo v2, "start-on-prepared"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 319
    return-void

    .line 310
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method public static loadLibrariesOnce(Ljjr;)V
    .locals 5
    .param p0, "customLibLoader"    # Ljjr;

    .prologue
    .line 208
    const-class v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v2

    .line 209
    :try_start_0
    sget-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 211
    if-nez p0, :cond_0

    .line 217
    :try_start_1
    const-string/jumbo v1, "tbffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v1, "tbsdl"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "tbplayer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 221
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "AVSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadLibrariesOnce loadLibrary fail ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_message_loop(Ljava/lang/Object;)V
.end method

.method public static native native_profileBegin(Ljava/lang/String;)V
.end method

.method public static native native_profileEnd()V
.end method

.method public static native native_setLogLevel(I)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "profile"    # I
    .param p3, "level"    # I
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 906
    if-eqz p0, :cond_0

    instance-of v4, p0, Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v2, p0

    .line 910
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 911
    .local v2, "weakPlayer":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltv/danmaku/ijk/media/player/IjkMediaPlayer;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 912
    .local v1, "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-eqz v1, :cond_0

    .line 915
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    .line 917
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;
    invoke-interface {v0, v1, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IJJJLjava/lang/Object;)V
    .locals 10
    .param p0, "weakThiz"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # J
    .param p8, "obj"    # Ljava/lang/Object;
    .annotation build Ltv/danmaku/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 856
    if-nez p0, :cond_1

    .line 887
    .end local p0    # "weakThiz":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 860
    .restart local p0    # "weakThiz":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "weakThiz":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 861
    .local v4, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-eqz v4, :cond_0

    .line 865
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_2

    const-wide/16 v6, 0x2

    cmp-long v5, p2, v6

    if-nez v5, :cond_2

    .line 868
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 870
    :cond_2
    const-class v6, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v6

    .line 872
    :try_start_0
    iget-object v5, v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v5, :cond_4

    .line 873
    iget-object v5, v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v5, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 874
    .local v3, "m":Landroid/os/Message;
    new-instance v2, Ltv/danmaku/ijk/media/player/EventData;

    invoke-direct {v2}, Ltv/danmaku/ijk/media/player/EventData;-><init>()V

    .line 875
    .local v2, "event_data":Ltv/danmaku/ijk/media/player/EventData;
    iput-wide p2, v2, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    .line 876
    iput-wide p4, v2, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    .line 877
    move-wide/from16 v0, p6

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    .line 878
    move-object/from16 v0, p8

    iput-object v0, v2, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    .line 879
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 880
    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_5

    const-wide/16 v8, 0x3

    cmp-long v5, p2, v8

    if-nez v5, :cond_5

    .line 881
    :cond_3
    iget-object v5, v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v5, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 887
    .end local v2    # "event_data":Ltv/danmaku/ijk/media/player/EventData;
    .end local v3    # "m":Landroid/os/Message;
    :cond_4
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 884
    .restart local v2    # "event_data":Ltv/danmaku/ijk/media/player/EventData;
    .restart local v3    # "m":Landroid/os/Message;
    :cond_5
    :try_start_1
    iget-object v5, v4, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v5, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 496
    if-eqz p1, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 502
    :cond_0
    :goto_0
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    .line 503
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 504
    return-void

    .line 498
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 507
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 510
    :cond_0
    return-void

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final native _getPropertyFloat(IF)F
.end method

.method public final native _getPropertyLong(IJ)J
.end method

.method public final native _getPropertyObject(I)Ljava/lang/Object;
.end method

.method public final native _getPropertyString(I)Ljava/lang/String;
.end method

.method public final native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ltv/danmaku/ijk/media/player/IjkMediaException;
        }
    .end annotation
.end method

.method public final native _setOption(ILjava/lang/String;J)V
.end method

.method public final native _setOption(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public final native _setPropertyFloat(IF)V
.end method

.method public final native _setPropertyLong(IJ)V
.end method

.method public final native _setPropertyString(ILjava/lang/String;)V
.end method

.method public final enableFaceDetect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "modelPath"    # Ljava/lang/String;
    .param p3, "modelNormalPath"    # Ljava/lang/String;
    .param p4, "classifierPath"    # Ljava/lang/String;
    .param p5, "listener"    # Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 991
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    :cond_0
    const-string/jumbo v0, "AVSDK"

    const-string/jumbo v1, "enableFaceDetect null param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :goto_0
    return-void

    .line 995
    :cond_1
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;-><init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1032
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_finalize()V

    .line 666
    return-void
.end method

.method public final native getAudioSessionId()I
.end method

.method public final native getCurrentPosition()J
.end method

.method public final getDuration()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 550
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 551
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDuration:J

    .line 552
    :cond_0
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDuration:J

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public final getVideoSarDen()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public final getVideoSarNum()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public final isHardwareDecode()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 619
    const/16 v0, 0x4e23

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native isPlaying()Z
.end method

.method public final pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 475
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorPause()V

    .line 476
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pause()V

    .line 477
    return-void
.end method

.method public final prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ltv/danmaku/ijk/media/player/IjkMediaException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 441
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    .line 442
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    .line 443
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    .line 444
    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    .line 445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDuration:J

    .line 446
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorPrepare()V

    .line 447
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_prepareAsync()V

    .line 448
    return-void
.end method

.method public final release()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 576
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorPlayExperience()V

    .line 577
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorRelease()V

    .line 578
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 579
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    .line 586
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    .line 588
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mDuration:J

    .line 589
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_release()V

    .line 591
    return-void

    .line 589
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final reset()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 598
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorPlayExperience()V

    .line 599
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorReset()V

    .line 600
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_reset()V

    .line 602
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mEventHandler:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 608
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final seekTo(J)V
    .locals 1
    .param p1, "msec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorSeek()V

    .line 540
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_seekTo(J)V

    .line 541
    return-void
.end method

.method public final setConfig(Ljos;)V
    .locals 10
    .param p1, "config"    # Ljos;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 269
    invoke-super {p0, p1}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->setConfig(Ljos;)V

    .line 270
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfig:Ljos;

    if-eqz v6, :cond_1

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "**** CPU name:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljok;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",phone model:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/16 v6, 0x520f

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfig:Ljos;

    iget v7, v7, Ljos;->b:I

    int-to-long v8, v7

    invoke-virtual {p0, v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 273
    const/4 v6, 0x4

    const-string/jumbo v7, "mediacodec-hevc"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 274
    const/4 v6, 0x4

    const-string/jumbo v7, "mediacodec-avc"

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 276
    :try_start_0
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 277
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 278
    .local v4, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 279
    const v6, 0xc3b4

    const-wide/16 v8, 0x1

    invoke-virtual {p0, v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfigAdapter:Ljjq;

    if-eqz v6, :cond_1

    .line 289
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v6}, Ljjq;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljok;->a(Ljava/lang/String;)Z

    move-result v2

    .line 290
    .local v2, "busehevc":Z
    const/16 v8, 0x4e85

    if-eqz v2, :cond_3

    const-wide/16 v6, 0x1

    :goto_1
    invoke-virtual {p0, v8, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 291
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-gt v6, v7, :cond_0

    .line 292
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v6}, Ljjq;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljok;->a(Ljava/lang/String;)Z

    move-result v1

    .line 293
    .local v1, "bUseOpenslUnderKitkat":Z
    const/16 v8, 0x4ea1

    if-eqz v1, :cond_4

    const-wide/16 v6, 0x1

    :goto_2
    invoke-virtual {p0, v8, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 295
    .end local v1    # "bUseOpenslUnderKitkat":Z
    :cond_0
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v6}, Ljjq;->a()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "whiteStr":Ljava/lang/String;
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mConfig:Ljos;

    iget-object v6, v6, Ljos;->q:Ljava/lang/String;

    invoke-static {v6, v5}, Ljok;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 297
    .local v0, "bEnableAccurateSeek":Z
    const/16 v8, 0x4ea3

    if-eqz v0, :cond_5

    const-wide/16 v6, 0x1

    :goto_3
    invoke-virtual {p0, v8, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 300
    .end local v0    # "bEnableAccurateSeek":Z
    .end local v2    # "busehevc":Z
    .end local v5    # "whiteStr":Ljava/lang/String;
    :cond_1
    return-void

    .line 282
    .restart local v3    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    const v6, 0xc3b4

    const-wide/16 v8, 0x3

    :try_start_1
    invoke-virtual {p0, v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 290
    .restart local v2    # "busehevc":Z
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 293
    .restart local v1    # "bUseOpenslUnderKitkat":Z
    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 297
    .end local v1    # "bUseOpenslUnderKitkat":Z
    .restart local v0    # "bEnableAccurateSeek":Z
    .restart local v5    # "whiteStr":Ljava/lang/String;
    :cond_5
    const-wide/16 v6, 0x0

    goto :goto_3
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 404
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorDataSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string/jumbo v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 408
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 409
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljok;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "userAgent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 411
    const-string/jumbo v6, "User-Agent"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 415
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 418
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_2
    const-string/jumbo v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const/4 v6, 0x1

    const-string/jumbo v8, "headers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 424
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCdnIp:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isUseVideoCache()Z

    move-result v6

    if-nez v6, :cond_4

    .line 425
    const/16 v6, 0x4e9c

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mCdnIp:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyString(ILjava/lang/String;)V

    .line 427
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "userAgent":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v3, v10, v10}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 342
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 344
    if-eqz p1, :cond_0

    .line 345
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 349
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 350
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 351
    return-void

    .line 347
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public final setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 483
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 488
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 489
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 491
    :cond_0
    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 379
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 380
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 381
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 382
    return-void
.end method

.method public final setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v2, 0x5210

    const/4 v1, 0x0

    .line 632
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setVolume(FF)V

    .line 633
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 634
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_setPropertyLong(IJ)V

    goto :goto_0
.end method

.method public final start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 455
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorStart()V

    .line 456
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_start()V

    .line 457
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 465
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_pause()V

    .line 467
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_stop()V

    .line 468
    return-void
.end method
