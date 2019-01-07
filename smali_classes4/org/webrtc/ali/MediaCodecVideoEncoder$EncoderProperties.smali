.class public Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderProperties"
.end annotation


# instance fields
.field public final bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public final codecName:Ljava/lang/String;

.field public final colorFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V
    .locals 0
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "colorFormat"    # I
    .param p3, "bitrateAdjustmentType"    # Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    .line 292
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    .line 293
    iput-object p3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$EncoderProperties;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 294
    return-void
.end method
