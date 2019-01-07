.class Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaCodecProperties"
.end annotation


# instance fields
.field public final bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public final codecPrefix:Ljava/lang/String;

.field public final minSdk:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;)V
    .locals 0
    .param p1, "codecPrefix"    # Ljava/lang/String;
    .param p2, "minSdk"    # I
    .param p3, "bitrateAdjustmentType"    # Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    .line 131
    iput p2, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->minSdk:I

    .line 132
    iput-object p3, p0, Lorg/webrtc/ali/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 133
    return-void
.end method
