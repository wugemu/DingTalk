.class public final enum Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;
.super Ljava/lang/Enum;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

.field public static final enum VIDEO_CODEC_H264:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

.field public static final enum VIDEO_CODEC_VP8:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

.field public static final enum VIDEO_CODEC_VP9:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    const-string/jumbo v1, "VIDEO_CODEC_VP8"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    const-string/jumbo v1, "VIDEO_CODEC_VP9"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP9:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    const-string/jumbo v1, "VIDEO_CODEC_H264"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP8:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP9:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_H264:Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->$VALUES:[Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->$VALUES:[Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    invoke-virtual {v0}, [Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/MediaCodecVideoDecoder$VideoCodecType;

    return-object v0
.end method
