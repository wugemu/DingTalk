.class public final enum Lorg/webrtc/ali/MediaSource$State;
.super Ljava/lang/Enum;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/MediaSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/MediaSource$State;

.field public static final enum ENDED:Lorg/webrtc/ali/MediaSource$State;

.field public static final enum INITIALIZING:Lorg/webrtc/ali/MediaSource$State;

.field public static final enum LIVE:Lorg/webrtc/ali/MediaSource$State;

.field public static final enum MUTED:Lorg/webrtc/ali/MediaSource$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lorg/webrtc/ali/MediaSource$State;

    const-string/jumbo v1, "INITIALIZING"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaSource$State;->INITIALIZING:Lorg/webrtc/ali/MediaSource$State;

    new-instance v0, Lorg/webrtc/ali/MediaSource$State;

    const-string/jumbo v1, "LIVE"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaSource$State;->LIVE:Lorg/webrtc/ali/MediaSource$State;

    new-instance v0, Lorg/webrtc/ali/MediaSource$State;

    const-string/jumbo v1, "ENDED"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaSource$State;->ENDED:Lorg/webrtc/ali/MediaSource$State;

    new-instance v0, Lorg/webrtc/ali/MediaSource$State;

    const-string/jumbo v1, "MUTED"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/ali/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaSource$State;->MUTED:Lorg/webrtc/ali/MediaSource$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/webrtc/ali/MediaSource$State;

    sget-object v1, Lorg/webrtc/ali/MediaSource$State;->INITIALIZING:Lorg/webrtc/ali/MediaSource$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/MediaSource$State;->LIVE:Lorg/webrtc/ali/MediaSource$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/MediaSource$State;->ENDED:Lorg/webrtc/ali/MediaSource$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/MediaSource$State;->MUTED:Lorg/webrtc/ali/MediaSource$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/ali/MediaSource$State;->$VALUES:[Lorg/webrtc/ali/MediaSource$State;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/MediaSource$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lorg/webrtc/ali/MediaSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/MediaSource$State;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/MediaSource$State;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lorg/webrtc/ali/MediaSource$State;->$VALUES:[Lorg/webrtc/ali/MediaSource$State;

    invoke-virtual {v0}, [Lorg/webrtc/ali/MediaSource$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/MediaSource$State;

    return-object v0
.end method
