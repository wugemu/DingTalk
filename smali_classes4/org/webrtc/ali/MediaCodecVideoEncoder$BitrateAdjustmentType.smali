.class public final enum Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
.super Ljava/lang/Enum;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitrateAdjustmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public static final enum NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const-string/jumbo v1, "NO_ADJUSTMENT"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 93
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const-string/jumbo v1, "FRAMERATE_ADJUSTMENT"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 96
    new-instance v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const-string/jumbo v1, "DYNAMIC_ADJUSTMENT"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->DYNAMIC_ADJUSTMENT:Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->$VALUES:[Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->$VALUES:[Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    invoke-virtual {v0}, [Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/MediaCodecVideoEncoder$BitrateAdjustmentType;

    return-object v0
.end method
