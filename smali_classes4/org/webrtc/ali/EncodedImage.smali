.class public Lorg/webrtc/ali/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/EncodedImage$Builder;,
        Lorg/webrtc/ali/EncodedImage$FrameType;
    }
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final captureTimeMs:J

.field public final completeFrame:Z

.field public final encodedHeight:I

.field public final encodedWidth:I

.field public final frameType:Lorg/webrtc/ali/EncodedImage$FrameType;

.field public final qp:Ljava/lang/Integer;

.field public final rotation:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/ali/EncodedImage$FrameType;IZLjava/lang/Integer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "encodedWidth"    # I
    .param p3, "encodedHeight"    # I
    .param p4, "captureTimeMs"    # J
    .param p6, "frameType"    # Lorg/webrtc/ali/EncodedImage$FrameType;
    .param p7, "rotation"    # I
    .param p8, "completeFrame"    # Z
    .param p9, "qp"    # Ljava/lang/Integer;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/webrtc/ali/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 38
    iput p2, p0, Lorg/webrtc/ali/EncodedImage;->encodedWidth:I

    .line 39
    iput p3, p0, Lorg/webrtc/ali/EncodedImage;->encodedHeight:I

    .line 40
    iput-wide p4, p0, Lorg/webrtc/ali/EncodedImage;->captureTimeMs:J

    .line 41
    iput-object p6, p0, Lorg/webrtc/ali/EncodedImage;->frameType:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 42
    iput p7, p0, Lorg/webrtc/ali/EncodedImage;->rotation:I

    .line 43
    iput-boolean p8, p0, Lorg/webrtc/ali/EncodedImage;->completeFrame:Z

    .line 44
    iput-object p9, p0, Lorg/webrtc/ali/EncodedImage;->qp:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/ali/EncodedImage$FrameType;IZLjava/lang/Integer;Lorg/webrtc/ali/EncodedImage$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Lorg/webrtc/ali/EncodedImage$FrameType;
    .param p7, "x5"    # I
    .param p8, "x6"    # Z
    .param p9, "x7"    # Ljava/lang/Integer;
    .param p10, "x8"    # Lorg/webrtc/ali/EncodedImage$1;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p9}, Lorg/webrtc/ali/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/ali/EncodedImage$FrameType;IZLjava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lorg/webrtc/ali/EncodedImage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/webrtc/ali/EncodedImage$Builder;-><init>(Lorg/webrtc/ali/EncodedImage$1;)V

    return-object v0
.end method
