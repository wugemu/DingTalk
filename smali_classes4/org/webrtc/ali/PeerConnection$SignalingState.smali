.class public final enum Lorg/webrtc/ali/PeerConnection$SignalingState;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignalingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$SignalingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$SignalingState;

.field public static final enum CLOSED:Lorg/webrtc/ali/PeerConnection$SignalingState;

.field public static final enum HAVE_LOCAL_OFFER:Lorg/webrtc/ali/PeerConnection$SignalingState;

.field public static final enum HAVE_LOCAL_PRANSWER:Lorg/webrtc/ali/PeerConnection$SignalingState;

.field public static final enum HAVE_REMOTE_OFFER:Lorg/webrtc/ali/PeerConnection$SignalingState;

.field public static final enum HAVE_REMOTE_PRANSWER:Lorg/webrtc/ali/PeerConnection$SignalingState;

.field public static final enum STABLE:Lorg/webrtc/ali/PeerConnection$SignalingState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    const-string/jumbo v1, "STABLE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->STABLE:Lorg/webrtc/ali/PeerConnection$SignalingState;

    .line 51
    new-instance v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    const-string/jumbo v1, "HAVE_LOCAL_OFFER"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_LOCAL_OFFER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    .line 52
    new-instance v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    const-string/jumbo v1, "HAVE_LOCAL_PRANSWER"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/ali/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_LOCAL_PRANSWER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    .line 53
    new-instance v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    const-string/jumbo v1, "HAVE_REMOTE_OFFER"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/ali/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_REMOTE_OFFER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    .line 54
    new-instance v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    const-string/jumbo v1, "HAVE_REMOTE_PRANSWER"

    invoke-direct {v0, v1, v7}, Lorg/webrtc/ali/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_REMOTE_PRANSWER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    .line 55
    new-instance v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    const-string/jumbo v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$SignalingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->CLOSED:Lorg/webrtc/ali/PeerConnection$SignalingState;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$SignalingState;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$SignalingState;->STABLE:Lorg/webrtc/ali/PeerConnection$SignalingState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_LOCAL_OFFER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_LOCAL_PRANSWER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_REMOTE_OFFER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/webrtc/ali/PeerConnection$SignalingState;->HAVE_REMOTE_PRANSWER:Lorg/webrtc/ali/PeerConnection$SignalingState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/webrtc/ali/PeerConnection$SignalingState;->CLOSED:Lorg/webrtc/ali/PeerConnection$SignalingState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->$VALUES:[Lorg/webrtc/ali/PeerConnection$SignalingState;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$SignalingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$SignalingState;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$SignalingState;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/webrtc/ali/PeerConnection$SignalingState;->$VALUES:[Lorg/webrtc/ali/PeerConnection$SignalingState;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$SignalingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$SignalingState;

    return-object v0
.end method
