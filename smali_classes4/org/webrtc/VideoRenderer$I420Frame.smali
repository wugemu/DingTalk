.class public Lorg/webrtc/VideoRenderer$I420Frame;
.super Ljava/lang/Object;
.source "VideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoRenderer;
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

.field public textureGoRgb:Z

.field public textureId:I

.field public final width:I

.field public final yuvFrame:Z

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public final yuvStrides:[I


# direct methods
.method public constructor <init>(IIII[FJZ)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rotationDegree"    # I
    .param p4, "textureId"    # I
    .param p5, "samplingMatrix"    # [F
    .param p6, "nativeFramePointer"    # J
    .param p8, "textureGoRgb"    # Z

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 80
    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 81
    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 82
    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 83
    iput-object p5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 84
    iput p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureId:I

    .line 85
    iput-boolean p8, p0, Lorg/webrtc/VideoRenderer$I420Frame;->textureGoRgb:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 87
    iput p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 88
    iput-wide p6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 89
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    .line 90
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

    .line 92
    :cond_0
    return-void
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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    .line 52
    iput p2, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    .line 53
    iput-object p4, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    .line 54
    iput-object p5, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvFrame:Z

    .line 56
    iput p3, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    .line 57
    iput-wide p6, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    .line 58
    rem-int/lit8 v0, p3, 0x5a

    if-eqz v0, :cond_0

    .line 59
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

    .line 66
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->samplingMatrix:[F

    .line 72
    return-void

    .line 66
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/webrtc/VideoRenderer$I420Frame;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/VideoRenderer$I420Frame;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/webrtc/VideoRenderer$I420Frame;J)J
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/VideoRenderer$I420Frame;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->nativeFramePointer:J

    return-wide p1
.end method


# virtual methods
.method public rotatedHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    goto :goto_0
.end method

.method public rotatedWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->rotationDegree:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/VideoRenderer$I420Frame;->yuvStrides:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
