.class public Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;
.super Ljava/lang/Object;
.source "VideoCapturer.java"

# interfaces
.implements Lorg/webrtc/VideoCapturer$CapturerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidVideoTrackSourceObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidVideoTrackSourceObserver"


# instance fields
.field private final nativeSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeSource:J

    .line 50
    return-void
.end method

.method private native nativeCapturerStarted(JZ)V
.end method

.method private native nativeCapturerStopped(J)V
.end method

.method private native nativeOnByteBufferFrameCaptured(J[BIIIIJI)V
.end method

.method private native nativeOnDirectByteBufferFrameCaptured(JLjava/nio/ByteBuffer;IIIIJI)V
.end method

.method private native nativeOnTextureFrameCaptured(JIIIZ[FIJ)V
.end method


# virtual methods
.method public onByteBufferFrameCaptured(Ljava/nio/ByteBuffer;IIIJI)V
    .locals 11
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "timeStamp"    # J
    .param p7, "colorspace"    # I

    .prologue
    .line 73
    iget-wide v1, p0, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeSource:J

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    .line 73
    invoke-direct/range {v0 .. v10}, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeOnDirectByteBufferFrameCaptured(JLjava/nio/ByteBuffer;IIIIJI)V

    .line 75
    return-void
.end method

.method public onByteBufferFrameCaptured([BIIIJI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "timeStamp"    # J
    .param p7, "colorspace"    # I

    .prologue
    .line 66
    iget-wide v1, p0, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeSource:J

    array-length v4, p1

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeOnByteBufferFrameCaptured(J[BIIIIJI)V

    .line 68
    return-void
.end method

.method public onCapturerStarted(Z)V
    .locals 2
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeSource:J

    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeCapturerStarted(JZ)V

    .line 55
    return-void
.end method

.method public onCapturerStopped()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeSource:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeCapturerStopped(J)V

    .line 60
    return-void
.end method

.method public onTextureFrameCaptured(IIIZ[FIJ)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "textureId"    # I
    .param p4, "oes"    # Z
    .param p5, "transformMatrix"    # [F
    .param p6, "rotation"    # I
    .param p7, "timestamp"    # J

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeSource:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;->nativeOnTextureFrameCaptured(JIIIZ[FIJ)V

    .line 82
    return-void
.end method
