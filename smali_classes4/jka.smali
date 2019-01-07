.class public final Ljka;
.super Lcom/taobao/artc/api/ArtcEngineEventHandler;
.source "ArtcEngineEventProxy.java"


# instance fields
.field public a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

.field public b:Lcom/taobao/artc/api/ArtcEngineEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;-><init>()V

    .line 16
    iput-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    .line 17
    iput-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    return-void
.end method


# virtual methods
.method public final onAnswer2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "answer"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 424
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onAnswer2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onAnswer(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onAnswered2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 405
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onAnswered2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onAnswered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public final onAudioQuality(ISS)V
    .locals 1
    .param p1, "quality"    # I
    .param p2, "delay"    # S
    .param p3, "lost"    # S

    .prologue
    .line 218
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onAudioQuality(ISS)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onAudioQuality(ISS)V

    goto :goto_0
.end method

.method public final onAudioRouteChanged(I)V
    .locals 1
    .param p1, "routing"    # I

    .prologue
    .line 193
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onAudioRouteChanged(I)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onAudioRouteChanged(I)V

    goto :goto_0
.end method

.method public final onBlueToothDeviceDisconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onBlueToothDeviceDisconnected()V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onBlueToothDeviceDisconnected()V

    goto :goto_0
.end method

.method public final onBlueToothDeviceconnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onBlueToothDeviceconnected()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onBlueToothDeviceconnected()V

    goto :goto_0
.end method

.method public final onCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "option"    # Ljava/lang/String;
    .param p6, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onCallTimeout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onCallTimeout()V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onCallTimeout()V

    goto :goto_0
.end method

.method public final onCalled2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "isVideoCall"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 371
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onCalled2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onCalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public final onCameraSwitchDone(Z)V
    .locals 1
    .param p1, "isFrontCamera"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onCameraSwitchDone(Z)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onCameraSwitchDone(Z)V

    goto :goto_0
.end method

.method public final onCanceledCall2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 457
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onCanceledCall2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onCancelCall(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onChannelClosed2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonId"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onChannelClosed2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onChannelClosed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onChannelIdUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onChannelIdUpdated(Ljava/lang/String;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onChannelIdUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onConnectionInterrupted()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onConnectionInterrupted()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onConnectionInterrupted()V

    goto :goto_0
.end method

.method public final onConnectionLost()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onConnectionLost()V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onConnectionLost()V

    goto :goto_0
.end method

.method public final onCreateChannelSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onCreateChannelSuccess(Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onCreateChannelSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V
    .locals 1
    .param p1, "errorEvent"    # Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;
    .param p2, "errorcode"    # I

    .prologue
    .line 177
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    goto :goto_0
.end method

.method public final onFirstLocalVideoFrame(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 293
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onFirstLocalVideoFrame(II)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onFirstLocalVideoFrame(II)V

    goto :goto_0
.end method

.method public final onFirstRemoteVideoFrame(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 306
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onFirstRemoteVideoFrame(II)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onFirstRemoteVideoFrame(II)V

    goto :goto_0
.end method

.method public final onInvited2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 388
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onInvited2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onInvited(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onJoinChannelSuccess(I)V
    .locals 1
    .param p1, "elapsed"    # I

    .prologue
    .line 94
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onJoinChannelSuccess(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onJoinChannelSuccess(I)V

    goto :goto_0
.end method

.method public final onKicked2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onKicked2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onKicked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onLastmileQuality(I)V
    .locals 1
    .param p1, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onLastmileQuality(I)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onLastmileQuality(I)V

    goto :goto_0
.end method

.method public final onLeaveChannel2(Lcom/taobao/artc/api/ArtcStats;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "stats"    # Lcom/taobao/artc/api/ArtcStats;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "extension"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onLeaveChannel2(Lcom/taobao/artc/api/ArtcStats;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onLeaveChannel(Lcom/taobao/artc/api/ArtcStats;)V

    goto :goto_0
.end method

.method public final onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V
    .locals 1
    .param p1, "stats"    # Lcom/taobao/artc/api/LocalVideoStats;

    .prologue
    .line 243
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onLocalVideoStats(Lcom/taobao/artc/api/LocalVideoStats;)V

    goto :goto_0
.end method

.method public final onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V
    .locals 1
    .param p1, "stats"    # Lcom/taobao/artc/api/RemoteVideoStats;

    .prologue
    .line 253
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onRemoteVideoStats(Lcom/taobao/artc/api/RemoteVideoStats;)V

    goto :goto_0
.end method

.method public final onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V
    .locals 1
    .param p1, "stats"    # Lcom/taobao/artc/api/ArtcStats;

    .prologue
    .line 233
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onRtcStats(Lcom/taobao/artc/api/ArtcStats;)V

    goto :goto_0
.end method

.method public final onSignalChannelAvailable()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onSignalChannelAvailable()V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onSignalChannelAvailable()V

    goto :goto_0
.end method

.method public final onUserJoinedChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteUserId"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onUserJoinedChannel(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onUserJoinedChannel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onUserLeftChannel2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onUserLeftChannel2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onUserLeftChannel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onUserOffline(Ljava/lang/String;I)V
    .locals 1
    .param p1, "remoteUserId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 162
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/artc/api/ArtcEngineEventHandler;->onUserOffline(Ljava/lang/String;I)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/taobao/artc/api/IArtcEngineEventHandler;->onUserOffline(Ljava/lang/String;I)V

    goto :goto_0
.end method
