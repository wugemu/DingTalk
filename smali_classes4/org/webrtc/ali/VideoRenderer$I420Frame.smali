.class public Lorg/webrtc/ali/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I420Frame"
.end annotation


# instance fields
.field public final height:I

.field private nativeFramePointer:J

.field public rotationDegree:I

.field public final samplingMatrix:[F

.field public textureId:I

.field public final width:I

.field public final yuvFrame:Z

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public final yuvStrides:[I


# direct methods
.method public constructor <init>(IIII[FJ)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotationDegree"    # I
    .param p4, "textureId"    # I
    .param p5, "samplingMatrix"    # [F
    .param p6, "nativeFramePointer"    # J

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    .line 73
    iput p2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    .line 74
    iput-object v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 75
    iput-object v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 76
    iput-object p5, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 77
    iput p4, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 79
    iput p3, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    .line 80
    iput-wide p6, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 81
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rotation degree not multiple of 90: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public constructor <init>(III[FLorg/webrtc/ali/VideoFrame$Buffer;J)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotationDegree"    # I
    .param p4, "samplingMatrix"    # [F
    .param p5, "buffer"    # Lorg/webrtc/ali/VideoFrame$Buffer;
    .param p6, "nativeFramePointer"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    .line 92
    iput p2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    .line 93
    iput p3, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    .line 94
    rem-int/lit8 v2, p3, 0x5a

    if-eqz v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Rotation degree not multiple of 90: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    instance-of v2, p5, Lorg/webrtc/ali/VideoFrame$TextureBuffer;

    if-eqz v2, :cond_1

    move-object v1, p5

    .line 98
    check-cast v1, Lorg/webrtc/ali/VideoFrame$TextureBuffer;

    .line 99
    .local v1, "textureBuffer":Lorg/webrtc/ali/VideoFrame$TextureBuffer;
    iput-boolean v4, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 100
    invoke-interface {v1}, Lorg/webrtc/ali/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v2

    iput v2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    .line 101
    iput-object p4, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 103
    iput-object v3, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 104
    iput-object v3, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 121
    .end local v1    # "textureBuffer":Lorg/webrtc/ali/VideoFrame$TextureBuffer;
    :goto_0
    iput-wide p6, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 122
    return-void

    .line 106
    :cond_1
    invoke-interface {p5}, Lorg/webrtc/ali/VideoFrame$Buffer;->toI420()Lorg/webrtc/ali/VideoFrame$I420Buffer;

    move-result-object v0

    .line 107
    .local v0, "i420Buffer":Lorg/webrtc/ali/VideoFrame$I420Buffer;
    iput-boolean v5, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 108
    new-array v2, v7, [I

    .line 109
    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideY()I

    move-result v3

    aput v3, v2, v4

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    aput v3, v2, v5

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getStrideV()I

    move-result v3

    aput v3, v2, v6

    iput-object v2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 110
    new-array v2, v7, [Ljava/nio/ByteBuffer;

    .line 111
    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 117
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v2

    invoke-static {p4, v2}, Lorg/webrtc/ali/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 119
    iput v4, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->textureId:I

    goto :goto_0
.end method

.method public constructor <init>(III[I[Ljava/nio/ByteBuffer;J)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotationDegree"    # I
    .param p4, "yuvStrides"    # [I
    .param p5, "yuvPlanes"    # [Ljava/nio/ByteBuffer;
    .param p6, "nativeFramePointer"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    .line 51
    iput p2, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    .line 52
    iput-object p4, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 53
    iput-object p5, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 55
    iput p3, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    .line 56
    iput-wide p6, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 57
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rotation degree not multiple of 90: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-static {}, Lorg/webrtc/ali/RendererCommon;->verticalFlipMatrix()[F

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/VideoRenderer$I420Frame;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/webrtc/ali/VideoRenderer$I420Frame;J)J
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/VideoRenderer$I420Frame;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide p1
.end method


# virtual methods
.method public rotatedHeight()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    goto :goto_0
.end method

.method public rotatedWidth()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
