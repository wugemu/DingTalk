.class Lorg/webrtc/ali/HardwareVideoEncoder;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"

# interfaces
.implements Lorg/webrtc/ali/VideoEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;
    }
.end annotation


# static fields
.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field private static final MAX_ENCODER_Q_SIZE:I = 0x2

.field private static final MAX_VIDEO_FRAMERATE:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoder"

.field private static final VIDEO_ControlRateConstant:I = 0x2


# instance fields
.field private adjustedBitrate:I

.field private final bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

.field private callback:Lorg/webrtc/ali/VideoEncoder$Callback;

.field private codec:Landroid/media/MediaCodec;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/webrtc/ali/VideoCodecType;

.field private final colorFormat:I

.field private configBuffer:Ljava/nio/ByteBuffer;

.field private final forcedKeyFrameMs:J

.field private height:I

.field private final inputColorFormat:Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;

.field private final keyFrameIntervalSec:I

.field private lastKeyFrameMs:J

.field private final outputBuilders:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lorg/webrtc/ali/EncodedImage$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private outputThread:Ljava/lang/Thread;

.field private volatile running:Z

.field private volatile shutdownException:Ljava/lang/Exception;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/ali/VideoCodecType;IIILorg/webrtc/ali/BitrateAdjuster;)V
    .locals 2
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "codecType"    # Lorg/webrtc/ali/VideoCodecType;
    .param p3, "colorFormat"    # I
    .param p4, "keyFrameIntervalSec"    # I
    .param p5, "forceKeyFrameIntervalMs"    # I
    .param p6, "bitrateAdjuster"    # Lorg/webrtc/ali/BitrateAdjuster;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->running:Z

    .line 74
    iput-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    .line 83
    iput-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 101
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecType:Lorg/webrtc/ali/VideoCodecType;

    .line 103
    iput p3, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->colorFormat:I

    .line 104
    invoke-static {p3}, Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;->valueOf(I)Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->inputColorFormat:Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;

    .line 105
    iput p4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 106
    int-to-long v0, p5

    iput-wide v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->forcedKeyFrameMs:J

    .line 107
    iput-object p6, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    .line 108
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/HardwareVideoEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoEncoder;

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->running:Z

    return v0
.end method

