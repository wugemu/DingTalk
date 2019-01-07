.class public final enum Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RtcpMuxPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

.field public static final enum NEGOTIATE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

.field public static final enum REQUIRE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    new-instance v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    const-string/jumbo v1, "NEGOTIATE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->NEGOTIATE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    const-string/jumbo v1, "REQUIRE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->NEGOTIATE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

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
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    const-class v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$RtcpMuxPolicy;

    return-object v0
.end method
