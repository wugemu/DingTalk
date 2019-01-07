.class public Lcom/taobao/artc/api/ArtcExternalVideoProcess;
.super Ljava/lang/Object;
.source "ArtcExternalVideoProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtcExternalVideoProcess"


# instance fields
.field private callback:Ljke;

.field private capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 30
    iput-object v0, p0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->callback:Ljke;

    return-void
.end method


# virtual methods
.method public _setCaptureObserver(Lorg/webrtc/VideoCapturer$CapturerObserver;)V
    .locals 0
    .param p1, "observer"    # Lorg/webrtc/VideoCapturer$CapturerObserver;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    .line 65
    return-void
.end method

.method public onInputVideoFrame(Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;)V
    .locals 17
    .param p1, "frame"    # Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    if-eqz v2, :cond_0

    .line 35
    move-object/from16 v0, p1

    iget v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->textureId:I

    if-lez v2, :cond_2

    .line 36
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->colorspace:Lcom/taobao/artc/api/AConstants$ColorSpace;

    sget-object v3, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_OES:Lcom/taobao/artc/api/AConstants$ColorSpace;

    if-ne v2, v3, :cond_1

    const/4 v7, 0x1

    .line 37
    .local v7, "oes":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->width:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->height:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->textureId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->transformMatrix:[F

    move-object/from16 v0, p1

    iget v9, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->rotationDegree:I

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->timestamp_ns:J

    invoke-interface/range {v3 .. v11}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onTextureFrameCaptured(IIIZ[FIJ)V

    .line 47
    .end local v7    # "oes":Z
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 40
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_3

    .line 41
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->width:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->height:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->rotationDegree:I

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->timestamp_ns:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->colorspace:Lcom/taobao/artc/api/AConstants$ColorSpace;

    invoke-virtual {v2}, Lcom/taobao/artc/api/AConstants$ColorSpace;->ordinal()I

    move-result v16

    invoke-interface/range {v9 .. v16}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onByteBufferFrameCaptured([BIIIJI)V

    goto :goto_1

    .line 43
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->capturerObserver:Lorg/webrtc/VideoCapturer$CapturerObserver;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->width:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->height:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->rotationDegree:I

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->timestamp_ns:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;->colorspace:Lcom/taobao/artc/api/AConstants$ColorSpace;

    invoke-virtual {v2}, Lcom/taobao/artc/api/AConstants$ColorSpace;->ordinal()I

    move-result v16

    invoke-interface/range {v9 .. v16}, Lorg/webrtc/VideoCapturer$CapturerObserver;->onByteBufferFrameCaptured(Ljava/nio/ByteBuffer;IIIJI)V

    goto :goto_1
.end method

.method public onOutputVideoFrame(Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;)I
    .locals 1
    .param p1, "frame"    # Lcom/taobao/artc/api/ArtcExternalVideoProcess$VideoFrame;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->callback:Ljke;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setOutputCallback(Ljke;)V
    .locals 0
    .param p1, "callback"    # Ljke;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->callback:Ljke;

    .line 60
    return-void
.end method
