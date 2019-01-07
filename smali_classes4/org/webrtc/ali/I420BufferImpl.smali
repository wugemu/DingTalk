.class Lorg/webrtc/ali/I420BufferImpl;
.super Ljava/lang/Object;
.source "I420BufferImpl.java"

# interfaces
.implements Lorg/webrtc/ali/VideoFrame$I420Buffer;


# instance fields
.field private final height:I

.field private final strideUV:I

.field private final u:Ljava/nio/ByteBuffer;

.field private final v:Ljava/nio/ByteBuffer;

.field private final width:I

.field private final y:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/webrtc/ali/I420BufferImpl;->width:I

    .line 27
    iput p2, p0, Lorg/webrtc/ali/I420BufferImpl;->height:I

    .line 28
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/webrtc/ali/I420BufferImpl;->strideUV:I

    .line 29
    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 30
    .local v0, "halfHeight":I
    mul-int v1, p1, p2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/ali/I420BufferImpl;->y:Ljava/nio/ByteBuffer;

    .line 31
    iget v1, p0, Lorg/webrtc/ali/I420BufferImpl;->strideUV:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/ali/I420BufferImpl;->u:Ljava/nio/ByteBuffer;

    .line 32
    iget v1, p0, Lorg/webrtc/ali/I420BufferImpl;->strideUV:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/ali/I420BufferImpl;->v:Ljava/nio/ByteBuffer;

    .line 33
    return-void
.end method


# virtual methods
.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/webrtc/ali/I420BufferImpl;->u:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/webrtc/ali/I420BufferImpl;->v:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/webrtc/ali/I420BufferImpl;->y:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/webrtc/ali/I420BufferImpl;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/webrtc/ali/I420BufferImpl;->strideUV:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/webrtc/ali/I420BufferImpl;->strideUV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/webrtc/ali/I420BufferImpl;->width:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/webrtc/ali/I420BufferImpl;->width:I

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public retain()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public toI420()Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method
