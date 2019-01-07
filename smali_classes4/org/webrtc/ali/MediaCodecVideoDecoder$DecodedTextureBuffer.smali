.class Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodedTextureBuffer"
.end annotation


# instance fields
.field private final decodeTimeMs:J

.field private final frameDelayMs:J

.field private final ntpTimeStampMs:J

.field private final presentationTimeStampMs:J

.field private final textureID:I

.field private final timeStampMs:J

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>(I[FJJJJJ)V
    .locals 1
    .param p1, "textureID"    # I
    .param p2, "transformMatrix"    # [F
    .param p3, "presentationTimeStampMs"    # J
    .param p5, "timeStampMs"    # J
    .param p7, "ntpTimeStampMs"    # J
    .param p9, "decodeTimeMs"    # J
    .param p11, "frameDelay"    # J

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->textureID:I

    .line 505
    iput-object p2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->transformMatrix:[F

    .line 506
    iput-wide p3, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->presentationTimeStampMs:J

    .line 507
    iput-wide p5, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->timeStampMs:J

    .line 508
    iput-wide p7, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->ntpTimeStampMs:J

    .line 509
    iput-wide p9, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->decodeTimeMs:J

    .line 510
    iput-wide p11, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;->frameDelayMs:J

    .line 511
    return-void
.end method
