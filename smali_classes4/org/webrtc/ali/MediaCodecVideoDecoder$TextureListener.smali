.class Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"

# interfaces
.implements Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextureListener"
.end annotation


# instance fields
.field private bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

.field private final newFrameLock:Ljava/lang/Object;

.field private renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

.field private final surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/SurfaceTextureHelper;)V
    .locals 1
    .param p1, "surfaceTextureHelper"    # Lorg/webrtc/ali/SurfaceTextureHelper;

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    .line 526
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    .line 527
    invoke-virtual {p1, p0}, Lorg/webrtc/ali/SurfaceTextureHelper;->startListening(Lorg/webrtc/ali/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 528
    return-void
.end method


# virtual methods
.method public addBufferToRender(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 531
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    if-eqz v0, :cond_0

    .line 532
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "Unexpected addBufferToRender() called while waiting for a texture."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Waiting for a texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    iput-object p1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 536
    return-void
.end method

.method public dequeueTextureBuffer(I)Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    .locals 6
    .param p1, "timeoutMs"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 566
    iget-object v2, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    monitor-enter v2

    .line 567
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->isWaitingForTexture()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    .line 576
    .local v0, "returnedBuffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    .line 577
    monitor-exit v2

    return-object v0

    .line 572
    .end local v0    # "returnedBuffer":Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;
    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isWaitingForTexture()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 539
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 15
    .param p1, "oesTextureId"    # I
    .param p2, "transformMatrix"    # [F
    .param p3, "timestampNs"    # J

    .prologue
    .line 548
    iget-object v14, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    monitor-enter v14

    .line 549
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    if-eqz v0, :cond_0

    .line 550
    const-string/jumbo v0, "MediaCodecVideoDecoder"

    const-string/jumbo v1, "Unexpected onTextureFrameAvailable() called while already holding a texture."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already holding a texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 555
    :cond_0
    :try_start_1
    new-instance v1, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 556
    invoke-static {v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$100(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    invoke-static {v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$200(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v6

    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 557
    invoke-static {v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$300(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v8

    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    invoke-static {v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$400(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v10

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    invoke-static {v0}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;->access$500(Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;)J

    move-result-wide v12

    sub-long v12, v2, v12

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;-><init>(I[FJJJJJ)V

    iput-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->bufferToRender:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 560
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 561
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 585
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->stopListening()V

    .line 586
    iget-object v1, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->newFrameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->surfaceTextureHelper:Lorg/webrtc/ali/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->returnTextureFrame()V

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/MediaCodecVideoDecoder$TextureListener;->renderedBuffer:Lorg/webrtc/ali/MediaCodecVideoDecoder$DecodedTextureBuffer;

    .line 591
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
