.class public final enum Lorg/webrtc/ali/MediaStreamTrack$MediaType;
.super Ljava/lang/Enum;
.source "MediaStreamTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaStreamTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/MediaStreamTrack$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/MediaStreamTrack$MediaType;

.field public static final enum MEDIA_TYPE_AUDIO:Lorg/webrtc/ali/MediaStreamTrack$MediaType;

.field public static final enum MEDIA_TYPE_VIDEO:Lorg/webrtc/ali/MediaStreamTrack$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    const-string/jumbo v1, "MEDIA_TYPE_AUDIO"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/MediaStreamTrack$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;->MEDIA_TYPE_AUDIO:Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    .line 20
    new-instance v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    const-string/jumbo v1, "MEDIA_TYPE_VIDEO"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/MediaStreamTrack$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;->MEDIA_TYPE_VIDEO:Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    sget-object v1, Lorg/webrtc/ali/MediaStreamTrack$MediaType;->MEDIA_TYPE_AUDIO:Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/MediaStreamTrack$MediaType;->MEDIA_TYPE_VIDEO:Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;->$VALUES:[Lorg/webrtc/ali/MediaStreamTrack$MediaType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/MediaStreamTrack$MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/MediaStreamTrack$MediaType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/webrtc/ali/MediaStreamTrack$MediaType;->$VALUES:[Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    invoke-virtual {v0}, [Lorg/webrtc/ali/MediaStreamTrack$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/MediaStreamTrack$MediaType;

    return-object v0
.end method
