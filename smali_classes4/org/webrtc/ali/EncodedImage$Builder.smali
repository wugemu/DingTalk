.class public Lorg/webrtc/ali/EncodedImage$Builder;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/EncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private captureTimeMs:J

.field private completeFrame:Z

.field private encodedHeight:I

.field private encodedWidth:I

.field private frameType:Lorg/webrtc/ali/EncodedImage$FrameType;

.field private qp:Ljava/lang/Integer;

.field private rotation:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/ali/EncodedImage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/webrtc/ali/EncodedImage$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/webrtc/ali/EncodedImage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncodedImage()Lorg/webrtc/ali/EncodedImage;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    new-instance v0, Lorg/webrtc/ali/EncodedImage;

    iget-object v1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/webrtc/ali/EncodedImage$Builder;->encodedWidth:I

    iget v3, p0, Lorg/webrtc/ali/EncodedImage$Builder;->encodedHeight:I

    iget-wide v4, p0, Lorg/webrtc/ali/EncodedImage$Builder;->captureTimeMs:J

    iget-object v6, p0, Lorg/webrtc/ali/EncodedImage$Builder;->frameType:Lorg/webrtc/ali/EncodedImage$FrameType;

    iget v7, p0, Lorg/webrtc/ali/EncodedImage$Builder;->rotation:I

    iget-boolean v8, p0, Lorg/webrtc/ali/EncodedImage$Builder;->completeFrame:Z

    iget-object v9, p0, Lorg/webrtc/ali/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/ali/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLorg/webrtc/ali/EncodedImage$FrameType;IZLjava/lang/Integer;Lorg/webrtc/ali/EncodedImage$1;)V

    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    .line 65
    return-object p0
.end method

.method public setCaptureTimeMs(J)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 1
    .param p1, "captureTimeMs"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->captureTimeMs:J

    .line 80
    return-object p0
.end method

.method public setCompleteFrame(Z)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "completeFrame"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->completeFrame:Z

    .line 95
    return-object p0
.end method

.method public setEncodedHeight(I)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "encodedHeight"    # I

    .prologue
    .line 74
    iput p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->encodedHeight:I

    .line 75
    return-object p0
.end method

.method public setEncodedWidth(I)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "encodedWidth"    # I

    .prologue
    .line 69
    iput p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->encodedWidth:I

    .line 70
    return-object p0
.end method

.method public setFrameType(Lorg/webrtc/ali/EncodedImage$FrameType;)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "frameType"    # Lorg/webrtc/ali/EncodedImage$FrameType;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->frameType:Lorg/webrtc/ali/EncodedImage$FrameType;

    .line 85
    return-object p0
.end method

.method public setQp(Ljava/lang/Integer;)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "qp"    # Ljava/lang/Integer;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    .line 100
    return-object p0
.end method

.method public setRotation(I)Lorg/webrtc/ali/EncodedImage$Builder;
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 89
    iput p1, p0, Lorg/webrtc/ali/EncodedImage$Builder;->rotation:I

    .line 90
    return-object p0
.end method
