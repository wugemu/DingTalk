.class public final enum Lorg/webrtc/ali/PeerConnection$IceConnectionState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IceConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$IceConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum CHECKING:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum CLOSED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum COMPLETED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum CONNECTED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum DISCONNECTED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum FAILED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

.field public static final enum NEW:Lorg/webrtc/ali/PeerConnection$IceConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->NEW:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 34
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "CHECKING"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->CHECKING:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 35
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->CONNECTED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 36
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->COMPLETED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 37
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->FAILED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 38
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "DISCONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->DISCONNECTED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 39
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    const-string/jumbo v1, "CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$IceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->CLOSED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->NEW:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->CHECKING:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->CONNECTED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->COMPLETED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->FAILED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->DISCONNECTED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->CLOSED:Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->$VALUES:[Lorg/webrtc/ali/PeerConnection$IceConnectionState;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$IceConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$IceConnectionState;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/webrtc/ali/PeerConnection$IceConnectionState;->$VALUES:[Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$IceConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$IceConnectionState;

    return-object v0
.end method
