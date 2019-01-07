.class Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;
.super Ljava/lang/Object;
.source "AndroidVideoTrackSourceObserver.java"

# interfaces
.implements Lorg/webrtc/ali/VideoCapturer$CapturerObserver;


# instance fields
.field private final nativeSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeSource:J

    .line 20
    return-void
.end method

.method private native nativeCapturerStarted(JZ)V
.end method

.method private native nativeCapturerStopped(J)V
.end method

.method private native nativeOnByteBufferFrameCaptured(J[BIIIIJ)V
.end method

.method private native nativeOnTextureFrameCaptured(JIII[FIJ)V
.end method


# virtual methods
.method public onByteBufferFrameCaptured([BIIIJ)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "timeStamp"    # J

    .prologue
    .line 35
    iget-wide v1, p0, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeSource:J

    array-length v4, p1

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeOnByteBufferFrameCaptured(J[BIIIIJ)V

    .line 37
    return-void
.end method

.method public onCapturerStarted(Z)V
    .locals 2
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeSource:J

    invoke-direct {p0, v0, v1, p1}, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeCapturerStarted(JZ)V

    .line 25
    return-void
.end method

.method public onCapturerStopped()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeSource:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeCapturerStopped(J)V

    .line 30
    return-void
.end method

.method public onTextureFrameCaptured(III[FIJ)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oesTextureId"    # I
    .param p4, "transformMatrix"    # [F
    .param p5, "rotation"    # I
    .param p6, "timestamp"    # J

    .prologue
    .line 42
    iget-wide v1, p0, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeSource:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;->nativeOnTextureFrameCaptured(JIII[FIJ)V

    .line 44
    return-void
.end method
