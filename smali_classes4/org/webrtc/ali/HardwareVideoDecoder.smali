.class Lorg/webrtc/ali/HardwareVideoDecoder;
.super Ljava/lang/Object;
.source "HardwareVideoDecoder.java"

# interfaces
.implements Lorg/webrtc/ali/VideoDecoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final MEDIA_FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final MEDIA_FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final MEDIA_FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final MEDIA_FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MEDIA_FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final MEDIA_FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final TAG:Ljava/lang/String; = "HardwareVideoDecoder"


# instance fields
.field private activeOutputBuffers:I

.field private final activeOutputBuffersLock:Ljava/lang/Object;

.field private callback:Lorg/webrtc/ali/VideoDecoder$Callback;

.field private codec:Landroid/media/MediaCodec;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lorg/webrtc/ali/VideoCodecType;

.field private colorFormat:I

.field private decoderThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

.field private final dimensionLock:Ljava/lang/Object;

.field private final frameInfos:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private keyFrameRequired:Z

.field private outputThread:Ljava/lang/Thread;

.field private outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

.field private volatile running:Z

.field private volatile shutdownException:Ljava/lang/Exception;

.field private sliceHeight:I

.field private stride:I

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/webrtc/ali/VideoCodecType;I)V
    .locals 3
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "codecType"    # Lorg/webrtc/ali/VideoCodecType;
    .param p3, "colorFormat"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->running:Z

    .line 83
    iput-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    .line 87
    iput v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 106
    iput-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 109
    invoke-direct {p0, p3}, Lorg/webrtc/ali/HardwareVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported color format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codecType:Lorg/webrtc/ali/VideoCodecType;

    .line 114
    iput p3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    .line 115
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    .line 116
    return-void
.end method

.method static synthetic access$002(Lorg/webrtc/ali/HardwareVideoDecoder;Lorg/webrtc/ali/ThreadUtils$ThreadChecker;)Lorg/webrtc/ali/ThreadUtils$ThreadChecker;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;
    .param p1, "x1"    # Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    .prologue
    .line 30
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/ali/HardwareVideoDecoder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->running:Z

    return v0
.end method

