.class public final enum Lorg/webrtc/ali/EncodedImage$FrameType;
.super Ljava/lang/Enum;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/EncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/EncodedImage$FrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/EncodedImage$FrameType;

.field public static final enum EmptyFrame:Lorg/webrtc/ali/EncodedImage$FrameType;

.field public static final enum VideoFrameDelta:Lorg/webrtc/ali/EncodedImage$FrameType;

.field public static final enum VideoFrameKey:Lorg/webrtc/ali/EncodedImage$FrameType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lorg/webrtc/ali/EncodedImage$FrameType;

    const-string/jumbo v1, "EmptyFrame"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/ali/EncodedImage$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/EncodedImage$FrameType;->EmptyFrame:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 22
    new-instance v0, Lorg/webrtc/ali/EncodedImage$FrameType;

    const-string/jumbo v1, "VideoFrameKey"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/ali/EncodedImage$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 23
    new-instance v0, Lorg/webrtc/ali/EncodedImage$FrameType;

    const-string/jumbo v1, "VideoFrameDelta"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/ali/EncodedImage$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameDelta:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/ali/EncodedImage$FrameType;

    sget-object v1, Lorg/webrtc/ali/EncodedImage$FrameType;->EmptyFrame:Lorg/webrtc/ali/EncodedImage$FrameType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameKey:Lorg/webrtc/ali/EncodedImage$FrameType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/ali/EncodedImage$FrameType;->VideoFrameDelta:Lorg/webrtc/ali/EncodedImage$FrameType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/ali/EncodedImage$FrameType;->$VALUES:[Lorg/webrtc/ali/EncodedImage$FrameType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/EncodedImage$FrameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lorg/webrtc/ali/EncodedImage$FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/EncodedImage$FrameType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/EncodedImage$FrameType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/webrtc/ali/EncodedImage$FrameType;->$VALUES:[Lorg/webrtc/ali/EncodedImage$FrameType;

    invoke-virtual {v0}, [Lorg/webrtc/ali/EncodedImage$FrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/EncodedImage$FrameType;

    return-object v0
.end method