.method static synthetic access$100(Lorg/webrtc/ali/HardwareVideoEncoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoEncoder;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->deliverEncodedImage()V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/ali/HardwareVideoEncoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoEncoder;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lorg/webrtc/ali/HardwareVideoEncoder$1;

    invoke-direct {v0, p0}, Lorg/webrtc/ali/HardwareVideoEncoder$1;-><init>(Lorg/webrtc/ali/HardwareVideoEncoder;)V

    return-object v0
.end method

.method private deliverEncodedImage()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 336
    :try_start_0
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 337
    .local v6, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const-wide/32 v10, 0x186a0

    invoke-virtual {v8, v6, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 338
    .local v5, "index":I
    if-gez v5, :cond_0

    .line 386
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :goto_0
    return-void

    .line 342
    .restart local v5    # "index":I
    .restart local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v1, v8, v5

    .line 343
    .local v1, "codecOutputBuffer":Ljava/nio/ByteBuffer;
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 344
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 346
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 347
    const-string/jumbo v8, "HardwareVideoEncoder"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Config frame generated. Offset: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ". Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 349
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 382
    :goto_1
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    .end local v1    # "codecOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v2

    .line 384
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v8, "HardwareVideoEncoder"

    const-string/jumbo v9, "deliverOutput failed"

    invoke-static {v8, v9, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "codecOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "index":I
    .restart local v6    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v8, v9}, Lorg/webrtc/ali/BitrateAdjuster;->reportEncodedFrame(I)V

    .line 352
    iget v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->adjustedBitrate:I

    iget-object v9, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    invoke-interface {v9}, Lorg/webrtc/ali/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 353
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->updateBitrate()Lorg/webrtc/ali/VideoCodecStatus;

    .line 357
    :cond_2
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    .line 358
    .local v7, "isKeyFrame":Z
    :cond_3
    if-eqz v7, :cond_5

    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecType:Lorg/webrtc/ali/VideoCodecType;

    sget-object v9, Lorg/webrtc/ali/VideoCodecType;->H264:Lorg/webrtc/ali/VideoCodecType;

    if-ne v8, v9, :cond_5

    .line 359
    const-string/jumbo v8, "HardwareVideoEncoder"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Prepending config frame of size "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 360
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to output buffer with offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 359
    invoke-static {v8, v9}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v9, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 364
    .local v3, "frameBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 365
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 369
    :goto_2
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 370
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 372
    sget-object v4, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameDelta:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 373
    .local v4, "frameType":Lorg/webrtc/ali/EncodedImage$FrameType;
    if-eqz v7, :cond_4

    .line 374
    const-string/jumbo v8, "HardwareVideoEncoder"

    const-string/jumbo v9, "Sync frame generated"

    invoke-static {v8, v9}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v4, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 377
    :cond_4
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v8}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/EncodedImage$Builder;

    .line 378
    .local v0, "builder":Lorg/webrtc/ali/EncodedImage$Builder;
    invoke-virtual {v0, v3}, Lorg/webrtc/ali/EncodedImage$Builder;->setBuffer(Ljava/nio/ByteBuffer;)Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/webrtc/ali/EncodedImage$Builder;->setFrameType(Lorg/webrtc/ali/EncodedImage$FrameType;)Lorg/webrtc/ali/EncodedImage$Builder;

    .line 380
    iget-object v8, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->callback:Lorg/webrtc/ali/VideoEncoder$Callback;

    invoke-virtual {v0}, Lorg/webrtc/ali/EncodedImage$Builder;->createEncodedImage()Lorg/webrtc/ali/EncodedImage;

    move-result-object v9

    new-instance v10, Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfo;

    invoke-direct {v10}, Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfo;-><init>()V

    invoke-interface {v8, v9, v10}, Lorg/webrtc/ali/VideoEncoder$Callback;->onEncodedFrame(Lorg/webrtc/ali/EncodedImage;Lorg/webrtc/ali/VideoEncoder$CodecSpecificInfo;)V

    goto/16 :goto_1

    .line 367
    .end local v0    # "builder":Lorg/webrtc/ali/EncodedImage$Builder;
    .end local v3    # "frameBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "frameType":Lorg/webrtc/ali/EncodedImage$FrameType;
    :cond_5
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "frameBuffer":Ljava/nio/ByteBuffer;
    goto :goto_2
.end method

.method private initEncodeInternal(IIIILorg/webrtc/ali/VideoEncoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitrateKbps"    # I
    .param p4, "fps"    # I
    .param p5, "callback"    # Lorg/webrtc/ali/VideoEncoder$Callback;

    .prologue
    const/4 v6, 0x1

    .line 119
    const-string/jumbo v2, "HardwareVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initEncode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kbps. Fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput p1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->width:I

    .line 122
    iput p2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->height:I

    .line 123
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 124
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    mul-int/lit16 v3, p3, 0x3e8

    invoke-interface {v2, v3, p4}, Lorg/webrtc/ali/BitrateAdjuster;->setTargets(II)V

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    invoke-interface {v2}, Lorg/webrtc/ali/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->adjustedBitrate:I

    .line 128
    iput-object p5, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->callback:Lorg/webrtc/ali/VideoEncoder$Callback;

    .line 130
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->lastKeyFrameMs:J

    .line 133
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecType:Lorg/webrtc/ali/VideoCodecType;

    invoke-virtual {v2}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 140
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "bitrate"

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 141
    const-string/jumbo v2, "bitrate-mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 142
    const-string/jumbo v2, "color-format"

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->colorFormat:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 143
    const-string/jumbo v2, "frame-rate"

    iget-object v3, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    invoke-interface {v3}, Lorg/webrtc/ali/BitrateAdjuster;->getAdjustedFramerate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v2, "i-frame-interval"

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->keyFrameIntervalSec:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 145
    const-string/jumbo v2, "HardwareVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 147
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    iput-boolean v6, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->running:Z

    .line 155
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 156
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 158
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    .end local v1    # "format":Landroid/media/MediaFormat;
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v2

    :goto_1
    const-string/jumbo v2, "HardwareVideoEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot create media encoder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "HardwareVideoEncoder"

    const-string/jumbo v3, "initEncode failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->release()Lorg/webrtc/ali/VideoCodecStatus;

    .line 151
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 389
    const-string/jumbo v1, "HardwareVideoEncoder"

    const-string/jumbo v2, "Releasing MediaCodec on output thread"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :goto_1
    const-string/jumbo v1, "HardwareVideoEncoder"

    const-string/jumbo v2, "Release on output thread done"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HardwareVideoEncoder"

    const-string/jumbo v2, "Media encoder stop failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 398
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HardwareVideoEncoder"

    const-string/jumbo v2, "Media encoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    goto :goto_1
.end method

.method private requestKeyFrame(J)V
    .locals 5
    .param p1, "presentationTimestampMs"    # J

    .prologue
    .line 312
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "request-sync"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    iput-wide p1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->lastKeyFrameMs:J

    .line 320
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "HardwareVideoEncoder"

    const-string/jumbo v3, "requestKeyFrame failed"

    invoke-static {v2, v3, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resetCodec(II)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 7
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 294
    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->release()Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v6

    .line 295
    .local v6, "status":Lorg/webrtc/ali/VideoCodecStatus;
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    if-eq v6, v0, :cond_0

    .line 299
    .end local v6    # "status":Lorg/webrtc/ali/VideoCodecStatus;
    :goto_0
    return-object v6

    .restart local v6    # "status":Lorg/webrtc/ali/VideoCodecStatus;
    :cond_0
    iget-object v5, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->callback:Lorg/webrtc/ali/VideoEncoder$Callback;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/ali/HardwareVideoEncoder;->initEncodeInternal(IIIILorg/webrtc/ali/VideoEncoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v6

    goto :goto_0
.end method

.method private shouldForceKeyFrame(J)Z
    .locals 5
    .param p1, "presentationTimestampMs"    # J

    .prologue
    .line 303
    iget-wide v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->forcedKeyFrameMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->lastKeyFrameMs:J

    iget-wide v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->forcedKeyFrameMs:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBitrate()Lorg/webrtc/ali/VideoCodecStatus;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 406
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    invoke-interface {v2}, Lorg/webrtc/ali/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->adjustedBitrate:I

    .line 408
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "video-bitrate"

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 411
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v1    # "params":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "HardwareVideoEncoder"

    const-string/jumbo v3, "updateBitrate failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0
.end method


# virtual methods
.method public encode(Lorg/webrtc/ali/VideoFrame;Lorg/webrtc/ali/VideoEncoder$EncodeInfo;)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 26
    .param p1, "videoFrame"    # Lorg/webrtc/ali/VideoFrame;
    .param p2, "encodeInfo"    # Lorg/webrtc/ali/VideoEncoder$EncodeInfo;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    if-nez v4, :cond_1

    .line 186
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/ali/VideoCodecStatus;

    .line 264
    :cond_0
    :goto_0
    return-object v21

    .line 190
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getWidth()I

    move-result v16

    .line 191
    .local v16, "frameWidth":I
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getHeight()I

    move-result v14

    .line 192
    .local v14, "frameHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->width:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->height:I

    if-eq v14, v4, :cond_3

    .line 193
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lorg/webrtc/ali/HardwareVideoEncoder;->resetCodec(II)Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v21

    .line 194
    .local v21, "status":Lorg/webrtc/ali/VideoCodecStatus;
    sget-object v4, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_0

    .line 202
    .end local v21    # "status":Lorg/webrtc/ali/VideoCodecStatus;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 208
    .local v5, "index":I
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    .line 210
    const-string/jumbo v4, "HardwareVideoEncoder"

    const-string/jumbo v6, "Dropped frame, no input buffers available"

    invoke-static {v4, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 203
    .end local v5    # "index":I
    :catch_0
    move-exception v13

    .line 204
    .local v13, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "HardwareVideoEncoder"

    const-string/jumbo v6, "dequeueInputBuffer failed"

    invoke-static {v4, v6, v13}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 213
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    .restart local v5    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_5

    .line 215
    const-string/jumbo v4, "HardwareVideoEncoder"

    const-string/jumbo v6, "Dropped frame, encoder queue full"

    invoke-static {v4, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 222
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v11, v4, v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getBuffer()Lorg/webrtc/ali/VideoFrame$Buffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/webrtc/ali/VideoFrame$Buffer;->toI420()Lorg/webrtc/ali/VideoFrame$I420Buffer;

    move-result-object v17

    .line 228
    .local v17, "i420":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->inputColorFormat:Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;

    move-object/from16 v0, v17

    invoke-virtual {v4, v11, v0}, Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;->fillBufferFromI420(Ljava/nio/ByteBuffer;Lorg/webrtc/ali/VideoFrame$I420Buffer;)V

    .line 230
    const/16 v20, 0x0

    .line 231
    .local v20, "requestedKeyFrame":Z
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/webrtc/ali/VideoEncoder$EncodeInfo;->frameTypes:[Lorg/webrtc/ali/EncodedImage$FrameType;

    array-length v10, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_7

    aget-object v15, v6, v4

    .line 232
    .local v15, "frameType":Lorg/webrtc/ali/EncodedImage$FrameType;
    sget-object v22, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/ali/EncodedImage$FrameType;

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_6

    .line 233
    const/16 v20, 0x1

    .line 231
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .end local v15    # "frameType":Lorg/webrtc/ali/EncodedImage$FrameType;
    .end local v17    # "i420":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .end local v20    # "requestedKeyFrame":Z
    :catch_1
    move-exception v13

    .line 224
    .restart local v13    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "HardwareVideoEncoder"

    const-string/jumbo v6, "getInputBuffers failed"

    invoke-static {v4, v6, v13}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 238
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v17    # "i420":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .restart local v20    # "requestedKeyFrame":Z
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getTimestampNs()J

    move-result-wide v22

    const-wide/16 v24, 0x1f4

    add-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    div-long v8, v22, v24

    .line 239
    .local v8, "presentationTimestampUs":J
    const-wide/16 v22, 0x1f4

    add-long v22, v22, v8

    const-wide/16 v24, 0x3e8

    div-long v18, v22, v24

    .line 240
    .local v18, "presentationTimestampMs":J
    if-nez v20, :cond_8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/HardwareVideoEncoder;->shouldForceKeyFrame(J)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 241
    :cond_8
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/HardwareVideoEncoder;->requestKeyFrame(J)V

    .line 246
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getBuffer()Lorg/webrtc/ali/VideoFrame$Buffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/webrtc/ali/VideoFrame$Buffer;->getHeight()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getBuffer()Lorg/webrtc/ali/VideoFrame$Buffer;

    move-result-object v6

    invoke-interface {v6}, Lorg/webrtc/ali/VideoFrame$Buffer;->getWidth()I

    move-result v6

    mul-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v7, v4, 0x2

    .line 247
    .local v7, "bufferSize":I
    invoke-static {}, Lorg/webrtc/ali/EncodedImage;->builder()Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v4

    .line 248
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lorg/webrtc/ali/EncodedImage$Builder;->setCaptureTimeMs(J)Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v4

    const/4 v6, 0x1

    .line 249
    invoke-virtual {v4, v6}, Lorg/webrtc/ali/EncodedImage$Builder;->setCompleteFrame(Z)Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v4

    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/webrtc/ali/EncodedImage$Builder;->setEncodedWidth(I)Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v4

    .line 251
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/webrtc/ali/EncodedImage$Builder;->setEncodedHeight(I)Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v4

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoFrame;->getRotation()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/webrtc/ali/EncodedImage$Builder;->setRotation(I)Lorg/webrtc/ali/EncodedImage$Builder;

    move-result-object v12

    .line 253
    .local v12, "builder":Lorg/webrtc/ali/EncodedImage$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v4, v12}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 255
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 264
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 257
    :catch_2
    move-exception v13

    .line 258
    .restart local v13    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "HardwareVideoEncoder"

    const-string/jumbo v6, "queueInputBuffer failed"

    invoke-static {v4, v6, v13}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 262
    sget-object v21, Lorg/webrtc/ali/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HardwareVideoEncoder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScalingSettings()Lorg/webrtc/ali/VideoEncoder$ScalingSettings;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public initEncode(Lorg/webrtc/ali/VideoEncoder$Settings;Lorg/webrtc/ali/VideoEncoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 6
    .param p1, "settings"    # Lorg/webrtc/ali/VideoEncoder$Settings;
    .param p2, "callback"    # Lorg/webrtc/ali/VideoEncoder$Callback;

    .prologue
    .line 113
    iget v1, p1, Lorg/webrtc/ali/VideoEncoder$Settings;->width:I

    iget v2, p1, Lorg/webrtc/ali/VideoEncoder$Settings;->height:I

    iget v3, p1, Lorg/webrtc/ali/VideoEncoder$Settings;->startBitrate:I

    iget v4, p1, Lorg/webrtc/ali/VideoEncoder$Settings;->maxFramerate:I

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/ali/HardwareVideoEncoder;->initEncodeInternal(IIIILorg/webrtc/ali/VideoEncoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public release()Lorg/webrtc/ali/VideoCodecStatus;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 165
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->running:Z

    .line 166
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/webrtc/ali/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-string/jumbo v0, "HardwareVideoEncoder"

    const-string/jumbo v1, "Media encoder release timeout"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/ali/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 177
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 178
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 180
    :goto_0
    return-object v0

    .line 170
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v0, "HardwareVideoEncoder"

    const-string/jumbo v1, "Media encoder release exception"

    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 177
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 178
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    goto :goto_0

    .line 176
    :cond_1
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 177
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 178
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 180
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->codec:Landroid/media/MediaCodec;

    .line 177
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 178
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->outputBuilders:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 179
    throw v0
.end method

.method public setChannelParameters(SJ)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 1
    .param p1, "packetLoss"    # S
    .param p2, "roundTripTimeMs"    # J

    .prologue
    .line 270
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    return-object v0
.end method

.method public setRateAllocation(Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;I)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 2
    .param p1, "bitrateAllocation"    # Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;
    .param p2, "framerate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    const/16 v0, 0x1e

    if-le p2, v0, :cond_0

    .line 276
    const/16 p2, 0x1e

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoEncoder;->bitrateAdjuster:Lorg/webrtc/ali/BitrateAdjuster;

    invoke-virtual {p1}, Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;->getSum()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lorg/webrtc/ali/BitrateAdjuster;->setTargets(II)V

    .line 279
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoEncoder;->updateBitrate()Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method
