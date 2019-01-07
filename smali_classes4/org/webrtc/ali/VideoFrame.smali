.class public Lorg/webrtc/ali/VideoFrame;
.super Ljava/lang/Object;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/VideoFrame$TextureBuffer;,
        Lorg/webrtc/ali/VideoFrame$I420Buffer;,
        Lorg/webrtc/ali/VideoFrame$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

.field private final rotation:I

.field private final timestampNs:J

.field private final transformMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/VideoFrame$Buffer;IJLandroid/graphics/Matrix;)V
    .locals 3
    .param p1, "buffer"    # Lorg/webrtc/ali/VideoFrame$Buffer;
    .param p2, "rotation"    # I
    .param p3, "timestampNs"    # J
    .param p5, "transformMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-nez p5, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transformMatrix not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/webrtc/ali/VideoFrame;->buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

    .line 85
    iput p2, p0, Lorg/webrtc/ali/VideoFrame;->rotation:I

    .line 86
    iput-wide p3, p0, Lorg/webrtc/ali/VideoFrame;->timestampNs:J

    .line 87
    iput-object p5, p0, Lorg/webrtc/ali/VideoFrame;->transformMatrix:Landroid/graphics/Matrix;

    .line 88
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/webrtc/ali/VideoFrame$Buffer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/webrtc/ali/VideoFrame;->buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/webrtc/ali/VideoFrame;->buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/webrtc/ali/VideoFrame;->rotation:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/webrtc/ali/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/webrtc/ali/VideoFrame;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/webrtc/ali/VideoFrame;->buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/webrtc/ali/VideoFrame;->buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$Buffer;->release()V

    .line 137
    return-void
.end method

.method public retain()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/webrtc/ali/VideoFrame;->buffer:Lorg/webrtc/ali/VideoFrame$Buffer;

    invoke-interface {v0}, Lorg/webrtc/ali/VideoFrame$Buffer;->retain()V

    .line 133
    return-void
.end method
