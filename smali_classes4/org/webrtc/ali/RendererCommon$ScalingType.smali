.class public final enum Lorg/webrtc/ali/RendererCommon$ScalingType;
.super Ljava/lang/Enum;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/RendererCommon$ScalingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_BALANCED:Lorg/webrtc/ali/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_FILL:Lorg/webrtc/ali/RendererCommon$ScalingType;

.field public static final enum SCALE_ASPECT_FIT:Lorg/webrtc/ali/RendererCommon$ScalingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v0, Lorg/webrtc/ali/RendererCommon$ScalingType;

    const-string/jumbo v1, "SCALE_ASPECT_FIT"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/ali/RendererCommon$ScalingType;

    new-instance v0, Lorg/webrtc/ali/RendererCommon$ScalingType;

    const-string/jumbo v1, "SCALE_ASPECT_FILL"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/ali/RendererCommon$ScalingType;

    new-instance v0, Lorg/webrtc/ali/RendererCommon$ScalingType;

    const-string/jumbo v1, "SCALE_ASPECT_BALANCED"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/RendererCommon$ScalingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/ali/RendererCommon$ScalingType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/RendererCommon$ScalingType;

    sget-object v1, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/ali/RendererCommon$ScalingType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/webrtc/ali/RendererCommon$ScalingType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/ali/RendererCommon$ScalingType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->$VALUES:[Lorg/webrtc/ali/RendererCommon$ScalingType;

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
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/RendererCommon$ScalingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    const-class v0, Lorg/webrtc/ali/RendererCommon$ScalingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/RendererCommon$ScalingType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/RendererCommon$ScalingType;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->$VALUES:[Lorg/webrtc/ali/RendererCommon$ScalingType;

    invoke-virtual {v0}, [Lorg/webrtc/ali/RendererCommon$ScalingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/RendererCommon$ScalingType;

    return-object v0
.end method
