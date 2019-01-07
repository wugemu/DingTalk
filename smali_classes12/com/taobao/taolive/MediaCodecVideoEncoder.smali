.class public Lcom/taobao/taolive/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;,
        Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;,
        Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;,
        Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;,
        Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
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

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I

.field private static errorCallback:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

.field private static final exynosH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final exynosVp9HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final h264HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final hisiH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final hisiVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

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

.field private static final mtkH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final powerVRVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final powervrH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final qcomVp9HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

.field private static final supportedColorList:[I

.field private static final supportedSurfaceColorList:[I

.field private static final vp8HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

.field private static final vp9HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;


# instance fields
.field public VIDEO_CODEC_H264:I

.field public VIDEO_CODEC_VP8:I

.field public VIDEO_CODEC_VP9:I

.field private bitrateAccumulator:D

.field private bitrateAccumulatorMax:D

.field private bitrateAdjustmentScaleExp:I

.field private bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field private bitrateObservationTimeMs:D

.field private colorFormat:I

.field private configData:Ljava/nio/ByteBuffer;

.field private height:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private targetBitrateBps:I

.field private targetFps:I

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x2

    const/16 v6, 0x17

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->errorCallback:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 64
    sput v4, Lcom/taobao/taolive/MediaCodecVideoEncoder;->codecErrors:I

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 110
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    const/16 v2, 0x13

    sget-object v3, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 112
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 114
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.hisi."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hisiVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 116
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.IMG."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->powerVRVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->qcomVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->exynosVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hisiVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->powerVRVp8HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp8HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 122
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 124
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 126
    new-array v0, v7, [Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->qcomVp9HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->exynosVp9HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp9HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 130
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.qcom."

    const/16 v2, 0x13

    sget-object v3, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->qcomH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 132
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.Exynos."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->exynosH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 134
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.hisi."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hisiH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 136
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.IMG."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->powervrH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 138
    new-instance v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    const-string/jumbo v1, "OMX.MTK."

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mtkH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 140
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->qcomH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->exynosH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hisiH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->powervrH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mtkH264HwProperties:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->h264HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SAMSUNG-SGH-I337"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Nexus 7"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Nexus 4"

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 160
    new-array v0, v5, [I

    const v1, 0x7f000789

    aput v1, v0, v4

    sput-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    return-void

    .line 156
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
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_VP8:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_VP9:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_H264:I

    .line 165
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 616
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/taolive/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/MediaCodecVideoEncoder;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private checkOnMediaCodecThread()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "codecName"    # Ljava/lang/String;

    .prologue
    .line 361
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
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
    .line 201
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "H.264 encoding is disabled by application."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 3

    .prologue
    .line 191
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "VP8 encoding is disabled by application."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 3

    .prologue
    .line 196
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "VP9 encoding is disabled by application."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method private static findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;
    .locals 21
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "supportedHwCodecProperties"    # [Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;
    .param p2, "colorList"    # [I

    .prologue
    .line 253
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 254
    const/4 v15, 0x0

    .line 335
    :goto_0
    return-object v15

    .line 258
    :cond_0
    const-string/jumbo v15, "video/avc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 259
    sget-object v15, Lcom/taobao/taolive/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 260
    .local v8, "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 261
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

    invoke-static/range {v15 .. v17}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const/4 v15, 0x0

    goto :goto_0

    .line 265
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

    invoke-static/range {v15 .. v17}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v15

    if-ge v9, v15, :cond_c

    .line 267
    const/4 v10, 0x0

    .line 269
    .local v10, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 273
    :goto_2
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 276
    const/4 v12, 0x0

    .line 277
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

    .line 278
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

    invoke-static/range {v18 .. v20}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 280
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 284
    .end local v11    # "mimeType":Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_8

    .line 287
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

    invoke-static/range {v15 .. v17}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    const/4 v13, 0x0

    .line 291
    .local v13, "supportedCodec":Z
    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 292
    .local v2, "bitrateAdjustmentType":Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v5, p1, v15

    .line 293
    .local v5, "codecProperties":Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;
    iget-object v0, v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 294
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->minSdk:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 295
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

    invoke-static/range {v17 .. v19}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 270
    .end local v2    # "bitrateAdjustmentType":Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v5    # "codecProperties":Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    :catch_0
    move-exception v7

    .line 271
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    const-string/jumbo v16, "Cannot retrieve encoder codec info"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 277
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "mimeType":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 298
    .end local v11    # "mimeType":Ljava/lang/String;
    .restart local v2    # "bitrateAdjustmentType":Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .restart local v5    # "codecProperties":Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;
    .restart local v13    # "supportedCodec":Z
    :cond_5
    iget-object v15, v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v16, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 299
    iget-object v2, v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 300
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

    invoke-static/range {v15 .. v17}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    :cond_6
    const/4 v13, 0x1

    .line 306
    .end local v5    # "codecProperties":Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;
    :cond_7
    if-eqz v13, :cond_8

    .line 313
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 318
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

    .line 319
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

    invoke-static/range {v18 .. v20}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 314
    .end local v3    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v6    # "colorFormat":I
    :catch_1
    move-exception v7

    .line 315
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v15, "MediaCodecVideoEncoder_java"

    const-string/jumbo v16, "Cannot retrieve encoder capabilities"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v7, v1}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 266
    .end local v2    # "bitrateAdjustmentType":Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "supportedCodec":Z
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 322
    .restart local v2    # "bitrateAdjustmentType":Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
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

    .line 323
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

    .line 324
    .local v4, "codecColorFormat":I
    if-ne v4, v14, :cond_a

    .line 326
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

    .line 327
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

    .line 326
    invoke-static/range {v15 .. v17}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v15, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v15, v12, v4, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V

    goto/16 :goto_0

    .line 323
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 322
    .end local v4    # "codecColorFormat":I
    :cond_b
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_6

    .line 334
    .end local v2    # "bitrateAdjustmentType":Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;
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

    invoke-static/range {v15 .. v17}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private getBitrateScale(I)D
    .locals 6
    .param p1, "bitrateAdjustmentScaleExp"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 697
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
    .line 217
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->h264HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 218
    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

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
    .line 232
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->h264HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 233
    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

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
    .line 207
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp8HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 208
    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

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
    .line 222
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp8HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 223
    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

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
    .line 212
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp9HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 213
    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

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
    .line 227
    sget-object v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp9HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 228
    invoke-static {v0, v1, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

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

    .line 346
    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    iget-object v2, v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 347
    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    iget-object v2, v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 348
    .local v0, "mediaCodecStackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 349
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v4, "MediaCodecVideoEncoder stacks trace:"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 351
    .local v1, "stackTrace":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "MediaCodecVideoEncoder_java"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method private reportEncodedFrame(I)V
    .locals 13
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 702
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v3, v6, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v3

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v3

    mul-double/2addr v8, v10

    div-double v4, v6, v8

    .line 708
    .local v4, "expectedBytesPerFrame":D
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v8, p1

    sub-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 709
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    int-to-double v10, v3

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 713
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    iget-wide v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    mul-double v0, v6, v8

    .line 714
    .local v0, "bitrateAccumulatorCap":D
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 715
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    neg-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 719
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    const-wide v8, 0x40a7700000000000L    # 3000.0

    cmpl-double v3, v6, v8

    if-lez v3, :cond_0

    .line 720
    const-string/jumbo v3, "MediaCodecVideoEncoder_java"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Acc: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". ExpScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    const/4 v2, 0x0

    .line 723
    .local v2, "bitrateAdjustmentScaleChanged":Z
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_4

    .line 725
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 726
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 727
    const/4 v2, 0x1

    .line 734
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 735
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 736
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    const/16 v6, -0xa

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 737
    const-string/jumbo v3, "MediaCodecVideoEncoder_java"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Adjusting bitrate scale to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 738
    invoke-direct {p0, v7}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    .line 737
    invoke-static {v3, v6, v7}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    div-int/lit16 v3, v3, 0x3e8

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    invoke-direct {p0, v3, v6}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->setRates(II)Z

    .line 741
    :cond_3
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    goto/16 :goto_0

    .line 728
    :cond_4
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    iget-wide v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v8, v8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    .line 730
    iget v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 731
    iget-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    neg-double v6, v6

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 732
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static setErrorCallback(Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;)V
    .locals 3
    .param p0, "errorCallback"    # Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .prologue
    .line 184
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "Set error callback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    sput-object p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->errorCallback:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 186
    return-void
.end method

.method private setRates(II)Z
    .locals 8
    .param p1, "kbps"    # I
    .param p2, "frameRate"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 564
    invoke-direct {p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 566
    mul-int/lit16 v0, p1, 0x3e8

    .line 567
    .local v0, "codecBitrateBps":I
    iget-object v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v4, v5, :cond_0

    .line 568
    int-to-double v4, v0

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 569
    iget v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    if-ge v0, v4, :cond_0

    .line 571
    iget-wide v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 574
    :cond_0
    iput v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 575
    iput p2, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    .line 578
    iget-object v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    if-lez v4, :cond_3

    .line 579
    iget v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    mul-int/lit8 v4, v4, 0x1e

    iget v5, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    div-int v0, v4, v5

    .line 580
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

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 592
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v4, "video-bitrate"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    iget-object v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_2

    .line 594
    iget-object v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_2
    const/4 v3, 0x1

    .line 599
    .end local v2    # "params":Landroid/os/Bundle;
    :goto_1
    return v3

    .line 581
    :cond_3
    iget-object v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v5, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v4, v5, :cond_4

    .line 582
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " kbps. Fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". ExpScale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    iget v4, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    if-eqz v4, :cond_1

    .line 584
    int-to-double v4, v0

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    invoke-direct {p0, v6}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->getBitrateScale(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    .line 587
    :cond_4
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " kbps. Fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "MediaCodecVideoEncoder_java"

    const-string/jumbo v5, "setRates failed"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v6}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method dequeueInputBuffer()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 611
    :goto_0
    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "MediaCodecVideoEncoder_java"

    const-string/jumbo v2, "dequeueIntputBuffer failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 611
    const/4 v1, -0x2

    goto :goto_0
.end method

.method dequeueOutputBuffer()Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 20

    .prologue
    .line 634
    invoke-direct/range {p0 .. p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 636
    :try_start_0
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 637
    .local v17, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 639
    .local v3, "result":I
    if-ltz v3, :cond_0

    .line 640
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/16 v18, 0x1

    .line 641
    .local v18, "isConfigFrame":Z
    :goto_0
    if-eqz v18, :cond_0

    .line 642
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

    invoke-static {v2, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 653
    .end local v18    # "isConfigFrame":Z
    :cond_0
    if-ltz v3, :cond_5

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 658
    .local v19, "outputBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 659
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 660
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->reportEncodedFrame(I)V

    .line 663
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    .line 664
    .local v9, "isKeyFrame":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 665
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v5, "Sync frame generated"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    :cond_1
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->type:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_H264:I

    if-ne v2, v5, :cond_4

    .line 668
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Appending config frame of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

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

    invoke-static {v2, v5, v6}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 672
    .local v4, "keyFrameBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 674
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 675
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 676
    new-instance v2, Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct/range {v2 .. v7}, Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    .line 692
    .end local v3    # "result":I
    .end local v4    # "keyFrameBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "isKeyFrame":Z
    .end local v17    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v19    # "outputBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    return-object v2

    .line 640
    .restart local v3    # "result":I
    .restart local v17    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 663
    .restart local v19    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 678
    .restart local v9    # "isKeyFrame":Z
    :cond_4
    new-instance v6, Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 679
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move v7, v3

    invoke-direct/range {v6 .. v11}, Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

    move-object v2, v6

    goto :goto_2

    .line 681
    .end local v9    # "isKeyFrame":Z
    .end local v19    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_5
    const/4 v2, -0x3

    if-ne v3, v2, :cond_6

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v2

    goto :goto_2

    .line 684
    :cond_6
    const/4 v2, -0x2

    if-ne v3, v2, :cond_7

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v2

    goto :goto_2

    .line 686
    :cond_7
    const/4 v2, -0x1

    if-ne v3, v2, :cond_8

    .line 687
    const/4 v2, 0x0

    goto :goto_2

    .line 689
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

    .line 690
    .end local v3    # "result":I
    .end local v17    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v16

    .line 691
    .local v16, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v5, "dequeueOutputBuffer failed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0, v6}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 692
    new-instance v10, Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    invoke-direct/range {v10 .. v15}, Lcom/taobao/taolive/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJ)V

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

    .line 460
    invoke-direct {p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 462
    if-eqz p1, :cond_0

    .line 467
    :try_start_0
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "Sync frame request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v7, "b":Landroid/os/Bundle;
    const-string/jumbo v0, "request-sync"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    iget-object v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 472
    .end local v7    # "b":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    .line 474
    :catch_0
    move-exception v8

    .line 475
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "MediaCodecVideoEncoder_java"

    const-string/jumbo v1, "encodeBuffer failed"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v8, v2}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v9

    .line 476
    goto :goto_0
.end method

.method encodeTexture(ZIZ[FJ)Z
    .locals 1
    .param p1, "isKeyframe"    # Z
    .param p2, "oesTextureId"    # I
    .param p3, "textureGoRgb"    # Z
    .param p4, "transformationMatrix"    # [F
    .param p5, "presentationTimestampUs"    # J

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 453
    iget-object v1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 455
    .local v0, "inputBuffers":[Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method initEncode(IIIIILandroid/opengl/EGLContext;)Z
    .locals 10
    .param p1, "type"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "kbps"    # I
    .param p5, "fps"    # I
    .param p6, "sharedContext"    # Landroid/opengl/EGLContext;

    .prologue
    .line 369
    if-eqz p6, :cond_0

    const/4 v5, 0x1

    .line 370
    .local v5, "useSurface":Z
    :goto_0
    const-string/jumbo v6, "MediaCodecVideoEncoder_java"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Java initEncode: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " kbps. Fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Encode from texture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iput p2, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->width:I

    .line 374
    iput p3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->height:I

    .line 375
    iget-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v6, :cond_1

    .line 376
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Forgot to release()?"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 369
    .end local v5    # "useSurface":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 378
    .restart local v5    # "useSurface":Z
    :cond_1
    const/4 v4, 0x0

    .line 379
    .local v4, "properties":Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;
    const/4 v3, 0x0

    .line 380
    .local v3, "mime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 381
    .local v2, "keyFrameIntervalSec":I
    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_VP8:I

    if-ne p1, v6, :cond_4

    .line 382
    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    .line 383
    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    sget-object v8, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp8HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_1
    invoke-static {v7, v8, v6}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v4

    .line 385
    const/16 v2, 0x64

    .line 397
    :cond_2
    :goto_2
    if-nez v4, :cond_8

    .line 398
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Can not find HW encoder for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    :cond_3
    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_1

    .line 386
    :cond_4
    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_VP9:I

    if-ne p1, v6, :cond_6

    .line 387
    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    .line 388
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    sget-object v8, Lcom/taobao/taolive/MediaCodecVideoEncoder;->vp9HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v5, :cond_5

    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_3
    invoke-static {v7, v8, v6}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v4

    .line 390
    const/16 v2, 0x64

    goto :goto_2

    .line 388
    :cond_5
    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_3

    .line 391
    :cond_6
    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->VIDEO_CODEC_H264:I

    if-ne p1, v6, :cond_2

    .line 392
    const-string/jumbo v3, "video/avc"

    .line 393
    const-string/jumbo v7, "video/avc"

    sget-object v8, Lcom/taobao/taolive/MediaCodecVideoEncoder;->h264HwList:[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;

    if-eqz v5, :cond_7

    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_4
    invoke-static {v7, v8, v6}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;[I)Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v4

    .line 395
    const/4 v2, 0x2

    goto :goto_2

    .line 393
    :cond_7
    sget-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->supportedColorList:[I

    goto :goto_4

    .line 400
    :cond_8
    sput-object p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    .line 401
    iget v6, v4, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    iput v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->colorFormat:I

    .line 402
    iget-object v6, v4, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    iput-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 403
    iget-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v7, Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v6, v7, :cond_9

    .line 404
    const/16 p5, 0x1e

    .line 408
    :goto_5
    const-string/jumbo v6, "MediaCodecVideoEncoder_java"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Color format: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->colorFormat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Bitrate adjustment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Initial fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    mul-int/lit16 v6, p4, 0x3e8

    iput v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    .line 411
    iput p5, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    .line 412
    iget v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulatorMax:D

    .line 413
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAccumulator:D

    .line 414
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateObservationTimeMs:D

    .line 415
    const/4 v6, 0x0

    iput v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->bitrateAdjustmentScaleExp:I

    .line 417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 419
    :try_start_0
    invoke-static {v3, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 420
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v6, "bitrate"

    iget v7, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetBitrateBps:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 421
    const-string/jumbo v6, "bitrate-mode"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 422
    const-string/jumbo v6, "color-format"

    iget v7, v4, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 423
    const-string/jumbo v6, "frame-rate"

    iget v7, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->targetFps:I

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 424
    const-string/jumbo v6, "i-frame-interval"

    invoke-virtual {v1, v6, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 425
    const-string/jumbo v6, "MediaCodecVideoEncoder_java"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "  Format: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v6, v4, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 427
    iput p1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->type:I

    .line 428
    iget-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v6, :cond_a

    .line 429
    const-string/jumbo v6, "MediaCodecVideoEncoder_java"

    const-string/jumbo v7, "Can not create media encoder"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    const/4 v6, 0x0

    .line 449
    .end local v1    # "format":Landroid/media/MediaFormat;
    :goto_6
    return v6

    .line 406
    :cond_9
    const/16 v6, 0x1e

    invoke-static {p5, v6}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto/16 :goto_5

    .line 432
    .restart local v1    # "format":Landroid/media/MediaFormat;
    :cond_a
    :try_start_1
    iget-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 441
    iget-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    .line 442
    iget-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 443
    const-string/jumbo v6, "MediaCodecVideoEncoder_java"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Output buffers: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 449
    const/4 v6, 0x1

    goto :goto_6

    .line 445
    .end local v1    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "MediaCodecVideoEncoder_java"

    const-string/jumbo v7, "initEncode failed"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 447
    const/4 v6, 0x0

    goto :goto_6
.end method

.method release()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 511
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Java releaseEncoder"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-direct {p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 516
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 518
    .local v0, "releaseDone":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;

    invoke-direct {v1, p0, v0}, Lcom/taobao/taolive/MediaCodecVideoEncoder$1;-><init>(Lcom/taobao/taolive/MediaCodecVideoEncoder;Ljava/util/concurrent/CountDownLatch;)V

    .line 534
    .local v1, "runMediaCodecRelease":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 536
    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/taobao/taolive/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Media encoder release timeout"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    sget v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->codecErrors:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->codecErrors:I

    .line 539
    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->errorCallback:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    if-eqz v2, :cond_0

    .line 540
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invoke codec error callback. Errors: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/taobao/taolive/MediaCodecVideoEncoder;->codecErrors:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    sget-object v2, Lcom/taobao/taolive/MediaCodecVideoEncoder;->errorCallback:Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    sget v3, Lcom/taobao/taolive/MediaCodecVideoEncoder;->codecErrors:I

    invoke-interface {v2, v3}, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;->onMediaCodecVideoEncoderCriticalError(I)V

    .line 545
    :cond_0
    iput-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 546
    iput-object v6, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 559
    sput-object v6, Lcom/taobao/taolive/MediaCodecVideoEncoder;->runningInstance:Lcom/taobao/taolive/MediaCodecVideoEncoder;

    .line 560
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "Java releaseEncoder done"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method releaseOutputBuffer(I)Z
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 748
    invoke-direct {p0}, Lcom/taobao/taolive/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 750
    :try_start_0
    iget-object v2, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    const/4 v1, 0x1

    .line 754
    :goto_0
    return v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "MediaCodecVideoEncoder_java"

    const-string/jumbo v3, "releaseOutputBuffer failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
