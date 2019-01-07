.class Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutputBufferInfo"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final index:I

.field public final isKeyFrame:Z

.field public final presentationTimestampUs:J


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;ZJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "isKeyFrame"    # Z
    .param p4, "presentationTimestampUs"    # J

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput p1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;->index:I

    .line 739
    iput-object p2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 740
    iput-boolean p3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;->isKeyFrame:Z

    .line 741
    iput-wide p4, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$OutputBufferInfo;->presentationTimestampUs:J

    .line 742
    return-void
.end method
