.class public final enum Lorg/webrtc/ali/PeerConnection$BundlePolicy;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundlePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/PeerConnection$BundlePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/PeerConnection$BundlePolicy;

.field public static final enum BALANCED:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

.field public static final enum MAXBUNDLE:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

.field public static final enum MAXCOMPAT:Lorg/webrtc/ali/PeerConnection$BundlePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    new-instance v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    const-string/jumbo v1, "BALANCED"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->BALANCED:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    const-string/jumbo v1, "MAXBUNDLE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->MAXBUNDLE:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    new-instance v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    const-string/jumbo v1, "MAXCOMPAT"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/PeerConnection$BundlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->MAXCOMPAT:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    sget-object v1, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->BALANCED:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->MAXBUNDLE:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->MAXCOMPAT:Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$BundlePolicy;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/PeerConnection$BundlePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const-class v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/PeerConnection$BundlePolicy;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/webrtc/ali/PeerConnection$BundlePolicy;->$VALUES:[Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    invoke-virtual {v0}, [Lorg/webrtc/ali/PeerConnection$BundlePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/PeerConnection$BundlePolicy;

    return-object v0
.end method
