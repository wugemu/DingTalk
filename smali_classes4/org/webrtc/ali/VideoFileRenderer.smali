.class public Lorg/webrtc/ali/VideoFileRenderer;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Lorg/webrtc/ali/VideoRenderer$Callbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFileRenderer"


# instance fields
.field private eglBase:Lorg/webrtc/ali/EglBase;

.field private final handlerLock:Ljava/lang/Object;

.field private final outputFileHeight:I

.field private final outputFileName:Ljava/lang/String;

.field private final outputFileWidth:I

.field private final outputFrameBuffer:Ljava/nio/ByteBuffer;

.field private final outputFrameSize:I

.field private rawFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final renderThread:Landroid/os/HandlerThread;

.field private final renderThreadHandler:Landroid/os/Handler;

.field private final videoOutFile:Ljava/io/FileOutputStream;

.field private yuvConverter:Lorg/webrtc/ali/YuvConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/webrtc/ali/EglBase$Context;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/lang/String;
    .param p2, "outputFileWidth"    # I
    .param p3, "outputFileHeight"    # I
    .param p4, "sharedContext"    # Lorg/webrtc/ali/EglBase$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->handlerLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->rawFrames:Ljava/util/ArrayList;

    .line 46
    rem-int/lit8 v0, p2, 0x2

    if-eq v0, v1, :cond_0

    rem-int/lit8 v0, p3, 0x2

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Does not support uneven width or height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileName:Ljava/lang/String;

    .line 51
    iput p2, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    .line 52
    iput p3, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    .line 54
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameSize:I

    .line 55
    iget v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    .line 58
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "YUV4MPEG2 C420 W"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " H"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Ip F30:1 A1:1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "VideoFileRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 66
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/VideoFileRenderer$1;

    invoke-direct {v1, p0, p4}, Lorg/webrtc/ali/VideoFileRenderer$1;-><init>(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/EglBase$Context;)V

    invoke-static {v0, v1}, Lorg/webrtc/ali/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/VideoFileRenderer;)Lorg/webrtc/ali/EglBase;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/VideoFileRenderer;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    return-object v0
.end method

.method static synthetic access$002(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/EglBase;)Lorg/webrtc/ali/EglBase;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/VideoFileRenderer;
    .param p1, "x1"    # Lorg/webrtc/ali/EglBase;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/webrtc/ali/VideoFileRenderer;->eglBase:Lorg/webrtc/ali/EglBase;

    return-object p1
.end method

.method static synthetic access$100(Lorg/webrtc/ali/VideoFileRenderer;)Lorg/webrtc/ali/YuvConverter;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/VideoFileRenderer;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    return-object v0
.end method

.method static synthetic access$102(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/YuvConverter;)Lorg/webrtc/ali/YuvConverter;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/VideoFileRenderer;
    .param p1, "x1"    # Lorg/webrtc/ali/YuvConverter;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/webrtc/ali/VideoFileRenderer;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    return-object p1
.end method

