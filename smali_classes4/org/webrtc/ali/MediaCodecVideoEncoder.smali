.class public Lorg/webrtc/ali/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;,
        Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;,
        Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;,
        Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;,
        Lorg/webrtc/ali/MediaCodecVideoEncoder$H264Profile;,
        Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;,
        Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;
    }
.end annotation


# static fields
.field private static final BITRATE_ADJUSTMENT_FPS:I = 0x1e

.field private static final BITRATE_CORRECTION_MAX_SCALE:D = 4.0

.field private static final BITRATE_CORRECTION_SEC:D = 3.0

.field private static final BITRATE_CORRECTION_STEPS:I = 0x14

.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final DEQUEUE_TIMEOUT:I = 0x0

.field private static final H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MAXIMUM_INITIAL_FPS:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:J = 0x3a98L

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:J = 0x4e20L

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoEncoder"

.field private static final VIDEO_AVCLevel3:I = 0x100

.field private static final VIDEO_AVCProfileHigh:I = 0x8

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I

.field private static errorCallback:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

.field private static final exynosH264HighProfileHwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosH264HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp9HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final h264HighProfileHwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final h264HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

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

.field private static final intelVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomH264HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp9HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

.field private static final supportedColorList:[I

.field private static final supportedSurfaceColorList:[I

.field private static final vp9HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;


# instance fields
.field private bitrateAccumulator:D

.field private bitrateAccumulatorMax:D

.field private bitrateAdjustmentScaleExp:I

.field private bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field private bitrateObservationTimeMs:D

.field private colorFormat:I

.field private configData:Ljava/nio/ByteBuffer;

.field private drawer:Lorg/webrtc/ali/GlRectDrawer;

.field private eglBase:Lorg/webrtc/ali/EglBase14;

.field private forcedKeyFrameMs:J

.field private height:I

.field private inputSurface:Landroid/view/Surface;

.field private lastKeyFrameMs:J

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private profile:I

.field private targetBitrateBps:I

.field private targetFps:I

.field private type:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/16 v7, 0x13

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 65
    sput v4, Lorg/webrtc/ali/MediaCodecVideoEncoder;->codecErrors:I

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 137
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 139
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    const/16 v2, 0x17

    sget-object v3, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 141
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Intel."

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->intelVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 154
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    const/16 v2, 0x18

    sget-object v3, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 156
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    const/16 v2, 0x18

    sget-object v3, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 158
    new-array v0, v6, [Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 162
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomH264HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 164
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosH264HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 166
    new-array v0, v6, [Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomH264HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosH264HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 170
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    const/16 v2, 0x17

    sget-object v3, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosH264HighProfileHwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 173
    new-array v0, v5, [Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosH264HighProfileHwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HighProfileHwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SAMSUNG-SGH-I337"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Nexus 7"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Nexus 4"

    aput-object v1, v0, v6

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 193
    new-array v0, v5, [I

    const v1, 0x7f000789

    aput v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    return-void

    .line 189
    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoEncoder;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private checkOnMediaCodecThread()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 390
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MediaCodecVideoEncoder previously operated on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but is now called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    return-void
.end method

.method static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "codecName"    # Ljava/lang/String;

    .prologue
    .line 412
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static disableH264HwCodec()V
    .locals 2

    .prologue
    .line 239
    const-string/jumbo v0, "MediaCodecVideoEncoder"

    const-string/jumbo v1, "H.264 encoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 2

    .prologue
    .line 229
    const-string/jumbo v0, "MediaCodecVideoEncoder"

    const-string/jumbo v1, "VP8 encoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 2

    .prologue
    .line 234
    const-string/jumbo v0, "MediaCodecVideoEncoder"

    const-string/jumbo v1, "VP9 encoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method private static findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    .locals 21
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "supportedHwCodecProperties"    # [Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
    .param p2, "colorList"    # [I

    .prologue
    .line 304
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 305
    const/4 v15, 0x0

    .line 386
    :goto_0
    return-object v15

    .line 309
    :cond_0
    const-string/jumbo v15, "video/avc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 310
    sget-object v15, Lorg/webrtc/ali/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 311
    .local v8, "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 312
    const-string/jumbo v15, "MediaCodecVideoEncoder"

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

    invoke-static/range {v15 .. v16}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v15, 0x0

    goto :goto_0

    .line 317
    .end local v8    # "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v15

    if-ge v9, v15, :cond_c

    .line 318
    const/4 v10, 0x0

    .line 320
    .local v10, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 324
    :goto_2
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 327
    const/4 v12, 0x0

    .line 328
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

    .line 329
    .local v11, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 330
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 334
    .end local v11    # "mimeType":Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_8

    .line 337
    const-string/jumbo v15, "MediaCodecVideoEncoder"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Found candidate encoder "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v13, 0x0

    .line 341
    .local v13, "supportedCodec":Z
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 342
    .local v2, "bitrateAdjustmentType":Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v5, p1, v15

    .line 343
    .local v5, "codecProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
    iget-object v0, v5, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 344
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, v5, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->minSdk:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 345
    const-string/jumbo v17, "MediaCodecVideoEncoder"

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

    invoke-static/range {v17 .. v18}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 321
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v5    # "codecProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    :catch_0
    move-exception v7

    .line 322
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "MediaCodecVideoEncoder"

    const-string/jumbo v16, "Cannot retrieve encoder codec info"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 328
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "mimeType":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 349
    .end local v11    # "mimeType":Ljava/lang/String;
    .restart local v2    # "bitrateAdjustmentType":Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .restart local v5    # "codecProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
    .restart local v13    # "supportedCodec":Z
    :cond_5
    iget-object v15, v5, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v16, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 350
    iget-object v2, v5, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 351
    const-string/jumbo v15, "MediaCodecVideoEncoder"

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

    invoke-static/range {v15 .. v16}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_6
    const/4 v13, 0x1

    .line 358
    .end local v5    # "codecProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
    :cond_7
    if-eqz v13, :cond_8

    .line 365
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 370
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

    .line 371
    .local v6, "colorFormat":I
    const-string/jumbo v18, "MediaCodecVideoEncoder"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "   Color: 0x"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 366
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "colorFormat":I
    :catch_1
    move-exception v7

    .line 367
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "MediaCodecVideoEncoder"

    const-string/jumbo v16, "Cannot retrieve encoder capabilities"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 374
    .restart local v2    # "bitrateAdjustmentType":Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
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

    .line 375
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

    .line 376
    .local v4, "codecColorFormat":I
    if-ne v4, v14, :cond_a

    .line 378
    const-string/jumbo v15, "MediaCodecVideoEncoder"

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

    .line 379
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

    .line 378
    invoke-static/range {v15 .. v16}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v15, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v15, v12, v4, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    goto/16 :goto_0

    .line 375
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 374
    .end local v4    # "codecColorFormat":I
    :cond_b
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_6

    .line 386
    .end local v2    # "bitrateAdjustmentType":Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v10    # "info":Landroid/media/MediaCodecInfo;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    .end local v14    # "supportedColorFormat":I
    :cond_c
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
    .line 822
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static isH264HighProfileHwSupported()Z
    .locals 3

    .prologue
    .line 268
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HighProfileHwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 269
    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 268
    goto :goto_0
.end method

.method public static isH264HwSupported()Z
    .locals 3

    .prologue
    .line 263
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 264
    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 263
    goto :goto_0
.end method

.method public static isH264HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 283
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 284
    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 283
    goto :goto_0
.end method

.method public static isVp8HwSupported()Z
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    .line 246
    invoke-static {}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 245
    goto :goto_0
.end method

.method public static isVp8HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    .line 274
    invoke-static {}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 273
    goto :goto_0
.end method

.method public static isVp9HwSupported()Z
    .locals 3

    .prologue
    .line 258
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 259
    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 258
    goto :goto_0
.end method

.method public static isVp9HwSupportedUsingTextures()Z
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 279
    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 278
    goto :goto_0
.end method

.method public static printStackTrace()V
    .locals 6

    .prologue
    .line 397
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    iget-object v2, v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 398
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    iget-object v2, v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 399
    .local v0, "mediaCodecStackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 400
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    const-string/jumbo v3, "MediaCodecVideoEncoder stacks trace:"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 402
    .local v1, "stackTrace":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "MediaCodecVideoEncoder"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method private reportEncodedFrame(I)V
    .locals 14
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 827
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v7, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v6, v7, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    iget v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    div-double v4, v6, v8

    .line 833
    .local v4, "expectedBytesPerFrame":D
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v8, p1

    sub-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 834
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 838
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    mul-double v0, v6, v8

    .line 839
    .local v0, "bitrateAccumulatorCap":D
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 840
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    neg-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 844
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x40a7700000000000L    # 3000.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 845
    const-string/jumbo v6, "MediaCodecVideoEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Acc: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Max: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". ExpScale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v3, 0x0

    .line 848
    .local v3, "bitrateAdjustmentScaleChanged":Z
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_4

    .line 850
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    div-double/2addr v6, v8

    add-double/2addr v6, v12

    double-to-int v2, v6

    .line 851
    .local v2, "bitrateAdjustmentInc":I
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    sub-int/2addr v6, v2

    iput v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 852
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 853
    const/4 v3, 0x1

    .line 861
    .end local v2    # "bitrateAdjustmentInc":I
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 862
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v7, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 863
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v7, -0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 864
    const-string/jumbo v6, "MediaCodecVideoEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Adjusting bitrate scale to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 865
    invoke-direct {p0, v8}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 864
    invoke-static {v6, v7}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    div-int/lit16 v6, v6, 0x3e8

    iget v7, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    invoke-direct {p0, v6, v7}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->setRates(II)Z

    .line 868
    :cond_3
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    goto/16 :goto_0

    .line 854
    :cond_4
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 856
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    div-double/2addr v6, v8

    add-double/2addr v6, v12

    double-to-int v2, v6

    .line 857
    .restart local v2    # "bitrateAdjustmentInc":I
    iget v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 858
    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v6, v6

    iput-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 859
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static setErrorCallback(Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;)V
    .locals 2
    .param p0, "errorCallback"    # Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .prologue
    .line 222
    const-string/jumbo v0, "MediaCodecVideoEncoder"

    const-string/jumbo v1, "Set error callback"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sput-object p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 224
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
    .line 683
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 685
    mul-int/lit16 v0, p1, 0x3e8

    .line 686
    .local v0, "codecBitrateBps":I
    iget-object v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v3, v4, :cond_0

    .line 687
    int-to-double v4, v0

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 688
    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-lez v3, :cond_0

    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-ge v0, v3, :cond_0

    .line 690
    iget-wide v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 693
    :cond_0
    iput v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 694
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    .line 697
    iget-object v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    if-lez v3, :cond_2

    .line 698
    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    mul-int/lit8 v3, v3, 0x1e

    iget v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    div-int v0, v3, v4

    .line 699
    const-string/jumbo v3, "MediaCodecVideoEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setRates: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps. Fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v3, "video-bitrate"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    iget-object v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    const/4 v3, 0x1

    .line 718
    .end local v2    # "params":Landroid/os/Bundle;
    :goto_1
    return v3

    .line 701
    :cond_2
    iget-object v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v3, v4, :cond_3

    .line 702
    const-string/jumbo v3, "MediaCodecVideoEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setRates: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps. Fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". ExpScale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    if-eqz v3, :cond_1

    .line 705
    int-to-double v4, v0

    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-direct {p0, v3}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 708
    :cond_3
    const-string/jumbo v3, "MediaCodecVideoEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setRates: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " kbps. Fps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "MediaCodecVideoEncoder"

    const-string/jumbo v4, "setRates failed"

    invoke-static {v3, v4, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static vp8HwEncoderProperties()Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    invoke-static {}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v1

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    goto :goto_0
.end method

.method private static vp8HwList()[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "supported_codecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;>;"
    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string/jumbo v1, "WebRTC-IntelVP8"

    invoke-static {v1}, Lorg/webrtc/ali/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder;->intelVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    return-object v1
.end method


# virtual methods
.method checkKeyFrameRequired(ZJ)V
    .locals 10
    .param p1, "requestedKeyFrame"    # Z
    .param p2, "presentationTimestampUs"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 544
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p2

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 545
    .local v2, "presentationTimestampMs":J
    iget-wide v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    .line 546
    iput-wide v2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    .line 548
    :cond_0
    const/4 v1, 0x0

    .line 549
    .local v1, "forcedKeyFrame":Z
    if-nez p1, :cond_1

    iget-wide v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    iget-wide v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    iget-wide v6, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 551
    const/4 v1, 0x1

    .line 553
    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    .line 558
    :cond_2
    if-eqz p1, :cond_4

    .line 559
    const-string/jumbo v4, "MediaCodecVideoEncoder"

    const-string/jumbo v5, "Sync frame request"

    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 564
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "request-sync"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    iget-object v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 566
    iput-wide v2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    .line 568
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    return-void

    .line 561
    :cond_4
    const-string/jumbo v4, "MediaCodecVideoEncoder"

    const-string/jumbo v5, "Sync frame forced"

    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method dequeueInputBuffer()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 725
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 727
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 730
    :goto_0
    return v1

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "MediaCodecVideoEncoder"

    const-string/jumbo v2, "dequeueIntputBuffer failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 730
    const/4 v1, -0x2

    goto :goto_0
.end method

.method dequeueOutputBuffer()Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 22

    .prologue
    .line 753
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 755
    :try_start_0
    new-instance v18, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 756
    .local v18, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 758
    .local v3, "result":I
    if-ltz v3, :cond_3

    .line 759
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v19, 0x1

    .line 760
    .local v19, "isConfigFrame":Z
    :goto_0
    if-eqz v19, :cond_3

    .line 761
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Config frame generated. Offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v18

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v18

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 767
    const-string/jumbo v21, ""

    .line 768
    .local v21, "spsData":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2
    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 768
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 759
    .end local v17    # "i":I
    .end local v19    # "isConfigFrame":Z
    .end local v21    # "spsData":Ljava/lang/String;
    :cond_0
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 768
    .restart local v17    # "i":I
    .restart local v19    # "isConfigFrame":Z
    .restart local v21    # "spsData":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    .line 771
    :cond_2
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 778
    .end local v17    # "i":I
    .end local v19    # "isConfigFrame":Z
    .end local v21    # "spsData":Ljava/lang/String;
    :cond_3
    if-ltz v3, :cond_7

    .line 782
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 783
    .local v20, "outputBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 784
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 785
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->reportEncodedFrame(I)V

    .line 788
    move-object/from16 v0, v18

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    .line 789
    .local v9, "isKeyFrame":Z
    :goto_3
    if-eqz v9, :cond_4

    .line 790
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    const-string/jumbo v5, "Sync frame generated"

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_4
    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->type:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    sget-object v5, Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    if-ne v2, v5, :cond_6

    .line 793
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Appending config frame of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to output buffer with offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    move-object/from16 v0, v18

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 797
    .local v4, "keyFrameBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 799
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 800
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 801
    new-instance v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct/range {v2 .. v7}, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    .line 817
    .end local v3    # "result":I
    .end local v4    # "keyFrameBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "isKeyFrame":Z
    .end local v18    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v20    # "outputBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    return-object v2

    .line 788
    .restart local v3    # "result":I
    .restart local v18    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v20    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 803
    .restart local v9    # "isKeyFrame":Z
    :cond_6
    new-instance v6, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 804
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object/from16 v0, v18

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move v7, v3

    invoke-direct/range {v6 .. v11}, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    move-object v2, v6

    .line 803
    goto :goto_4

    .line 806
    .end local v9    # "isKeyFrame":Z
    .end local v20    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    const/4 v2, -0x3

    if-ne v3, v2, :cond_8

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 808
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v2

    goto :goto_4

    .line 809
    :cond_8
    const/4 v2, -0x2

    if-ne v3, v2, :cond_9

    .line 810
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v2

    goto :goto_4

    .line 811
    :cond_9
    const/4 v2, -0x1

    if-ne v3, v2, :cond_a

    .line 812
    const/4 v2, 0x0

    goto :goto_4

    .line 814
    :cond_a
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

    .line 815
    .end local v3    # "result":I
    .end local v18    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v16

    .line 816
    .local v16, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    const-string/jumbo v5, "dequeueOutputBuffer failed"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 817
    new-instance v10, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    invoke-direct/range {v10 .. v15}, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    move-object v2, v10

    goto :goto_4
.end method

.method encodeBuffer(ZIIJ)Z
    .locals 10
    .param p1, "isKeyframe"    # Z
    .param p2, "inputBuffer"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimestampUs"    # J

    .prologue
    const/4 v8, 0x0

    .line 572
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 574
    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkKeyFrameRequired(ZJ)V

    .line 575
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    .line 577
    :catch_0
    move-exception v7

    .line 578
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "MediaCodecVideoEncoder"

    const-string/jumbo v1, "encodeBuffer failed"

    invoke-static {v0, v1, v7}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v8

    .line 579
    goto :goto_0
.end method

.method encodeTexture(ZI[FJ)Z
    .locals 10
    .param p1, "isKeyframe"    # Z
    .param p2, "oesTextureId"    # I
    .param p3, "transformationMatrix"    # [F
    .param p4, "presentationTimestampUs"    # J

    .prologue
    .line 585
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 587
    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkKeyFrameRequired(ZJ)V

    .line 588
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase14;->makeCurrent()V

    .line 591
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 592
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/ali/GlRectDrawer;

    iget v3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->width:I

    iget v4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->height:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->width:I

    iget v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->height:I

    move v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Lorg/webrtc/ali/GlRectDrawer;->drawOes(I[FIIIIII)V

    .line 593
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/webrtc/ali/EglBase14;->swapBuffers(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    .line 595
    :catch_0
    move-exception v9

    .line 596
    .local v9, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "MediaCodecVideoEncoder"

    const-string/jumbo v1, "encodeTexture failed"

    invoke-static {v0, v1, v9}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 538
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 539
    .local v0, "inputBuffers":[Ljava/nio/ByteBuffer;
    const-string/jumbo v1, "MediaCodecVideoEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Input buffers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-object v0
.end method

.method initEncode(Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;IIIIILorg/webrtc/ali/EglBase14$Context;)Z
    .locals 14
    .param p1, "type"    # Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;
    .param p2, "profile"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "kbps"    # I
    .param p6, "fps"    # I
    .param p7, "sharedContext"    # Lorg/webrtc/ali/EglBase14$Context;

    .prologue
    .line 420
    if-eqz p7, :cond_0

    const/4 v9, 0x1

    .line 421
    .local v9, "useSurface":Z
    :goto_0
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Java initEncode: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Profile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " x "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". @ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " kbps. Fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Encode from texture : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move/from16 v0, p2

    iput v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->profile:I

    .line 426
    move/from16 v0, p3

    iput v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->width:I

    .line 427
    move/from16 v0, p4

    iput v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->height:I

    .line 428
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v10, :cond_1

    .line 429
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "Forgot to release()?"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 420
    .end local v9    # "useSurface":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 431
    .restart local v9    # "useSurface":Z
    :cond_1
    const/4 v8, 0x0

    .line 432
    .local v8, "properties":Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    const/4 v7, 0x0

    .line 433
    .local v7, "mime":Ljava/lang/String;
    const/4 v6, 0x0

    .line 434
    .local v6, "keyFrameIntervalSec":I
    const/4 v2, 0x0

    .line 435
    .local v2, "configureH264HighProfile":Z
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_4

    .line 436
    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    .line 437
    const-string/jumbo v11, "video/x-vnd.on2.vp8"

    .line 438
    invoke-static {}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp8HwList()[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    move-result-object v12

    if-eqz v9, :cond_3

    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 437
    :goto_1
    invoke-static {v11, v12, v10}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 439
    const/16 v6, 0x64

    .line 461
    :cond_2
    :goto_2
    if-nez v8, :cond_b

    .line 462
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Can not find HW encoder for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 438
    :cond_3
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_1

    .line 440
    :cond_4
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_6

    .line 441
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    .line 442
    const-string/jumbo v11, "video/x-vnd.on2.vp9"

    sget-object v12, Lorg/webrtc/ali/MediaCodecVideoEncoder;->vp9HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v9, :cond_5

    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_3
    invoke-static {v11, v12, v10}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 444
    const/16 v6, 0x64

    goto :goto_2

    .line 442
    :cond_5
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_3

    .line 445
    :cond_6
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_2

    .line 446
    const-string/jumbo v7, "video/avc"

    .line 447
    const-string/jumbo v11, "video/avc"

    sget-object v12, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v9, :cond_8

    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_4
    invoke-static {v11, v12, v10}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v8

    .line 449
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder$H264Profile;->CONSTRAINED_HIGH:Lorg/webrtc/ali/MediaCodecVideoEncoder$H264Profile;

    invoke-virtual {v10}, Lorg/webrtc/ali/MediaCodecVideoEncoder$H264Profile;->getValue()I

    move-result v10

    move/from16 v0, p2

    if-ne v0, v10, :cond_7

    .line 450
    const-string/jumbo v11, "video/avc"

    sget-object v12, Lorg/webrtc/ali/MediaCodecVideoEncoder;->h264HighProfileHwList:[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v9, :cond_9

    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_5
    invoke-static {v11, v12, v10}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v5

    .line 452
    .local v5, "h264HighProfileProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    if-eqz v5, :cond_a

    .line 453
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    const-string/jumbo v11, "High profile H.264 encoder supported."

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x1

    .line 459
    .end local v5    # "h264HighProfileProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    :cond_7
    :goto_6
    const/16 v6, 0x14

    goto :goto_2

    .line 447
    :cond_8
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_4

    .line 450
    :cond_9
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_5

    .line 456
    .restart local v5    # "h264HighProfileProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    :cond_a
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    const-string/jumbo v11, "High profile H.264 encoder requested, but not supported. Use baseline."

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 464
    .end local v5    # "h264HighProfileProperties":Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
    :cond_b
    sput-object p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    .line 465
    iget v10, v8, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    iput v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->colorFormat:I

    .line 466
    iget-object v10, v8, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 467
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v11, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v10, v11, :cond_f

    .line 468
    const/16 p6, 0x1e

    .line 473
    :goto_7
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    .line 474
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->lastKeyFrameMs:J

    .line 475
    sget-object v10, Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    if-ne p1, v10, :cond_d

    iget-object v10, v8, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    sget-object v11, Lorg/webrtc/ali/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;

    iget-object v11, v11, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    .line 476
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 477
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-eq v10, v11, :cond_c

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-ne v10, v11, :cond_10

    .line 479
    :cond_c
    const-wide/16 v10, 0x3a98

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    .line 487
    :cond_d
    :goto_8
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Color format: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->colorFormat:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Bitrate adjustment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Key frame interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " . Initial fps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    move/from16 v0, p5

    mul-int/lit16 v10, v0, 0x3e8

    iput v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 490
    move/from16 v0, p6

    iput v0, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    .line 491
    iget v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v12

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 492
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 493
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 494
    const/4 v10, 0x0

    iput v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 498
    :try_start_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v7, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 499
    .local v4, "format":Landroid/media/MediaFormat;
    const-string/jumbo v10, "bitrate"

    iget v11, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetBitrateBps:I

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 500
    const-string/jumbo v10, "bitrate-mode"

    const/4 v11, 0x2

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 501
    const-string/jumbo v10, "color-format"

    iget v11, v8, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 502
    const-string/jumbo v10, "frame-rate"

    iget v11, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 503
    const-string/jumbo v10, "i-frame-interval"

    invoke-virtual {v4, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 504
    if-eqz v2, :cond_e

    .line 505
    const-string/jumbo v10, "profile"

    const/16 v11, 0x8

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v10, "level"

    const/16 v11, 0x100

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 508
    :cond_e
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "  Format: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v10, v8, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v10}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 510
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->type:Lorg/webrtc/ali/MediaCodecVideoEncoder$VideoCodecType;

    .line 511
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v10, :cond_12

    .line 512
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    const-string/jumbo v11, "Can not create media encoder"

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    const/4 v10, 0x0

    .line 534
    .end local v4    # "format":Landroid/media/MediaFormat;
    :goto_9
    return v10

    .line 470
    :cond_f
    const/16 v10, 0x1e

    move/from16 v0, p6

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result p6

    goto/16 :goto_7

    .line 480
    :cond_10
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-ne v10, v11, :cond_11

    .line 481
    const-wide/16 v10, 0x4e20

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    goto/16 :goto_8

    .line 482
    :cond_11
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-le v10, v11, :cond_d

    .line 483
    const-wide/16 v10, 0x3a98

    iput-wide v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->forcedKeyFrameMs:J

    goto/16 :goto_8

    .line 516
    .restart local v4    # "format":Landroid/media/MediaFormat;
    :cond_12
    :try_start_1
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v4, v11, v12, v13}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 518
    if-eqz v9, :cond_13

    .line 519
    new-instance v10, Lorg/webrtc/ali/EglBase14;

    sget-object v11, Lorg/webrtc/ali/EglBase;->CONFIG_RECORDABLE:[I

    move-object/from16 v0, p7

    invoke-direct {v10, v0, v11}, Lorg/webrtc/ali/EglBase14;-><init>(Lorg/webrtc/ali/EglBase14$Context;[I)V

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    .line 521
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 522
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    iget-object v11, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v10, v11}, Lorg/webrtc/ali/EglBase14;->createSurface(Landroid/view/Surface;)V

    .line 523
    new-instance v10, Lorg/webrtc/ali/GlRectDrawer;

    invoke-direct {v10}, Lorg/webrtc/ali/GlRectDrawer;-><init>()V

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/ali/GlRectDrawer;

    .line 525
    :cond_13
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    .line 526
    iget-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    iput-object v10, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 527
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Output buffers: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    const/4 v10, 0x1

    goto :goto_9

    .line 529
    .end local v4    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v10, "MediaCodecVideoEncoder"

    const-string/jumbo v11, "initEncode failed"

    invoke-static {v10, v11, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    invoke-virtual {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->release()V

    .line 532
    const/4 v10, 0x0

    goto/16 :goto_9
.end method

.method release()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 602
    const-string/jumbo v5, "MediaCodecVideoEncoder"

    const-string/jumbo v6, "Java releaseEncoder"

    invoke-static {v5, v6}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 608
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;-><init>(Lorg/webrtc/ali/MediaCodecVideoEncoder;)V

    .line 609
    .local v0, "caughtException":Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;
    const/4 v4, 0x0

    .line 611
    .local v4, "stopHung":Z
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_1

    .line 614
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 616
    .local v1, "releaseDone":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/webrtc/ali/MediaCodecVideoEncoder$1;-><init>(Lorg/webrtc/ali/MediaCodecVideoEncoder;Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    .line 636
    .local v2, "runMediaCodecRelease":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 638
    const-wide/16 v6, 0x1388

    invoke-static {v1, v6, v7}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 639
    const-string/jumbo v5, "MediaCodecVideoEncoder"

    const-string/jumbo v6, "Media encoder release timeout"

    invoke-static {v5, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v4, 0x1

    .line 643
    :cond_0
    iput-object v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 646
    .end local v1    # "releaseDone":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "runMediaCodecRelease":Ljava/lang/Runnable;
    :cond_1
    iput-object v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 647
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/ali/GlRectDrawer;

    if-eqz v5, :cond_2

    .line 648
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/ali/GlRectDrawer;

    invoke-virtual {v5}, Lorg/webrtc/ali/GlRectDrawer;->release()V

    .line 649
    iput-object v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->drawer:Lorg/webrtc/ali/GlRectDrawer;

    .line 651
    :cond_2
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    if-eqz v5, :cond_3

    .line 652
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    invoke-virtual {v5}, Lorg/webrtc/ali/EglBase14;->release()V

    .line 653
    iput-object v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->eglBase:Lorg/webrtc/ali/EglBase14;

    .line 655
    :cond_3
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    if-eqz v5, :cond_4

    .line 656
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 657
    iput-object v8, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 659
    :cond_4
    sput-object v8, Lorg/webrtc/ali/MediaCodecVideoEncoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoEncoder;

    .line 661
    if-eqz v4, :cond_6

    .line 662
    sget v5, Lorg/webrtc/ali/MediaCodecVideoEncoder;->codecErrors:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lorg/webrtc/ali/MediaCodecVideoEncoder;->codecErrors:I

    .line 663
    sget-object v5, Lorg/webrtc/ali/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    if-eqz v5, :cond_5

    .line 664
    const-string/jumbo v5, "MediaCodecVideoEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invoke codec error callback. Errors: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lorg/webrtc/ali/MediaCodecVideoEncoder;->codecErrors:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v5, Lorg/webrtc/ali/MediaCodecVideoEncoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    sget v6, Lorg/webrtc/ali/MediaCodecVideoEncoder;->codecErrors:I

    invoke-interface {v5, v6}, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;->onMediaCodecVideoEncoderCriticalError(I)V

    .line 667
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Media encoder release timeout."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 672
    :cond_6
    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    if-eqz v5, :cond_7

    .line 673
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 674
    .local v3, "runtimeException":Ljava/lang/RuntimeException;
    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 675
    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 674
    invoke-static {v5, v6}, Lorg/webrtc/ali/ThreadUtils;->concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 676
    throw v3

    .line 679
    .end local v3    # "runtimeException":Ljava/lang/RuntimeException;
    :cond_7
    const-string/jumbo v5, "MediaCodecVideoEncoder"

    const-string/jumbo v6, "Java releaseEncoder done"

    invoke-static {v5, v6}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method releaseOutputBuffer(I)Z
    .locals 4
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 875
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 877
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    const/4 v1, 0x1

    .line 881
    :goto_0
    return v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MediaCodecVideoEncoder"

    const-string/jumbo v3, "releaseOutputBuffer failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
