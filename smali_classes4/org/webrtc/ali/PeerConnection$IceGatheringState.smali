.class public final enum Lorg/webrtc/ali/PeerConnection$IceGatheringState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IceGatheringState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$IceGatheringState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$IceGatheringState;

.field public static final enum COMPLETE:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

.field public static final enum GATHERING:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

.field public static final enum NEW:Lorg/webrtc/ali/PeerConnection$IceGatheringState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->NEW:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    const-string/jumbo v1, "GATHERING"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->GATHERING:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/PeerConnection$IceGatheringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->COMPLETE:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->NEW:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->GATHERING:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->COMPLETE:Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->$VALUES:[Lorg/webrtc/ali/PeerConnection$IceGatheringState;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$IceGatheringState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$IceGatheringState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/webrtc/ali/PeerConnection$IceGatheringState;->$VALUES:[Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$IceGatheringState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$IceGatheringState;

    return-object v0
.end method
