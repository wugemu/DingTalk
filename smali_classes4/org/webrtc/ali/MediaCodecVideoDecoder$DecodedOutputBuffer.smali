.class Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodedOutputBuffer"
.end annotation


# instance fields
.field private final decodeTimeMs:J

.field private final endDecodeTimeMs:J

.field private final index:I

.field private final ntpTimeStampMs:J

.field private final offset:I

.field private final presentationTimeStampMs:J

.field private final size:I

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(IIIJJJJJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeStampMs"    # J
    .param p6, "timeStampMs"    # J
    .param p8, "ntpTimeStampMs"    # J
    .param p10, "decodeTime"    # J
    .param p12, "endDecodeTime"    # J

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->index:I

    .line 457
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->offset:I

    .line 458
    iput p3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->size:I

    .line 459
    iput-wide p4, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->presentationTimeStampMs:J

    .line 460
    iput-wide p6, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->timeStampMs:J

    .line 461
    iput-wide p8, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->ntpTimeStampMs:J

    .line 462
    iput-wide p10, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->decodeTimeMs:J

    .line 463
    iput-wide p12, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->endDecodeTimeMs:J

    .line 464
    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->presentationTimeStampMs:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->timeStampMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->ntpTimeStampMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->decodeTimeMs:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .prologue
    .line 453
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->endDecodeTimeMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)I
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .prologue
    .line 453
    iget v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->index:I

    return v0
.end method
