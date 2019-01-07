.class public final enum Lorg/webrtc/ali/PeerConnection$IceTransportsType;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IceTransportsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$IceTransportsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$IceTransportsType;

.field public static final enum ALL:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

.field public static final enum NOHOST:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

.field public static final enum NONE:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

.field public static final enum RELAY:Lorg/webrtc/ali/PeerConnection$IceTransportsType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->NONE:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    const-string/jumbo v1, "RELAY"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->RELAY:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    const-string/jumbo v1, "NOHOST"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->NOHOST:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/ali/PeerConnection$IceTransportsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->ALL:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->NONE:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->RELAY:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->NOHOST:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->ALL:Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->$VALUES:[Lorg/webrtc/ali/PeerConnection$IceTransportsType;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$IceTransportsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$IceTransportsType;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/webrtc/ali/PeerConnection$IceTransportsType;->$VALUES:[Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$IceTransportsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$IceTransportsType;

    return-object v0
.end method