.method static synthetic access$200(Lorg/webrtc/ali/HardwareVideoDecoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoDecoder;->deliverDecodedFrame()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/HardwareVideoDecoder;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoDecoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/ali/HardwareVideoDecoder;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/HardwareVideoDecoder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$610(Lorg/webrtc/ali/HardwareVideoDecoder;)I
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/HardwareVideoDecoder;

    .prologue
    .line 30
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffers:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffers:I

    return v0
.end method

.method private static copyI420(Ljava/nio/ByteBuffer;ILorg/webrtc/ali/VideoFrame$I420Buffer;IIII)V
    .locals 17
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "frameBuffer"    # Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .param p3, "stride"    # I
    .param p4, "sliceHeight"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 601
    div-int/lit8 v15, p3, 0x2

    .line 602
    .local v15, "uvStride":I
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v9, v0, 0x2

    .line 605
    .local v9, "chromaWidth":I
    rem-int/lit8 v0, p4, 0x2

    if-nez v0, :cond_1

    add-int/lit8 v0, p6, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 608
    .local v8, "chromaHeight":I
    :goto_0
    mul-int v0, p3, p4

    add-int v14, p1, v0

    .line 609
    .local v14, "uPos":I
    mul-int v0, v15, p4

    div-int/lit8 v0, v0, 0x2

    add-int v16, v14, v0

    .line 612
    .local v16, "vPos":I
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideY()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v6, p5

    move/from16 v7, p6

    .line 611
    invoke-static/range {v0 .. v7}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    .line 613
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideU()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move v6, v9

    move v7, v8

    invoke-static/range {v0 .. v7}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    .line 615
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v15

    move v6, v9

    move v7, v8

    invoke-static/range {v0 .. v7}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    .line 620
    rem-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 621
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideU()I

    move-result v12

    .line 622
    .local v12, "strideU":I
    mul-int v10, v8, v12

    .line 623
    .local v10, "endU":I
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    sub-int v1, v10, v12

    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2, v10, v9}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyRow(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 624
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideV()I

    move-result v13

    .line 625
    .local v13, "strideV":I
    mul-int v11, v8, v13

    .line 626
    .local v11, "endV":I
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v0

    sub-int v1, v11, v13

    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2, v11, v9}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyRow(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 628
    .end local v10    # "endU":I
    .end local v11    # "endV":I
    .end local v12    # "strideU":I
    .end local v13    # "strideV":I
    :cond_0
    return-void

    .line 605
    .end local v8    # "chromaHeight":I
    .end local v14    # "uPos":I
    .end local v16    # "vPos":I
    :cond_1
    div-int/lit8 v8, p6, 0x2

    goto :goto_0
.end method

.method private static copyPlane(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "srcPos"    # I
    .param p2, "srcStride"    # I
    .param p3, "dst"    # Ljava/nio/ByteBuffer;
    .param p4, "dstPos"    # I
    .param p5, "dstStride"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p7, :cond_0

    .line 657
    invoke-static {p0, p1, p3, p4, p6}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyRow(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 658
    add-int/2addr p1, p2

    .line 659
    add-int/2addr p4, p5

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method

.method private static copyRow(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 3
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "srcPos"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "dstPos"    # I
    .param p4, "width"    # I

    .prologue
    .line 664
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 665
    add-int v1, p3, v0

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method

.method private createBufferFromI420(Ljava/nio/ByteBuffer;IIIIII)Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "outputBufferIndex"    # I
    .param p3, "offset"    # I
    .param p4, "stride"    # I
    .param p5, "sliceHeight"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 511
    div-int/lit8 v9, p4, 0x2

    .line 513
    .local v9, "uvStride":I
    add-int/lit8 v0, p7, 0x1

    div-int/lit8 v6, v0, 0x2

    .line 516
    .local v6, "chromaHeight":I
    mul-int v0, p4, p5

    add-int v5, p3, v0

    .line 517
    .local v5, "uPos":I
    mul-int v0, v9, p5

    div-int/lit8 v0, v0, 0x2

    add-int v7, v5, v0

    .line 519
    .local v7, "vPos":I
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffers:I

    .line 521
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    new-instance v0, Lorg/webrtc/ali/HardwareVideoDecoder$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move/from16 v4, p7

    move/from16 v8, p4

    move/from16 v10, p6

    move v11, p2

    invoke-direct/range {v0 .. v11}, Lorg/webrtc/ali/HardwareVideoDecoder$2;-><init>(Lorg/webrtc/ali/HardwareVideoDecoder;Ljava/nio/ByteBuffer;IIIIIIIII)V

    return-object v0

    .line 521
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 305
    new-instance v0, Lorg/webrtc/ali/HardwareVideoDecoder$1;

    const-string/jumbo v1, "HardwareVideoDecoder.outputThread"

    invoke-direct {v0, p0, v1}, Lorg/webrtc/ali/HardwareVideoDecoder$1;-><init>(Lorg/webrtc/ali/HardwareVideoDecoder;Ljava/lang/String;)V

    return-object v0
.end method

.method private deliverDecodedFrame()V
    .locals 28

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v4}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 320
    :try_start_0
    new-instance v22, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v22 .. v22}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 325
    .local v22, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const-wide/32 v24, 0x186a0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 326
    .local v6, "result":I
    const/4 v4, -0x2

    if-ne v6, v4, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/webrtc/ali/HardwareVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    .line 402
    .end local v6    # "result":I
    .end local v22    # "info":Landroid/media/MediaCodec$BufferInfo;
    :goto_0
    return-void

    .line 331
    .restart local v6    # "result":I
    .restart local v22    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    if-gez v6, :cond_1

    .line 332
    const-string/jumbo v4, "HardwareVideoDecoder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "dequeueOutputBuffer returned "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/webrtc/ali/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v6    # "result":I
    .end local v22    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v20

    .line 400
    .local v20, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "HardwareVideoDecoder"

    const-string/jumbo v7, "deliverDecodedFrame failed"

    move-object/from16 v0, v20

    invoke-static {v4, v7, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 336
    .end local v20    # "e":Ljava/lang/IllegalStateException;
    .restart local v6    # "result":I
    .restart local v22    # "info":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;

    .line 337
    .local v21, "frameInfo":Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;
    const/16 v19, 0x0

    .line 338
    .local v19, "decodeTimeMs":Ljava/lang/Integer;
    const/16 v23, 0x0

    .line 339
    .local v23, "rotation":I
    if-eqz v21, :cond_2

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 341
    move-object/from16 v0, v21

    iget v0, v0, Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;->rotation:I

    move/from16 v23, v0

    .line 344
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->hasDecodedFirstFrame:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    :try_start_2
    move-object/from16 v0, p0

    iget v10, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    .line 350
    .local v10, "width":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    .line 351
    .local v11, "height":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->stride:I

    .line 352
    .local v8, "stride":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->sliceHeight:I

    .line 353
    .local v9, "sliceHeight":I
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    :try_start_3
    move-object/from16 v0, v22

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v7, v10, v11

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    if-ge v4, v7, :cond_3

    .line 358
    const-string/jumbo v4, "HardwareVideoDecoder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Insufficient output buffer size: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 353
    .end local v8    # "stride":I
    .end local v9    # "sliceHeight":I
    .end local v10    # "width":I
    .end local v11    # "height":I
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 362
    .restart local v8    # "stride":I
    .restart local v9    # "sliceHeight":I
    .restart local v10    # "width":I
    .restart local v11    # "height":I
    :cond_3
    move-object/from16 v0, v22

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v7, v8, v11

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    if-ge v4, v7, :cond_4

    if-ne v9, v11, :cond_4

    if-le v8, v10, :cond_4

    .line 366
    move-object/from16 v0, v22

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v7, v11, 0x3

    div-int v8, v4, v7

    .line 369
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v4, v6

    .line 370
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    move-object/from16 v0, v22

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 376
    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    const/16 v7, 0x13

    if-ne v4, v7, :cond_6

    .line 377
    rem-int/lit8 v4, v9, 0x2

    if-nez v4, :cond_5

    .line 378
    move-object/from16 v0, v22

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v4, p0

    .line 379
    invoke-direct/range {v4 .. v11}, Lorg/webrtc/ali/HardwareVideoDecoder;->createBufferFromI420(Ljava/nio/ByteBuffer;IIIIII)Lorg/webrtc/ali/VideoFrame$I420Buffer;

    move-result-object v14

    .line 393
    .local v14, "frameBuffer":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    :goto_1
    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v16, v24, v26

    .line 394
    .local v16, "presentationTimeNs":J
    new-instance v13, Lorg/webrtc/ali/VideoFrame;

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v15, v23

    invoke-direct/range {v13 .. v18}, Lorg/webrtc/ali/VideoFrame;-><init>(Lorg/webrtc/ali/VideoFrame$Buffer;IJLandroid/graphics/Matrix;)V

    .line 397
    .local v13, "frame":Lorg/webrtc/ali/VideoFrame;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v4, v13, v0, v7}, Lorg/webrtc/ali/VideoDecoder$Callback;->onDecodedFrame(Lorg/webrtc/ali/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 398
    invoke-virtual {v13}, Lorg/webrtc/ali/VideoFrame;->release()V

    goto/16 :goto_0

    .line 381
    .end local v13    # "frame":Lorg/webrtc/ali/VideoFrame;
    .end local v14    # "frameBuffer":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .end local v16    # "presentationTimeNs":J
    :cond_5
    new-instance v14, Lorg/webrtc/ali/I420BufferImpl;

    invoke-direct {v14, v10, v11}, Lorg/webrtc/ali/I420BufferImpl;-><init>(II)V

    .line 383
    .restart local v14    # "frameBuffer":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    move-object/from16 v0, v22

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object v12, v5

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyI420(Ljava/nio/ByteBuffer;ILorg/webrtc/ali/VideoFrame$I420Buffer;IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 387
    .end local v14    # "frameBuffer":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    :cond_6
    new-instance v14, Lorg/webrtc/ali/I420BufferImpl;

    invoke-direct {v14, v10, v11}, Lorg/webrtc/ali/I420BufferImpl;-><init>(II)V

    .line 389
    .restart local v14    # "frameBuffer":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    move-object/from16 v0, v22

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object v12, v5

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lorg/webrtc/ali/HardwareVideoDecoder;->nv12ToI420(Ljava/nio/ByteBuffer;ILorg/webrtc/ali/VideoFrame$I420Buffer;IIII)V

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private initDecodeInternal(IILorg/webrtc/ali/VideoDecoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callback"    # Lorg/webrtc/ali/VideoDecoder$Callback;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 125
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 126
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 127
    const-string/jumbo v2, "HardwareVideoDecoder"

    const-string/jumbo v3, "initDecodeInternal called while the codec is already running"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    .line 163
    :goto_0
    return-object v2

    .line 133
    :cond_0
    iput-object p3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    .line 134
    iput p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    .line 135
    iput p2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    .line 137
    iput p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->stride:I

    .line 138
    iput p2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->sliceHeight:I

    .line 139
    iput-boolean v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->hasDecodedFirstFrame:Z

    .line 140
    iput-boolean v6, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->keyFrameRequired:Z

    .line 143
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 149
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codecType:Lorg/webrtc/ali/VideoCodecType;

    invoke-virtual {v2}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 150
    .local v1, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "color-format"

    iget v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 151
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 152
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    iput-boolean v6, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->running:Z

    .line 160
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 161
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 163
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 145
    .end local v1    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v2

    :goto_1
    const-string/jumbo v2, "HardwareVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot create media decoder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "HardwareVideoDecoder"

    const-string/jumbo v3, "initDecode failed"

    invoke-static {v2, v3, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoDecoder;->release()Lorg/webrtc/ali/VideoCodecStatus;

    .line 156
    sget-object v2, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private isSupportedColorFormat(I)Z
    .locals 5
    .param p1, "colorFormat"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 500
    sget-object v3, Lorg/webrtc/ali/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 501
    .local v0, "supported":I
    if-ne v0, p1, :cond_1

    .line 502
    const/4 v1, 0x1

    .line 505
    .end local v0    # "supported":I
    :cond_0
    return v1

    .line 500
    .restart local v0    # "supported":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static nv12ToI420(Ljava/nio/ByteBuffer;ILorg/webrtc/ali/VideoFrame$I420Buffer;IIII)V
    .locals 15
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "frameBuffer"    # Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .param p3, "stride"    # I
    .param p4, "sliceHeight"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 633
    mul-int v0, p3, p4

    add-int v14, p1, v0

    .line 634
    .local v14, "uvPos":I
    add-int/lit8 v0, p5, 0x1

    div-int/lit8 v9, v0, 0x2

    .line 635
    .local v9, "chromaWidth":I
    add-int/lit8 v0, p6, 0x1

    div-int/lit8 v8, v0, 0x2

    .line 638
    .local v8, "chromaHeight":I
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideY()I

    move-result v5

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v6, p5

    move/from16 v7, p6

    .line 637
    invoke-static/range {v0 .. v7}, Lorg/webrtc/ali/HardwareVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    .line 641
    const/4 v10, 0x0

    .line 642
    .local v10, "dstUPos":I
    const/4 v11, 0x0

    .line 643
    .local v11, "dstVPos":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v8, :cond_1

    .line 644
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v9, :cond_0

    .line 645
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, v10, v13

    mul-int/lit8 v2, v13, 0x2

    add-int/2addr v2, v14

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 646
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, v11, v13

    mul-int/lit8 v2, v13, 0x2

    add-int/2addr v2, v14

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 644
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 648
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideU()I

    move-result v0

    add-int/2addr v10, v0

    .line 649
    invoke-interface/range {p2 .. p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideV()I

    move-result v0

    add-int/2addr v11, v0

    .line 650
    add-int v14, v14, p3

    .line 643
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 652
    .end local v13    # "j":I
    :cond_1
    return-void
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 405
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 406
    const-string/jumbo v2, "HardwareVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Decoder format changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v2, "crop-left"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "crop-right"

    .line 410
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "crop-bottom"

    .line 411
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "crop-top"

    .line 412
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    const-string/jumbo v2, "crop-right"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "crop-left"

    .line 414
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int v1, v2, v3

    .line 415
    .local v1, "newWidth":I
    const-string/jumbo v2, "crop-bottom"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "crop-top"

    .line 416
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int v0, v2, v3

    .line 422
    .local v0, "newHeight":I
    :goto_0
    iget-object v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 423
    :try_start_0
    iget-boolean v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    if-eq v2, v0, :cond_2

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected size change. Configured "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/webrtc/ali/HardwareVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 426
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :goto_1
    return-void

    .line 418
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    :cond_1
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 419
    .restart local v1    # "newWidth":I
    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "newHeight":I
    goto :goto_0

    .line 428
    :cond_2
    :try_start_1
    iput v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    .line 429
    iput v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    .line 430
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    const-string/jumbo v2, "color-format"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    const-string/jumbo v2, "color-format"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    .line 434
    const-string/jumbo v2, "HardwareVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Color: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    invoke-direct {p0, v2}, Lorg/webrtc/ali/HardwareVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 436
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported color format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->colorFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/webrtc/ali/HardwareVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    goto :goto_1

    .line 430
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 442
    :cond_3
    iget-object v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 443
    :try_start_3
    const-string/jumbo v2, "stride"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 444
    const-string/jumbo v2, "stride"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->stride:I

    .line 446
    :cond_4
    const-string/jumbo v2, "slice-height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 447
    const-string/jumbo v2, "slice-height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->sliceHeight:I

    .line 449
    :cond_5
    const-string/jumbo v2, "HardwareVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Frame stride and slice height: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->stride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->sliceHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    iget v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->stride:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->stride:I

    .line 451
    iget v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    iget v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->sliceHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->sliceHeight:I

    .line 452
    monitor-exit v3

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private reinitDecode(II)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 2
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 296
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 297
    invoke-virtual {p0}, Lorg/webrtc/ali/HardwareVideoDecoder;->release()Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v0

    .line 298
    .local v0, "status":Lorg/webrtc/ali/VideoCodecStatus;
    sget-object v1, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    .line 301
    .end local v0    # "status":Lorg/webrtc/ali/VideoCodecStatus;
    :goto_0
    return-object v0

    .restart local v0    # "status":Lorg/webrtc/ali/VideoCodecStatus;
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    invoke-direct {p0, p1, p2, v1}, Lorg/webrtc/ali/HardwareVideoDecoder;->initDecodeInternal(IILorg/webrtc/ali/VideoDecoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private releaseCodecOnOutputThread()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 457
    const-string/jumbo v1, "HardwareVideoDecoder"

    const-string/jumbo v2, "Releasing MediaCodec on output thread"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lorg/webrtc/ali/HardwareVideoDecoder;->waitOutputBuffersReleasedOnOutputThread()V

    .line 460
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    :goto_1
    iput-object v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 472
    iput-object v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    .line 473
    iput-object v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 474
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 475
    const-string/jumbo v1, "HardwareVideoDecoder"

    const-string/jumbo v2, "Release on output thread done"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HardwareVideoDecoder"

    const-string/jumbo v2, "Media decoder stop failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 467
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HardwareVideoDecoder"

    const-string/jumbo v2, "Media decoder release failed"

    invoke-static {v1, v2, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    goto :goto_1
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 494
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->running:Z

    .line 496
    iput-object p1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 497
    return-void
.end method

.method private waitOutputBuffersReleasedOnOutputThread()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 479
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 480
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 481
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffers:I

    if-lez v1, :cond_0

    .line 482
    const-string/jumbo v1, "HardwareVideoDecoder"

    const-string/jumbo v3, "Waiting for all frames to be released."

    invoke-static {v1, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->activeOutputBuffersLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "HardwareVideoDecoder"

    const-string/jumbo v3, "Interrupted while waiting for output buffers to be released."

    invoke-static {v1, v3, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    monitor-exit v2

    .line 490
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public decode(Lorg/webrtc/ali/EncodedImage;Lorg/webrtc/ali/VideoDecoder$DecodeInfo;)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 14
    .param p1, "frame"    # Lorg/webrtc/ali/EncodedImage;
    .param p2, "info"    # Lorg/webrtc/ali/VideoDecoder$DecodeInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 169
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    if-nez v0, :cond_2

    .line 170
    :cond_0
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->UNINITIALIZED:Lorg/webrtc/ali/VideoCodecStatus;

    .line 253
    :cond_1
    :goto_0
    return-object v10

    .line 173
    :cond_2
    iget-object v0, p1, Lorg/webrtc/ali/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 174
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "decode() - no input data"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p1, Lorg/webrtc/ali/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 179
    .local v3, "size":I
    if-nez v3, :cond_4

    .line 180
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "decode() - input buffer empty"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERR_PARAMETER:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 186
    :cond_4
    iget-object v2, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    :try_start_0
    iget v11, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->width:I

    .line 188
    .local v11, "width":I
    iget v9, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->height:I

    .line 189
    .local v9, "height":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget v0, p1, Lorg/webrtc/ali/EncodedImage;->encodedWidth:I

    iget v2, p1, Lorg/webrtc/ali/EncodedImage;->encodedHeight:I

    mul-int/2addr v0, v2

    if-lez v0, :cond_6

    iget v0, p1, Lorg/webrtc/ali/EncodedImage;->encodedWidth:I

    if-ne v0, v11, :cond_5

    iget v0, p1, Lorg/webrtc/ali/EncodedImage;->encodedHeight:I

    if-eq v0, v9, :cond_6

    .line 194
    :cond_5
    iget v0, p1, Lorg/webrtc/ali/EncodedImage;->encodedWidth:I

    iget v2, p1, Lorg/webrtc/ali/EncodedImage;->encodedHeight:I

    invoke-direct {p0, v0, v2}, Lorg/webrtc/ali/HardwareVideoDecoder;->reinitDecode(II)Lorg/webrtc/ali/VideoCodecStatus;

    move-result-object v10

    .line 195
    .local v10, "status":Lorg/webrtc/ali/VideoCodecStatus;
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    if-ne v10, v0, :cond_1

    .line 200
    .end local v10    # "status":Lorg/webrtc/ali/VideoCodecStatus;
    :cond_6
    iget-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->keyFrameRequired:Z

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p1, Lorg/webrtc/ali/EncodedImage;->frameType:Lorg/webrtc/ali/EncodedImage$FrameType;

    sget-object v2, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/ali/EncodedImage$FrameType;

    if-eq v0, v2, :cond_7

    .line 203
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "decode() - key frame required first"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 189
    .end local v9    # "height":I
    .end local v11    # "width":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 206
    .restart local v9    # "height":I
    .restart local v11    # "width":I
    :cond_7
    iget-boolean v0, p1, Lorg/webrtc/ali/EncodedImage;->completeFrame:Z

    if-nez v0, :cond_8

    .line 207
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "decode() - complete frame required first"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 215
    :cond_8
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x7a120

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 220
    .local v1, "index":I
    if-gez v1, :cond_9

    .line 223
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "decode() - no HW buffers available; decoder falling behind"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 216
    .end local v1    # "index":I
    :catch_0
    move-exception v8

    .line 217
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "dequeueInputBuffer failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 229
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "index":I
    :cond_9
    :try_start_3
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v7, v0, v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 235
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v3, :cond_a

    .line 236
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "decode() - HW buffer too small"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 230
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v8

    .line 231
    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "getInputBuffers failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 239
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_a
    iget-object v0, p1, Lorg/webrtc/ali/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 241
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    new-instance v2, Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p1, Lorg/webrtc/ali/EncodedImage;->rotation:I

    invoke-direct {v2, v4, v5, v6}, Lorg/webrtc/ali/HardwareVideoDecoder$FrameInfo;-><init>(JI)V

    invoke-interface {v0, v2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 243
    :try_start_4
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-wide v4, p1, Lorg/webrtc/ali/EncodedImage;->captureTimeMs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v4, v12

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 250
    iget-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->keyFrameRequired:Z

    if-eqz v0, :cond_b

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->keyFrameRequired:Z

    .line 253
    :cond_b
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0

    .line 245
    :catch_2
    move-exception v8

    .line 246
    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v2, "queueInputBuffer failed"

    invoke-static {v0, v2, v8}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    .line 248
    sget-object v10, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;

    goto/16 :goto_0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HardwareVideoDecoder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefersLateDecoding()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public initDecode(Lorg/webrtc/ali/VideoDecoder$Settings;Lorg/webrtc/ali/VideoDecoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;
    .locals 2
    .param p1, "settings"    # Lorg/webrtc/ali/VideoDecoder$Settings;
    .param p2, "callback"    # Lorg/webrtc/ali/VideoDecoder$Callback;

    .prologue
    .line 120
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->decoderThreadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    .line 121
    iget v0, p1, Lorg/webrtc/ali/VideoDecoder$Settings;->width:I

    iget v1, p1, Lorg/webrtc/ali/VideoDecoder$Settings;->height:I

    invoke-direct {p0, v0, v1, p2}, Lorg/webrtc/ali/HardwareVideoDecoder;->initDecodeInternal(IILorg/webrtc/ali/VideoDecoder$Callback;)Lorg/webrtc/ali/VideoCodecStatus;

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

    .line 273
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->running:Z

    .line 274
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/webrtc/ali/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v1, "Media encoder release timeout"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->TIMEOUT:Lorg/webrtc/ali/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 288
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    .line 289
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 290
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 292
    :goto_0
    return-object v0

    .line 279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 282
    const-string/jumbo v0, "HardwareVideoDecoder"

    const-string/jumbo v1, "Media encoder release error"

    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 284
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->ERROR:Lorg/webrtc/ali/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 288
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    .line 289
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 290
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    goto :goto_0

    .line 287
    :cond_1
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 288
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    .line 289
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 290
    iget-object v0, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 292
    sget-object v0, Lorg/webrtc/ali/VideoCodecStatus;->OK:Lorg/webrtc/ali/VideoCodecStatus;

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 288
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->callback:Lorg/webrtc/ali/VideoDecoder$Callback;

    .line 289
    iput-object v4, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 290
    iget-object v1, p0, Lorg/webrtc/ali/HardwareVideoDecoder;->frameInfos:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 291
    throw v0
.end method
