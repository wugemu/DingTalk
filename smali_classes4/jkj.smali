.class public final Ljkj;
.super Ljava/lang/Object;
.source "ArtcVideoCapturer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/webrtc/CameraEnumerator;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Z)Lorg/webrtc/VideoCapturer;
    .locals 11
    .param p0, "enumerator"    # Lorg/webrtc/CameraEnumerator;
    .param p1, "cameraEventHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .param p2, "perferFrontCamera"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-interface {p0}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "deviceNames":[Ljava/lang/String;
    const-string/jumbo v3, "ArtcVideoCapturer"

    const-string/jumbo v5, "Looking for prefered camera."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v1, v3

    .line 49
    .local v0, "deviceName":Ljava/lang/String;
    if-ne p2, v10, :cond_0

    invoke-interface {p0, v0}, Lorg/webrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-nez p2, :cond_3

    .line 50
    invoke-interface {p0, v0}, Lorg/webrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 51
    :cond_1
    const-string/jumbo v6, "ArtcVideoCapturer"

    const-string/jumbo v7, "Creating camera capturer, prefer front:"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-interface {p0, v0, p1}, Lorg/webrtc/CameraEnumerator;->createCapturer(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/webrtc/CameraVideoCapturer;

    move-result-object v2

    .line 54
    .local v2, "videoCapturer":Lorg/webrtc/VideoCapturer;
    if-eqz v2, :cond_3

    .line 72
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "videoCapturer":Lorg/webrtc/VideoCapturer;
    :cond_2
    :goto_1
    return-object v2

    .line 48
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "ArtcVideoCapturer"

    const-string/jumbo v5, "Looking for other cameras."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    array-length v5, v1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v0, v1, v3

    .line 63
    .restart local v0    # "deviceName":Ljava/lang/String;
    invoke-interface {p0, v0}, Lorg/webrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 64
    const-string/jumbo v6, "ArtcVideoCapturer"

    const-string/jumbo v7, "Creating other camera capturer."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-interface {p0, v0, p1}, Lorg/webrtc/CameraEnumerator;->createCapturer(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/webrtc/CameraVideoCapturer;

    move-result-object v2

    .line 67
    .restart local v2    # "videoCapturer":Lorg/webrtc/VideoCapturer;
    if-nez v2, :cond_2

    .line 62
    .end local v2    # "videoCapturer":Lorg/webrtc/VideoCapturer;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 72
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
