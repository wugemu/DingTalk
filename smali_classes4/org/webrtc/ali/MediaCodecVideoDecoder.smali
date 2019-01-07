.class public Lorg/webrtc/ali/MediaCodecVideoDecoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;,
        Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;,
        Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;,
        Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;,
        Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;,
        Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;,
        Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;
    }
.end annotation


# static fields
.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final COLOR_QCOM_FORMATYVU420PackedSemiPlanar16m4ka:I = 0x7fa30c02

.field private static final COLOR_QCOM_FORMATYVU420PackedSemiPlanar32m4ka:I = 0x7fa30c01

.field private static final COLOR_QCOM_FORMATYVU420PackedSemiPlanar64x32Tile2m8ka:I = 0x7fa30c03

.field private static final DEQUEUE_INPUT_TIMEOUT:I = 0x7a120

.field private static final FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MAX_DECODE_TIME_MS:J = 0xc8L

.field private static final MAX_QUEUED_OUTPUTBUFFERS:I = 0x3

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoDecoder"

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I = 0x0

.field private static errorCallback:Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback; = null

.field private static hwDecoderDisabledTypes:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder; = null

.field private static final supportedColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedExynosH264HighProfileHwCodecPrefix:Ljava/lang/String; = "OMX.Exynos."

.field private static final supportedH264HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedQcomH264HighProfileHwCodecPrefix:Ljava/lang/String; = "OMX.qcom."

.field private static final supportedVp8HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp9HwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private colorFormat:I

.field private final decodeStartTimeMs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;",
            ">;"
        }
    .end annotation
.end field

.field private final dequeuedSurfaceOutputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private droppedFrames:I

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private sliceHeight:I

.field private stride:I

.field private surface:Landroid/view/Surface;

.field private textureListener:Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

.field private useSurface:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    .line 65
    sput v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->codecErrors:I

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "OMX.qcom."

    aput-object v1, v0, v2

    const-string/jumbo v1, "OMX.Nvidia."

    aput-object v1, v0, v3

    const-string/jumbo v1, "OMX.Exynos."

    aput-object v1, v0, v4

    const-string/jumbo v1, "OMX.Intel."

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "OMX.qcom."

    aput-object v1, v0, v2

    const-string/jumbo v1, "OMX.Exynos."

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "OMX.qcom."

    aput-object v1, v0, v2

    const-string/jumbo v1, "OMX.Intel."

    aput-object v1, v0, v3

    const-string/jumbo v1, "OMX.Exynos."

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x13

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7fa30c00

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7fa30c01

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7fa30c02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x7fa30c03

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7fa30c04

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedColorList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    return-void
.end method

