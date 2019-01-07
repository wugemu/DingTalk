.class final enum Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat$1;
.super Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/ali/HardwareVideoEncoder$ColorFormat;-><init>(Ljava/lang/String;ILorg/webrtc/ali/HardwareVideoEncoder$1;)V

    return-void
.end method


# virtual methods
.method final fillBufferFromI420(Ljava/nio/ByteBuffer;Lorg/webrtc/ali/VideoFrame$I420Buffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "i420"    # Lorg/webrtc/ali/VideoFrame$I420Buffer;

    .prologue
    .line 425
    invoke-interface {p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 426
    invoke-interface {p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 427
    invoke-interface {p2}, Lorg/webrtc/ali/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 428
    return-void
.end method
