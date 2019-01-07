.class public final enum Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TcpCandidatePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

.field public static final enum DISABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

.field public static final enum ENABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->DISABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->DISABLED:Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    const-class v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$TcpCandidatePolicy;

    return-object v0
.end method
