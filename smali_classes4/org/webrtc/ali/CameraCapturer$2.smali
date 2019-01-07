.class Lorg/webrtc/ali/CameraCapturer$2;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/ali/CameraSession$Events;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/ali/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/webrtc/ali/CameraCapturer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/ali/CameraCapturer;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onByteBufferFrameCaptured(Lorg/webrtc/ali/CameraSession;[BIIIJ)V
    .locals 10
    .param p1, "session"    # Lorg/webrtc/ali/CameraSession;
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I
    .param p6, "timestamp"    # J

    .prologue
    .line 182
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 183
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 185
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "onByteBufferFrameCaptured from another session."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    monitor-exit v8

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1200(Lorg/webrtc/ali/CameraCapturer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onFirstFrameAvailable()V

    .line 190
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/ali/CameraCapturer;->access$1202(Lorg/webrtc/ali/CameraCapturer;Z)Z

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$900(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->addFrame()V

    .line 193
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$600(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-interface/range {v1 .. v7}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onByteBufferFrameCaptured([BIIIJ)V

    .line 194
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraClosed(Lorg/webrtc/ali/CameraSession;)V
    .locals 3
    .param p1, "session"    # Lorg/webrtc/ali/CameraSession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 170
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v2, "onCameraClosed from another session."

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    monitor-exit v1

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraClosed()V

    .line 176
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraDisconnected(Lorg/webrtc/ali/CameraSession;)V
    .locals 3
    .param p1, "session"    # Lorg/webrtc/ali/CameraSession;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 157
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 159
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v2, "onCameraDisconnected from another session."

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    monitor-exit v1

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected()V

    .line 163
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-virtual {v0}, Lorg/webrtc/ali/CameraCapturer;->stopCapture()V

    .line 164
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraError(Lorg/webrtc/ali/CameraSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lorg/webrtc/ali/CameraSession;
    .param p2, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 144
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 146
    const-string/jumbo v0, "CameraCapturer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCameraError from another session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    monitor-exit v1

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-virtual {v0}, Lorg/webrtc/ali/CameraCapturer;->stopCapture()V

    .line 151
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraOpening()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 132
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v2, "onCameraOpening while session was open."

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    monitor-exit v1

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v2}, Lorg/webrtc/ali/CameraCapturer;->access$1400(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onCameraOpening(Ljava/lang/String;)V

    .line 138
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTextureFrameCaptured(Lorg/webrtc/ali/CameraSession;III[FIJ)V
    .locals 9
    .param p1, "session"    # Lorg/webrtc/ali/CameraSession;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "oesTextureId"    # I
    .param p5, "transformMatrix"    # [F
    .param p6, "rotation"    # I
    .param p7, "timestamp"    # J

    .prologue
    .line 200
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$000(Lorg/webrtc/ali/CameraCapturer;)V

    .line 201
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$500(Lorg/webrtc/ali/CameraCapturer;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$800(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraSession;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 203
    const-string/jumbo v0, "CameraCapturer"

    const-string/jumbo v1, "onTextureFrameCaptured from another session."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1000(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/SurfaceTextureHelper;->returnTextureFrame()V

    .line 205
    monitor-exit v8

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1200(Lorg/webrtc/ali/CameraCapturer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$1100(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraEventsHandler;->onFirstFrameAvailable()V

    .line 209
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/webrtc/ali/CameraCapturer;->access$1202(Lorg/webrtc/ali/CameraCapturer;Z)Z

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$900(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/ali/CameraVideoCapturer$CameraStatistics;->addFrame()V

    .line 212
    iget-object v0, p0, Lorg/webrtc/ali/CameraCapturer$2;->this$0:Lorg/webrtc/ali/CameraCapturer;

    invoke-static {v0}, Lorg/webrtc/ali/CameraCapturer;->access$600(Lorg/webrtc/ali/CameraCapturer;)Lorg/webrtc/ali/VideoCapturer$CapturerObserver;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-wide/from16 v6, p7

    invoke-interface/range {v0 .. v7}, Lorg/webrtc/ali/VideoCapturer$CapturerObserver;->onTextureFrameCaptured(III[FIJ)V

    .line 214
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
