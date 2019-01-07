.class public Lorg/webrtc/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;,
        Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;,
        Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;,
        Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;,
        Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;,
        Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;
    }
.end annotation


# static fields
.field private static final BITRATE_ADJUSTMENT_FPS:I = 0x1e

.field private static final BITRATE_CORRECTION_MAX_SCALE:D = 2.0

.field private static final BITRATE_CORRECTION_SEC:D = 3.0

.field private static final BITRATE_CORRECTION_STEPS:I = 0xa

.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final DEQUEUE_TIMEOUT:I = 0x0

.field private static final H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MAXIMUM_INITIAL_FPS:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoEncoder_java"

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static final VIDEO_ControlRateVariable:I = 0x1

.field private static final VIDEO_ControlRateVariableSkipFrames:I = 0x3

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I

.field private static encoder_rc:I

.field private static errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

.field private static final exynosH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static h264Profile:I

.field private static final hisiH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final hisiVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static hwEncoderDisabledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static key_interval:I

.field private static final mtkH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final powerVRVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final powervrH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

.field private static final supportedColorList:[I

.field private static final supportedSurfaceColorList:[I

.field private static final vp8HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;


# instance fields
.field private bitrateAccumulator:D

.field private bitrateAccumulatorMax:D

.field private bitrateAdjustmentScaleExp:I

.field private bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field private bitrateObservationTimeMs:D

.field private colorFormat:I

.field private configData:Ljava/nio/ByteBuffer;

.field private drawer:Lorg/webrtc/GlRectDrawer;

.field private eglBase:Lorg/webrtc/EglBase14;

.field private height:I

.field private inputSurface:Landroid/view/Surface;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private presentationTimestampUs_:J

.field private targetBitrateBps:I

.field private targetFps:I

.field private type:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x17

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 65
    sput v4, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    .line 66
    sput v5, Lorg/webrtc/MediaCodecVideoEncoder;->h264Profile:I

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 118
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    const/16 v2, 0x13

    sget-object v3, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 120
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 122
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.hisi."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hisiVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 124
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.IMG."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->powerVRVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->hisiVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->powerVRVp8HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 130
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 132
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 134
    new-array v0, v6, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 138
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    const/16 v2, 0x13

    sget-object v3, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->qcomH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 140
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->exynosH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 142
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.hisi."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hisiH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 144
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.IMG."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->powervrH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 146
    new-instance v0, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.MTK."

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->mtkH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->qcomH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->exynosH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->hisiH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->powervrH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->mtkH264HwProperties:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SAMSUNG-SGH-I337"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Nexus 7"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Nexus 4"

    aput-object v1, v0, v6

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 162
    sput v6, Lorg/webrtc/MediaCodecVideoEncoder;->encoder_rc:I

    .line 163
    sput v6, Lorg/webrtc/MediaCodecVideoEncoder;->key_interval:I

    .line 168
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 172
    new-array v0, v5, [I

    const v1, 0x7f000789

    aput v1, v0, v4

    sput-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    return-void

    .line 168
    nop

    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->presentationTimestampUs_:J

    .line 177
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 654
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/MediaCodecVideoEncoder;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private checkOnMediaCodecThread()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 351
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MediaCodecVideoEncoder previously operated on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but is now called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    return-void
.end method

.method static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "codecName"    # Ljava/lang/String;

    .prologue
    .line 373
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableH264HwCodec()V
    .locals 3

    .prologue
    .line 213
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "H.264 encoding is disabled by application."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 3

    .prologue
    .line 203
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "VP8 encoding is disabled by application."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 3

    .prologue
    .line 208
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "VP9 encoding is disabled by application."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method private static findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    .locals 21
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "supportedHwCodecProperties"    # [Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .param p2, "colorList"    # [I

    .prologue
    .line 265
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 266
    const/4 v15, 0x0

    .line 347
    :goto_0
    return-object v15

    .line 270
    :cond_0
    const-string/jumbo v15, "video/avc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 271
    sget-object v15, Lorg/webrtc/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 272
    .local v8, "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 273
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Model: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " has black listed H.264 encoder."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const/4 v15, 0x0

    goto :goto_0

    .line 277
    .end local v8    # "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Trying to find HW encoder for mime :"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v15

    if-ge v9, v15, :cond_c

    .line 279
    const/4 v10, 0x0

    .line 281
    .local v10, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 285
    :goto_2
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 288
    const/4 v12, 0x0

    .line 289
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    aget-object v11, v16, v15

    .line 290
    .local v11, "mimeType":Ljava/lang/String;
    const-string/jumbo v18, "MediaCodecVideoEncoder_java"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "  mediaCodecList["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "].name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", encoder_name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 292
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 296
    .end local v11    # "mimeType":Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_8

    .line 299
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "  Found candidate encoder "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v13, 0x0

    .line 303
    .local v13, "supportedCodec":Z
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 304
    .local v2, "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v5, p1, v15

    .line 305
    .local v5, "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    iget-object v0, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 306
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->minSdk:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 307
    const-string/jumbo v17, "MediaCodecVideoEncoder_java"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Codec "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " is disabled due to SDK version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 282
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v5    # "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    :catch_0
    move-exception v7

    .line 283
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    const-string/jumbo v16, "Cannot retrieve encoder codec info"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 289
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "mimeType":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 310
    .end local v11    # "mimeType":Ljava/lang/String;
    .restart local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .restart local v5    # "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    .restart local v13    # "supportedCodec":Z
    :cond_5
    iget-object v15, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v16, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 311
    iget-object v2, v5, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 312
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Codec "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " requires bitrate adjustment: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_6
    const/4 v13, 0x1

    .line 318
    .end local v5    # "codecProperties":Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;
    :cond_7
    if-eqz v13, :cond_8

    .line 325
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 330
    .local v3, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v0, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    aget v6, v16, v15

    .line 331
    .local v6, "colorFormat":I
    const-string/jumbo v18, "MediaCodecVideoEncoder_java"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "  Color: 0x"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 326
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "colorFormat":I
    :catch_1
    move-exception v7

    .line 327
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    const-string/jumbo v16, "Cannot retrieve encoder capabilities"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 278
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 334
    .restart local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .restart local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "supportedCodec":Z
    :cond_9
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget v14, p2, v16

    .line 335
    .local v14, "supportedColorFormat":I
    iget-object v0, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v15, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v15, v0, :cond_b

    aget v4, v18, v15

    .line 336
    .local v4, "codecColorFormat":I
    if-ne v4, v14, :cond_a

    .line 338
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Found target encoder for mime "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ". Color: 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ". Bitrate adjustment: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 338
    invoke-static/range {v15 .. v17}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v15, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v15, v12, v4, v2}, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;ILorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    goto/16 :goto_0

    .line 335
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 334
    .end local v4    # "codecColorFormat":I
    :cond_b
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_6

    .line 346
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "info":Landroid/media/MediaCodecInfo;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    .end local v14    # "supportedColorFormat":I
    :cond_c
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "No HW encoder found for mime "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private getBitrateScale(I)D
    .locals 6
    .param p1, "bitrateAdjustmentScaleExp"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 735
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static isH264HwSupported()Z
    .locals 3

    .prologue
    .line 229
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 230
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH264HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 244
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 245
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp8HwSupported()Z
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 220
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp8HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 235
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp9HwSupported()Z
    .locals 3

    .prologue
    .line 224
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 225
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVp9HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 239
    sget-object v0, Lorg/webrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 240
    invoke-static {v0, v1, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static printStackTrace()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 358
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    iget-object v2, v2, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 359
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    iget-object v2, v2, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 360
    .local v0, "mediaCodecStackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 361
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v4, "MediaCodecVideoEncoder stacks trace:"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 363
    .local v1, "stackTrace":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "MediaCodecVideoEncoder_java"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method private reportEncodedFrame(I)V
    .locals 13
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 740
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v6, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v3, v6, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v3

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v3

    mul-double/2addr v8, v10

    div-double v4, v6, v8

    .line 746
    .local v4, "expectedBytesPerFrame":D
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v8, p1

    sub-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 747
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v3

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 751
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    mul-double v0, v6, v8

    .line 752
    .local v0, "bitrateAccumulatorCap":D
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 753
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    neg-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 757
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x40a7700000000000L    # 3000.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    .line 758
    const-string/jumbo v3, "MediaCodecVideoEncoder_java"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Acc: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". ExpScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    const/4 v2, 0x0

    .line 761
    .local v2, "bitrateAdjustmentScaleChanged":Z
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_4

    .line 763
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 764
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 765
    const/4 v2, 0x1

    .line 772
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 773
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 774
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v6, -0xa

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 775
    const-string/jumbo v3, "MediaCodecVideoEncoder_java"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Adjusting bitrate scale to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 776
    invoke-direct {p0, v7}, Lorg/webrtc/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    .line 775
    invoke-static {v3, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    div-int/lit16 v3, v3, 0x3e8

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-direct {p0, v3, v6}, Lorg/webrtc/MediaCodecVideoEncoder;->setRates(II)Z

    .line 779
    :cond_3
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    goto/16 :goto_0

    .line 766
    :cond_4
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v8, v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    .line 768
    iget v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 769
    iget-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v6, v6

    iput-wide v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 770
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static setErrorCallback(Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;)V
    .locals 3
    .param p0, "errorCallback"    # Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .prologue
    .line 196
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "Set error callback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sput-object p0, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 198
    return-void
.end method

.method public static setH264Profile(I)V
    .locals 5
    .param p0, "profile"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 802
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setH264Profile, profile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    if-ne p0, v3, :cond_0

    .line 804
    const/16 v0, 0x8

    sput v0, Lorg/webrtc/MediaCodecVideoEncoder;->h264Profile:I

    .line 812
    :goto_0
    return-void

    .line 805
    :cond_0
    if-ne p0, v4, :cond_1

    .line 806
    sput v4, Lorg/webrtc/MediaCodecVideoEncoder;->h264Profile:I

    goto :goto_0

    .line 810
    :cond_1
    sput v3, Lorg/webrtc/MediaCodecVideoEncoder;->h264Profile:I

    goto :goto_0
.end method

.method public static setKeyInterval(I)V
    .locals 3
    .param p0, "interval"    # I

    .prologue
    .line 797
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setKeyInterval, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    sput p0, Lorg/webrtc/MediaCodecVideoEncoder;->key_interval:I

    .line 799
    return-void
.end method

.method private setRates(II)Z
    .locals 8
    .param p1, "kbps"    # I
    .param p2, "frameRate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 604
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 606
    mul-int/lit16 v0, p1, 0x3e8

    .line 607
    .local v0, "codecBitrateBps":I
    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v5, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v4, v5, :cond_0

    .line 608
    int-to-double v4, v0

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 609
    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-lez v4, :cond_0

    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-ge v0, v4, :cond_0

    .line 611
    iget-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 614
    :cond_0
    iput v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 615
    iput p2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    .line 618
    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v5, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v4, v5, :cond_2

    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    if-lez v4, :cond_2

    .line 619
    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    mul-int/lit8 v4, v4, 0x1e

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    div-int v0, v4, v5

    .line 620
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit16 v6, v0, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " kbps. Fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 632
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v4, "video-bitrate"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    const/4 v3, 0x1

    .line 637
    .end local v2    # "params":Landroid/os/Bundle;
    :goto_1
    return v3

    .line 621
    :cond_2
    iget-object v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v5, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v4, v5, :cond_3

    .line 622
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " kbps. Fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". ExpScale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget v4, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    if-eqz v4, :cond_1

    .line 624
    int-to-double v4, v0

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-direct {p0, v6}, Lorg/webrtc/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 627
    :cond_3
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " kbps. Fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    const-string/jumbo v5, "setRates failed"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v6}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method dequeueInputBuffer()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 644
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 646
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "MediaCodecVideoEncoder_java"

    const-string/jumbo v2, "dequeueIntputBuffer failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 649
    const/4 v1, -0x2

    goto :goto_0
.end method

.method dequeueOutputBuffer()Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 20

    .prologue
    .line 672
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 674
    :try_start_0
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 675
    .local v17, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 677
    .local v3, "result":I
    if-ltz v3, :cond_0

    .line 678
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/16 v18, 0x1

    .line 679
    .local v18, "isConfigFrame":Z
    :goto_0
    if-eqz v18, :cond_0

    .line 680
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Config frame generated. Offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 691
    .end local v18    # "isConfigFrame":Z
    :cond_0
    if-ltz v3, :cond_5

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 696
    .local v19, "outputBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 697
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 698
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/webrtc/MediaCodecVideoEncoder;->reportEncodedFrame(I)V

    .line 701
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    .line 702
    .local v9, "isKeyFrame":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 703
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v5, "Sync frame generated"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    :cond_1
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->type:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    sget-object v5, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    if-ne v2, v5, :cond_4

    .line 706
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Appending config frame of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to output buffer with offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 710
    .local v4, "keyFrameBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 712
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 713
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 714
    new-instance v2, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct/range {v2 .. v7}, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    .line 730
    .end local v3    # "result":I
    .end local v4    # "keyFrameBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "isKeyFrame":Z
    .end local v17    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v19    # "outputBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    return-object v2

    .line 678
    .restart local v3    # "result":I
    .restart local v17    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 701
    .restart local v19    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 716
    .restart local v9    # "isKeyFrame":Z
    :cond_4
    new-instance v6, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 717
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move v7, v3

    invoke-direct/range {v6 .. v11}, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    move-object v2, v6

    goto :goto_2

    .line 719
    .end local v9    # "isKeyFrame":Z
    .end local v19    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/4 v2, -0x3

    if-ne v3, v2, :cond_6

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 721
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v2

    goto :goto_2

    .line 722
    :cond_6
    const/4 v2, -0x2

    if-ne v3, v2, :cond_7

    .line 723
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v2

    goto :goto_2

    .line 724
    :cond_7
    const/4 v2, -0x1

    if-ne v3, v2, :cond_8

    .line 725
    const/4 v2, 0x0

    goto :goto_2

    .line 727
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dequeueOutputBuffer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v3    # "result":I
    .end local v17    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v16

    .line 729
    .local v16, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v5, "dequeueOutputBuffer failed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0, v6}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 730
    new-instance v10, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    invoke-direct/range {v10 .. v15}, Lorg/webrtc/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    move-object v2, v10

    goto :goto_2
.end method

.method encodeBuffer(ZIIJ)Z
    .locals 10
    .param p1, "isKeyframe"    # Z
    .param p2, "inputBuffer"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimestampUs"    # J

    .prologue
    const/4 v9, 0x0

    .line 494
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 496
    if-eqz p1, :cond_0

    .line 501
    :try_start_0
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "Sync frame request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v7, "b":Landroid/os/Bundle;
    const-string/jumbo v0, "request-sync"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 506
    .end local v7    # "b":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    .line 508
    :catch_0
    move-exception v8

    .line 509
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "encodeBuffer failed"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v8, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v9

    .line 510
    goto :goto_0
.end method

.method encodeTexture(ZIZ[FJ)Z
    .locals 13
    .param p1, "isKeyframe"    # Z
    .param p2, "oesTextureId"    # I
    .param p3, "textureGoRgb"    # Z
    .param p4, "transformationMatrix"    # [F
    .param p5, "presentationTimestampUs"    # J

    .prologue
    .line 516
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 523
    if-eqz p1, :cond_0

    .line 524
    :try_start_0
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Sync frame request"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v11, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "request-sync"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v11}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 529
    .end local v11    # "b":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v2}, Lorg/webrtc/EglBase14;->makeCurrent()V

    .line 535
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 537
    if-eqz p3, :cond_1

    .line 538
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    iget v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    move v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v2 .. v10}, Lorg/webrtc/GlRectDrawer;->drawRgb(I[FIIIIII)V

    .line 544
    :goto_0
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/webrtc/EglBase14;->swapBuffers(J)V

    .line 545
    const/4 v2, 0x1

    .line 548
    :goto_1
    return v2

    .line 541
    :cond_1
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    iget v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    iget v6, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    iget v10, p0, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    move v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v2 .. v10}, Lorg/webrtc/GlRectDrawer;->drawOes(I[FIIIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v12

    .line 547
    .local v12, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "encodeTexture failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v12, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 548
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 487
    iget-object v1, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 488
    .local v0, "inputBuffers":[Ljava/nio/ByteBuffer;
    const-string/jumbo v1, "MediaCodecVideoEncoder_java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Input buffers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    return-object v0
.end method

.method initEncode(Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;IIIILorg/webrtc/EglBase14$Context;)Z
    .locals 16
    .param p1, "type"    # Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "kbps"    # I
    .param p5, "fps"    # I
    .param p6, "sharedContext"    # Lorg/webrtc/EglBase14$Context;

    .prologue
    .line 381
    if-eqz p6, :cond_0

    const/4 v10, 0x1

    .line 382
    .local v10, "useSurface":Z
    :goto_0
    const-string/jumbo v11, "MediaCodecVideoEncoder_java"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Java initEncode: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ". @ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " kbps. Fps: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ". Encode from texture : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/MediaCodecVideoEncoder;->width:I

    .line 386
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/MediaCodecVideoEncoder;->height:I

    .line 387
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v11, :cond_1

    .line 388
    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "Forgot to release()?"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 381
    .end local v10    # "useSurface":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 390
    .restart local v10    # "useSurface":Z
    :cond_1
    const/4 v8, 0x0

    .line 391
    .local v8, "properties":Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;
    const/4 v6, 0x0

    .line 392
    .local v6, "mime":Ljava/lang/String;
    const/4 v4, 0x0

    .line 393
    .local v4, "keyFrameIntervalSec":I
    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_4

    .line 394
    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    .line 395
    const-string/jumbo v12, "video/x-vnd.on2.vp8"

    sget-object v13, Lorg/webrtc/MediaCodecVideoEncoder;->vp8HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v10, :cond_3

    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_1
    invoke-static {v12, v13, v11}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 397
    const/16 v4, 0x64

    .line 424
    :cond_2
    :goto_2
    if-nez v8, :cond_a

    .line 425
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Can not find HW encoder for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 395
    :cond_3
    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_1

    .line 398
    :cond_4
    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_6

    .line 399
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    .line 400
    const-string/jumbo v12, "video/x-vnd.on2.vp9"

    sget-object v13, Lorg/webrtc/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v10, :cond_5

    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_3
    invoke-static {v12, v13, v11}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 402
    const/16 v4, 0x64

    goto :goto_2

    .line 400
    :cond_5
    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_3

    .line 403
    :cond_6
    sget-object v11, Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_2

    .line 404
    const-string/jumbo v6, "video/avc"

    .line 406
    sget-object v9, Lorg/webrtc/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 409
    .local v9, "supportedColorList":[I
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v12, "HUAWEI GRA-TL00"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v12, "HUAWEI GRA-UL00"

    .line 410
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v12, "HUAWEI GRA-UL10"

    .line 411
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v12, "HUAWEI GRA-CL00"

    .line 412
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v12, "HUAWEI GRA-CL10"

    .line 413
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 414
    :cond_7
    const/4 v11, 0x3

    new-array v7, v11, [I

    fill-array-data v7, :array_0

    .line 417
    .local v7, "no_I420_ColorList":[I
    move-object v9, v7

    .line 420
    .end local v7    # "no_I420_ColorList":[I
    :cond_8
    const-string/jumbo v11, "video/avc"

    sget-object v12, Lorg/webrtc/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v10, :cond_9

    sget-object v9, Lorg/webrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .end local v9    # "supportedColorList":[I
    :cond_9
    invoke-static {v11, v12, v9}, Lorg/webrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 422
    sget v4, Lorg/webrtc/MediaCodecVideoEncoder;->key_interval:I

    goto/16 :goto_2

    .line 427
    :cond_a
    sput-object p0, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    .line 428
    iget v11, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    move-object/from16 v0, p0

    iput v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->colorFormat:I

    .line 429
    iget-object v11, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 430
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v12, Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v11, v12, :cond_c

    .line 431
    const/16 p5, 0x1e

    .line 435
    :goto_4
    const-string/jumbo v11, "MediaCodecVideoEncoder_java"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Color format: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lorg/webrtc/MediaCodecVideoEncoder;->colorFormat:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ". Bitrate adjustment: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ". Initial fps: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    move/from16 v0, p4

    mul-int/lit16 v11, v0, 0x3e8

    move-object/from16 v0, p0

    iput v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 438
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    .line 439
    move-object/from16 v0, p0

    iget v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v12, v11

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 440
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 441
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 442
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 444
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 446
    :try_start_0
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 447
    .local v3, "format":Landroid/media/MediaFormat;
    const-string/jumbo v11, "bitrate"

    move-object/from16 v0, p0

    iget v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->targetBitrateBps:I

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 448
    const-string/jumbo v11, "bitrate-mode"

    const/4 v12, 0x2

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 450
    sget v11, Lorg/webrtc/MediaCodecVideoEncoder;->h264Profile:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 451
    const-string/jumbo v11, "profile"

    sget v12, Lorg/webrtc/MediaCodecVideoEncoder;->h264Profile:I

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 453
    :cond_b
    const-string/jumbo v11, "color-format"

    iget v12, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 454
    const-string/jumbo v11, "frame-rate"

    move-object/from16 v0, p0

    iget v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 455
    const-string/jumbo v11, "i-frame-interval"

    invoke-virtual {v3, v11, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 457
    add-int/lit8 v11, p2, 0xf

    div-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, p3, 0xf

    div-int/lit8 v12, v12, 0x10

    mul-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0xa

    div-int/lit8 v5, v11, 0x64

    .line 458
    .local v5, "mbs":I
    const-string/jumbo v11, "intra-refresh-CIR-mbs"

    invoke-virtual {v3, v11, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 459
    const-string/jumbo v11, "MediaCodecVideoEncoder_java"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "  Format: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v11, v8, Lorg/webrtc/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v11}, Lorg/webrtc/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 461
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/webrtc/MediaCodecVideoEncoder;->type:Lorg/webrtc/MediaCodecVideoEncoder$VideoCodecType;

    .line 462
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v11, :cond_d

    .line 463
    const-string/jumbo v11, "MediaCodecVideoEncoder_java"

    const-string/jumbo v12, "Can not create media encoder"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    const/4 v11, 0x0

    .line 483
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mbs":I
    :goto_5
    return v11

    .line 433
    :cond_c
    const/16 v11, 0x1e

    move/from16 v0, p5

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto/16 :goto_4

    .line 466
    .restart local v3    # "format":Landroid/media/MediaFormat;
    .restart local v5    # "mbs":I
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v3, v12, v13, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 468
    if-eqz v10, :cond_e

    .line 469
    new-instance v11, Lorg/webrtc/EglBase14;

    sget-object v12, Lorg/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    move-object/from16 v0, p6

    invoke-direct {v11, v0, v12}, Lorg/webrtc/EglBase14;-><init>(Lorg/webrtc/EglBase14$Context;[I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    .line 471
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 472
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Lorg/webrtc/EglBase14;->createSurface(Landroid/view/Surface;)V

    .line 473
    new-instance v11, Lorg/webrtc/GlRectDrawer;

    invoke-direct {v11}, Lorg/webrtc/GlRectDrawer;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    .line 475
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->start()V

    .line 476
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 477
    const-string/jumbo v11, "MediaCodecVideoEncoder_java"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Output buffers: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/webrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 483
    const/4 v11, 0x1

    goto :goto_5

    .line 479
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mbs":I
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v11, "MediaCodecVideoEncoder_java"

    const-string/jumbo v12, "initEncode failed"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v2, v13}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 481
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 414
    :array_0
    .array-data 4
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method release()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 553
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Java releaseEncoder"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 558
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 560
    .local v0, "releaseDone":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lorg/webrtc/MediaCodecVideoEncoder$1;

    invoke-direct {v1, p0, v0}, Lorg/webrtc/MediaCodecVideoEncoder$1;-><init>(Lorg/webrtc/MediaCodecVideoEncoder;Ljava/util/concurrent/CountDownLatch;)V

    .line 574
    .local v1, "runMediaCodecRelease":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 576
    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Media encoder release timeout"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    sget v2, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    .line 579
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    if-eqz v2, :cond_0

    .line 580
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invoke codec error callback. Errors: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    sget-object v2, Lorg/webrtc/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    sget v3, Lorg/webrtc/MediaCodecVideoEncoder;->codecErrors:I

    invoke-interface {v2, v3}, Lorg/webrtc/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;->onMediaCodecVideoEncoderCriticalError(I)V

    .line 585
    :cond_0
    iput-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 586
    iput-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 587
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    invoke-virtual {v2}, Lorg/webrtc/GlRectDrawer;->release()V

    .line 589
    iput-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/GlRectDrawer;

    .line 591
    :cond_1
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    if-eqz v2, :cond_2

    .line 592
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    invoke-virtual {v2}, Lorg/webrtc/EglBase14;->release()V

    .line 593
    iput-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/EglBase14;

    .line 595
    :cond_2
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 596
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 597
    iput-object v5, p0, Lorg/webrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 599
    :cond_3
    sput-object v5, Lorg/webrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/MediaCodecVideoEncoder;

    .line 600
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Java releaseEncoder done"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method releaseOutputBuffer(I)Z
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 786
    invoke-direct {p0}, Lorg/webrtc/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 788
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    const/4 v1, 0x1

    .line 792
    :goto_0
    return v1

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "releaseOutputBuffer failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
