.class Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeStamps"
.end annotation


# instance fields
.field private final decodeStartTimeMs:J

.field private final ntpTimeStampMs:J

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "decodeStartTimeMs"    # J
    .param p3, "timeStampMs"    # J
    .param p5, "ntpTimeStampMs"    # J

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-wide p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->decodeStartTimeMs:J

    .line 441
    iput-wide p3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->timeStampMs:J

    .line 442
    iput-wide p5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->ntpTimeStampMs:J

    .line 443
    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;

    .prologue
    .line 438
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->decodeStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;

    .prologue
    .line 438
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->timeStampMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;

    .prologue
    .line 438
    iget-wide v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TimeStamps;->ntpTimeStampMs:J

    return-wide v0
.end method