.method static synthetic access$200(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/VideoFileRenderer;
    .param p1, "x1"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/webrtc/ali/VideoFileRenderer;->renderFrameOnRenderThread(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/VideoFileRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/VideoFileRenderer;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public static native nativeCreateNativeByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native nativeFreeNativeByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public static native nativeI420Scale(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;II)V
.end method

.method private renderFrameOnRenderThread(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 29
    .param p1, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .prologue
    .line 88
    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotatedHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v23, v3, v4

    .line 90
    .local v23, "frameAspectRatio":F
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->samplingMatrix:[F

    move-object/from16 v0, p1

    iget v4, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    int-to-float v4, v4

    .line 91
    invoke-static {v3, v4}, Lorg/webrtc/ali/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object v27

    .line 92
    .local v27, "rotatedSamplingMatrix":[F
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, v23

    invoke-static {v3, v0, v4}, Lorg/webrtc/ali/RendererCommon;->getLayoutMatrix(ZFF)[F

    move-result-object v24

    .line 94
    .local v24, "layoutMatrix":[F
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v9

    .line 97
    .local v9, "texMatrix":[F
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameSize:I

    invoke-static {v3}, Lorg/webrtc/ali/VideoFileRenderer;->nativeCreateNativeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 98
    .local v21, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    if-nez v3, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->yuvConverter:Lorg/webrtc/ali/YuvConverter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    move-object/from16 v0, p1

    iget v8, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    invoke-virtual/range {v3 .. v9}, Lorg/webrtc/ali/YuvConverter;->convert(Ljava/nio/ByteBuffer;IIII[F)V

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    move/from16 v28, v0

    .line 103
    .local v28, "stride":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    .line 104
    .local v22, "data":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    .line 107
    .local v25, "offset":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    mul-int/2addr v3, v4

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    move/from16 v26, v0

    .local v26, "r":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    move/from16 v0, v26

    if-ge v0, v3, :cond_0

    .line 111
    mul-int v3, v26, v28

    add-int v3, v3, v25

    div-int/lit8 v4, v28, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    move/from16 v26, v0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    move/from16 v0, v26

    if-ge v0, v3, :cond_2

    .line 116
    mul-int v3, v26, v28

    add-int v3, v3, v25

    div-int/lit8 v4, v28, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v28, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 115
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 119
    .end local v22    # "data":[B
    .end local v25    # "offset":I
    .end local v26    # "r":I
    .end local v28    # "stride":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aget-object v10, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x0

    aget v11, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    aget-object v12, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x1

    aget v13, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    aget-object v14, v3, v4

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v4, 0x2

    aget v15, v3, v4

    move-object/from16 v0, p1

    iget v0, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Lorg/webrtc/ali/VideoFileRenderer;->nativeI420Scale(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;II)V

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameSize:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 125
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/webrtc/ali/VideoFileRenderer;->rawFrames:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-static/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 129
    return-void

    .line 128
    .end local v21    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    invoke-static/range {p1 .. p1}, Lorg/webrtc/ali/VideoRenderer;->renderFrameDone(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    .line 129
    throw v3
.end method


# virtual methods
.method public release()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 136
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 137
    .local v1, "cleanupBarrier":Ljava/util/concurrent/CountDownLatch;
    iget-object v4, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v5, Lorg/webrtc/ali/VideoFileRenderer$3;

    invoke-direct {v5, p0, v1}, Lorg/webrtc/ali/VideoFileRenderer$3;-><init>(Lorg/webrtc/ali/VideoFileRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    invoke-static {v1}, Lorg/webrtc/ali/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 148
    :try_start_0
    iget-object v4, p0, Lorg/webrtc/ali/VideoFileRenderer;->rawFrames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 149
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/webrtc/ali/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    const-string/jumbo v6, "FRAME\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    iget v5, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFrameSize:I

    new-array v2, v5, [B

    .line 152
    .local v2, "data":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v5, p0, Lorg/webrtc/ali/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    invoke-static {v0}, Lorg/webrtc/ali/VideoFileRenderer;->nativeFreeNativeByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "VideoFileRenderer"

    const-string/jumbo v5, "Error writing video to disk"

    invoke-static {v4, v5, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/webrtc/ali/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 159
    const-string/jumbo v4, "VideoFileRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Video written to disk as "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Number frames are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/webrtc/ali/VideoFileRenderer;->rawFrames:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and the dimension of the frames are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/webrtc/ali/VideoFileRenderer;->outputFileHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public renderFrame(Lorg/webrtc/ali/VideoRenderer$I420Frame;)V
    .locals 2
    .param p1, "frame"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lorg/webrtc/ali/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/ali/VideoFileRenderer$2;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/ali/VideoFileRenderer$2;-><init>(Lorg/webrtc/ali/VideoFileRenderer;Lorg/webrtc/ali/VideoRenderer$I420Frame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
