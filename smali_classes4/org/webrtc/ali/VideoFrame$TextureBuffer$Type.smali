.class public final enum Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;
.super Ljava/lang/Enum;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

.field public static final enum OES:Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

.field public static final enum RGB:Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    const-string/jumbo v1, "OES"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->OES:Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    new-instance v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    const-string/jumbo v1, "RGB"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->RGB:Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    sget-object v1, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->OES:Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->RGB:Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->$VALUES:[Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->$VALUES:[Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    invoke-virtual {v0}, [Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method
