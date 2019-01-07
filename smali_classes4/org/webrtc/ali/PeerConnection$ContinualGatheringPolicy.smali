.class public final enum Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContinualGatheringPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

.field public static final enum GATHER_CONTINUALLY:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

.field public static final enum GATHER_ONCE:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    const-string/jumbo v1, "GATHER_ONCE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    const-string/jumbo v1, "GATHER_CONTINUALLY"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$ContinualGatheringPolicy;

    return-object v0
.end method
