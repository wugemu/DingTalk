.class Lorg/webrtc/ali/WrappedNativeI420Buffer;
.super Ljava/lang/Object;
.source "WrappedNativeI420Buffer.java"

# interfaces
.implements Lorg/webrtc/ali/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final nativeBuffer:J

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IJ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dataY"    # Ljava/nio/ByteBuffer;
    .param p4, "strideY"    # I
    .param p5, "dataU"    # Ljava/nio/ByteBuffer;
    .param p6, "strideU"    # I
    .param p7, "dataV"    # Ljava/nio/ByteBuffer;
    .param p8, "strideV"    # I
    .param p9, "nativeBuffer"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->width:I

    .line 32
    iput p2, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->height:I

    .line 33
    iput-object p3, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 34
    iput p4, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->strideY:I

    .line 35
    iput-object p5, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 36
    iput p6, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->strideU:I

    .line 37
    iput-object p7, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 38
    iput p8, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->strideV:I

    .line 39
    iput-wide p9, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->nativeBuffer:J

    .line 40
    return-void
.end method

.method private static native nativeAddRef(J)J
.end method

.method private static native nativeRelease(J)J
.end method


# virtual methods
.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/WrappedNativeI420Buffer;->nativeRelease(J)J

    .line 95
    return-void
.end method

.method public retain()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/webrtc/ali/WrappedNativeI420Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/WrappedNativeI420Buffer;->nativeAddRef(J)J

    .line 90
    return-void
.end method

.method public toI420()Lorg/webrtc/ali/VideoFrame$I420Buffer;
    .locals 0

    .prologue
    .line 84
    return-object p0
.end method