.method private MaybeRenderDecodedTextureBuffer()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 729
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->textureListener:Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

    invoke-virtual {v1}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->isWaitingForTexture()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 734
    .local v0, "buffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->textureListener:Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

    invoke-virtual {v1, v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->addBufferToRender(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)V

    .line 735
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-static {v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$900(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/webrtc/ali/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private checkOnMediaCodecThread()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MediaCodecVideoDecoder previously operated on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but is now called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method private dequeueInputBuffer()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 415
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/32 v2, 0x7a120

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "MediaCodecVideoDecoder"

    const-string/jumbo v2, "dequeueIntputBuffer failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    const/4 v1, -0x2

    goto :goto_0
.end method

.method private dequeueOutputBuffer(I)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;
    .locals 21
    .param p1, "dequeueTimeoutMs"    # I

    .prologue
    .line 600
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    const/4 v2, 0x0

    .line 670
    :goto_0
    return-object v2

    .line 606
    :cond_0
    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 608
    .local v17, "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v0, p1

    int-to-long v6, v0

    .line 609
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 610
    .local v3, "result":I
    packed-switch v3, :pswitch_data_0

    .line 661
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;

    .line 663
    .local v20, "timeStamps":Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static/range {v20 .. v20}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->access$600(Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;)J

    move-result-wide v6

    sub-long v12, v4, v6

    .line 664
    .local v12, "decodeTimeMs":J
    const-wide/16 v4, 0xc8

    cmp-long v2, v12, v4

    if-lez v2, :cond_2

    .line 665
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Very high decode time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms. Q size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 666
    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Might be caused by resuming H264 decoding after a pause."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-wide/16 v12, 0xc8

    .line 670
    :cond_2
    new-instance v2, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 671
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static/range {v20 .. v20}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->access$700(Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;)J

    move-result-wide v8

    .line 672
    invoke-static/range {v20 .. v20}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->access$800(Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;)J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-direct/range {v2 .. v15}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;-><init>(IIIJJJJJ)V

    goto/16 :goto_0

    .line 612
    .end local v12    # "decodeTimeMs":J
    .end local v20    # "timeStamps":Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 613
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Decoder output buffers changed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v2, :cond_1

    .line 615
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Unexpected output buffer change event."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v16

    .line 620
    .local v16, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Decoder format changed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string/jumbo v2, "crop-left"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "crop-right"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "crop-bottom"

    .line 624
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "crop-top"

    .line 625
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 626
    const-string/jumbo v2, "crop-right"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v4, "crop-left"

    .line 627
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int v19, v2, v4

    .line 628
    .local v19, "newWidth":I
    const-string/jumbo v2, "crop-bottom"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v4, "crop-top"

    .line 629
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int v18, v2, v4

    .line 634
    .local v18, "newHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->width:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->height:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 635
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected size change. Configured "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    .end local v18    # "newHeight":I
    .end local v19    # "newWidth":I
    :cond_4
    const-string/jumbo v2, "width"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v19

    .line 632
    .restart local v19    # "newWidth":I
    const-string/jumbo v2, "height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v18

    .restart local v18    # "newHeight":I
    goto :goto_2

    .line 638
    :cond_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/ali/MediaCodecVideoDecoder;->width:I

    .line 639
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/webrtc/ali/MediaCodecVideoDecoder;->height:I

    .line 641
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    if-nez v2, :cond_6

    const-string/jumbo v2, "color-format"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 642
    const-string/jumbo v2, "color-format"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->colorFormat:I

    .line 643
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Color: 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->colorFormat:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedColorList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->colorFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 645
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Non supported color format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->colorFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_6
    const-string/jumbo v2, "stride"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 649
    const-string/jumbo v2, "stride"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->stride:I

    .line 651
    :cond_7
    const-string/jumbo v2, "slice-height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 652
    const-string/jumbo v2, "slice-height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->sliceHeight:I

    .line 654
    :cond_8
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Frame stride and slice height: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->stride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->sliceHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->stride:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->stride:I

    .line 656
    move-object/from16 v0, p0

    iget v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->height:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->sliceHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->sliceHeight:I

    goto/16 :goto_1

    .line 659
    .end local v16    # "format":Landroid/media/MediaFormat;
    .end local v18    # "newHeight":I
    .end local v19    # "newWidth":I
    :pswitch_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dequeueTextureBuffer(I)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    .locals 20
    .param p1, "dequeueTimeoutMs"    # I

    .prologue
    .line 683
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 684
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    if-nez v3, :cond_0

    .line 685
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "dequeueTexture() called for byte buffer decoding."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 687
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeueOutputBuffer(I)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    move-result-object v16

    .line 688
    .local v16, "outputBuffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;
    if-eqz v16, :cond_1

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->MaybeRenderDecodedTextureBuffer()V

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->textureListener:Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->dequeueTextureBuffer(I)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    move-result-object v17

    .line 695
    .local v17, "renderedBuffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    if-eqz v17, :cond_2

    .line 696
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->MaybeRenderDecodedTextureBuffer()V

    .line 725
    .end local v17    # "renderedBuffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    :goto_0
    return-object v17

    .line 700
    .restart local v17    # "renderedBuffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v5, v5

    .line 701
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_3

    if-lez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    .line 702
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 703
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 708
    .local v2, "droppedFrame":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;
    if-lez p1, :cond_4

    .line 711
    const-string/jumbo v3, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Draining decoder. Dropping frame with TS: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$100(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Total number of dropped frames: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$900(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 721
    new-instance v3, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$100(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v6

    .line 722
    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$200(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v8

    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$300(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v10

    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$400(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v12

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$500(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v18

    sub-long v14, v14, v18

    invoke-direct/range {v3 .. v15}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;-><init>(I[FJJJJJ)V

    move-object/from16 v17, v3

    .line 721
    goto/16 :goto_0

    .line 715
    :cond_4
    const-string/jumbo v3, "MediaCodecVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Too many output buffers "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Dropping frame with TS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 716
    invoke-static {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$100(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Total number of dropped frames: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 715
    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 725
    .end local v2    # "droppedFrame":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public static disableH264HwCodec()V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "H.264 decoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "VP8 decoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "VP9 decoding is disabled by application."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method private static findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;
    .locals 18
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "supportedCodecPrefixes"    # [Ljava/lang/String;

    .prologue
    .line 205
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-ge v12, v13, :cond_0

    .line 206
    const/4 v12, 0x0

    .line 266
    :goto_0
    return-object v12

    .line 208
    :cond_0
    const-string/jumbo v12, "MediaCodecVideoDecoder"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Trying to find HW decoder for mime "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v12

    if-ge v6, v12, :cond_9

    .line 210
    const/4 v7, 0x0

    .line 212
    .local v7, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 216
    :goto_2
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-nez v12, :cond_5

    .line 219
    const/4 v9, 0x0

    .line 220
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_1

    aget-object v8, v13, v12

    .line 221
    .local v8, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 222
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 226
    .end local v8    # "mimeType":Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_5

    .line 229
    const-string/jumbo v12, "MediaCodecVideoDecoder"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Found candidate decoder "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v10, 0x0

    .line 233
    .local v10, "supportedCodec":Z
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_2

    aget-object v3, p1, v12

    .line 234
    .local v3, "codecPrefix":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 235
    const/4 v10, 0x1

    .line 239
    .end local v3    # "codecPrefix":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_5

    .line 246
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 251
    .local v1, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v13, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v14, v13

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v14, :cond_6

    aget v4, v13, v12

    .line 252
    .local v4, "colorFormat":I
    const-string/jumbo v15, "MediaCodecVideoDecoder"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "   Color: 0x"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 213
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v4    # "colorFormat":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "supportedCodec":Z
    :catch_0
    move-exception v5

    .line 214
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v12, "MediaCodecVideoDecoder"

    const-string/jumbo v13, "Cannot retrieve decoder codec info"

    invoke-static {v12, v13, v5}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 220
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "mimeType":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 233
    .end local v8    # "mimeType":Ljava/lang/String;
    .restart local v3    # "codecPrefix":Ljava/lang/String;
    .restart local v10    # "supportedCodec":Z
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 247
    .end local v3    # "codecPrefix":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 248
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v12, "MediaCodecVideoDecoder"

    const-string/jumbo v13, "Cannot retrieve decoder capabilities"

    invoke-static {v12, v13, v5}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "supportedCodec":Z
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 254
    .restart local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "supportedCodec":Z
    :cond_6
    sget-object v12, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedColorList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 255
    .local v11, "supportedColorFormat":I
    iget-object v14, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v15, v14

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v15, :cond_7

    aget v2, v14, v12

    .line 256
    .local v2, "codecColorFormat":I
    if-ne v2, v11, :cond_8

    .line 258
    const-string/jumbo v12, "MediaCodecVideoDecoder"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Found target decoder "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ". Color: 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 258
    invoke-static {v12, v13}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v12, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    invoke-direct {v12, v9, v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 255
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 265
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "codecColorFormat":I
    .end local v7    # "info":Landroid/media/MediaCodecInfo;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "supportedCodec":Z
    .end local v11    # "supportedColorFormat":I
    :cond_9
    const-string/jumbo v12, "MediaCodecVideoDecoder"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "No HW decoder found for mime "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private initDecode(Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;IILorg/webrtc/ali/SurfaceTextureHelper;)Z
    .locals 11
    .param p1, "type"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 279
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v5, :cond_0

    .line 280
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "initDecode: Forgot to release()?"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 284
    :cond_0
    if-eqz p4, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    .line 286
    sget-object v5, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    if-ne p1, v5, :cond_2

    .line 287
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    .line 288
    .local v2, "mime":Ljava/lang/String;
    sget-object v4, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 298
    .local v4, "supportedCodecPrefixes":[Ljava/lang/String;
    :goto_1
    invoke-static {v2, v4}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v3

    .line 299
    .local v3, "properties":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;
    if-nez v3, :cond_5

    .line 300
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot find HW decoder for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "mime":Ljava/lang/String;
    .end local v3    # "properties":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;
    .end local v4    # "supportedCodecPrefixes":[Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 284
    goto :goto_0

    .line 289
    :cond_2
    sget-object v5, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP9:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    if-ne p1, v5, :cond_3

    .line 290
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    .line 291
    .restart local v2    # "mime":Ljava/lang/String;
    sget-object v4, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .restart local v4    # "supportedCodecPrefixes":[Ljava/lang/String;
    goto :goto_1

    .line 292
    .end local v2    # "mime":Ljava/lang/String;
    .end local v4    # "supportedCodecPrefixes":[Ljava/lang/String;
    :cond_3
    sget-object v5, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    if-ne p1, v5, :cond_4

    .line 293
    const-string/jumbo v2, "video/avc"

    .line 294
    .restart local v2    # "mime":Ljava/lang/String;
    sget-object v4, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .restart local v4    # "supportedCodecPrefixes":[Ljava/lang/String;
    goto :goto_1

    .line 296
    .end local v2    # "mime":Ljava/lang/String;
    .end local v4    # "supportedCodecPrefixes":[Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "initDecode: Non-supported codec "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 303
    .restart local v2    # "mime":Ljava/lang/String;
    .restart local v3    # "properties":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;
    .restart local v4    # "supportedCodecPrefixes":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "MediaCodecVideoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Java initDecode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Color: 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    .line 304
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Use Surface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 303
    invoke-static {v5, v8}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sput-object p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 309
    :try_start_0
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->width:I

    .line 310
    iput p3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->height:I

    .line 311
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->stride:I

    .line 312
    iput p3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->sliceHeight:I

    .line 314
    iget-boolean v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    if-eqz v5, :cond_6

    .line 315
    new-instance v5, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

    invoke-direct {v5, p4}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;-><init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V

    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->textureListener:Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

    .line 316
    new-instance v5, Landroid/view/Surface;

    invoke-virtual {p4}, Lorg/webrtc/ali/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    .line 319
    :cond_6
    invoke-static {v2, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 320
    .local v1, "format":Landroid/media/MediaFormat;
    iget-boolean v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    if-nez v5, :cond_7

    .line 321
    const-string/jumbo v5, "color-format"

    iget v8, v3, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    invoke-virtual {v1, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 323
    :cond_7
    const-string/jumbo v5, "MediaCodecVideoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "  Format: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v5, v3, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v5}, Lorg/webrtc/ali/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 325
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v5, :cond_8

    .line 326
    const-string/jumbo v5, "MediaCodecVideoDecoder"

    const-string/jumbo v6, "Can not create media decoder"

    invoke-static {v5, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v1    # "format":Landroid/media/MediaFormat;
    :goto_2
    return v7

    .line 329
    .restart local v1    # "format":Landroid/media/MediaFormat;
    :cond_8
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v8, v9, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 330
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 332
    iget v5, v3, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    iput v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->colorFormat:I

    .line 333
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 334
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 335
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 336
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 337
    iget-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 338
    const/4 v5, 0x0

    iput v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    .line 339
    const-string/jumbo v5, "MediaCodecVideoDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Input buffers: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Output buffers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v6

    .line 341
    goto :goto_2

    .line 342
    .end local v1    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "MediaCodecVideoDecoder"

    const-string/jumbo v6, "initDecode failed"

    invoke-static {v5, v6, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static isH264HighProfileHwSupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v3, "video/avc"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const-string/jumbo v2, "video/avc"

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "OMX.qcom."

    aput-object v4, v3, v0

    .line 169
    invoke-static {v2, v3}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "video/avc"

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "OMX.Exynos."

    aput-object v4, v3, v0

    .line 175
    invoke-static {v2, v3}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public static isH264HwSupported()Z
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/avc"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 160
    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 159
    goto :goto_0
.end method

.method public static isVp8HwSupported()Z
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 150
    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0
.end method

.method public static isVp9HwSupported()Z
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoDecoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 155
    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 154
    goto :goto_0
.end method

.method public static printStackTrace()V
    .locals 6

    .prologue
    .line 183
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    iget-object v2, v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 184
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    iget-object v2, v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 185
    .local v0, "mediaCodecStackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 186
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    const-string/jumbo v3, "MediaCodecVideoDecoder stacks trace:"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 188
    .local v1, "stackTrace":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "MediaCodecVideoDecoder"

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method private queueInputBuffer(IIJJJ)Z
    .locals 9
    .param p1, "inputBufferIndex"    # I
    .param p2, "size"    # I
    .param p3, "presentationTimeStamUs"    # J
    .param p5, "timeStampMs"    # J
    .param p7, "ntpTimeStamp"    # J

    .prologue
    .line 424
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 426
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 428
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    new-instance v1, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;

    .line 429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;-><init>(JJJ)V

    .line 428
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    .line 432
    :catch_0
    move-exception v8

    .line 433
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "decode failed"

    invoke-static {v0, v1, v8}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 367
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Java releaseDecoder. Total number of dropped frames: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 372
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 374
    .local v0, "releaseDone":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;

    invoke-direct {v1, p0, v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$1;-><init>(Lorg/webrtc/ali/MediaCodecVideoDecoder;Ljava/util/concurrent/CountDownLatch;)V

    .line 388
    .local v1, "runMediaCodecRelease":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 390
    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    const-string/jumbo v3, "Media decoder release timeout"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->codecErrors:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->codecErrors:I

    .line 393
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    if-eqz v2, :cond_0

    .line 394
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invoke codec error callback. Errors: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lorg/webrtc/ali/MediaCodecVideoDecoder;->codecErrors:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v2, Lorg/webrtc/ali/MediaCodecVideoDecoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    sget v3, Lorg/webrtc/ali/MediaCodecVideoDecoder;->codecErrors:I

    invoke-interface {v2, v3}, Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;->onMediaCodecVideoDecoderCriticalError(I)V

    .line 399
    :cond_0
    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 400
    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 401
    sput-object v5, Lorg/webrtc/ali/MediaCodecVideoDecoder;->runningInstance:Lorg/webrtc/ali/MediaCodecVideoDecoder;

    .line 402
    iget-boolean v2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 404
    iput-object v5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    .line 405
    iget-object v2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->textureListener:Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;

    invoke-virtual {v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->release()V

    .line 407
    :cond_1
    const-string/jumbo v2, "MediaCodecVideoDecoder"

    const-string/jumbo v3, "Java releaseDecoder done"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private reset(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect reset call for non-initialized decoder."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Java reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 358
    iput p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->width:I

    .line 359
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->height:I

    .line 360
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 361
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 362
    iput-boolean v3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 363
    iput v3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->droppedFrames:I

    .line 364
    return-void
.end method

.method private returnDecodedOutputBuffer(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 745
    invoke-direct {p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 746
    iget-boolean v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->useSurface:Z

    if-eqz v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "returnDecodedOutputBuffer() called for surface decoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 750
    return-void
.end method

.method public static setErrorCallback(Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;)V
    .locals 2
    .param p0, "errorCallback"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    .prologue
    .line 126
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "Set error callback"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sput-object p0, Lorg/webrtc/ali/MediaCodecVideoDecoder;->errorCallback:Lorg/webrtc/ali/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    .line 128
    return-void
.end method
