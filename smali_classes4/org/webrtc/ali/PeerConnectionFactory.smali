.class public Lorg/webrtc/ali/PeerConnectionFactory;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/PeerConnectionFactory$Options;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeerConnectionFactory"

.field private static final VIDEO_CAPTURER_THREAD_NAME:Ljava/lang/String; = "VideoCapturerThread"

.field private static applicationContext:Landroid/content/Context;

.field private static volatile nativeLibLoaded:Z

.field private static networkThread:Ljava/lang/Thread;

.field private static signalingThread:Ljava/lang/Thread;

.field private static workerThread:Ljava/lang/Thread;


# instance fields
.field private localEglbase:Lorg/webrtc/ali/EglBase;

.field private final nativeFactory:J

.field private remoteEglbase:Lorg/webrtc/ali/EglBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    sput-boolean v1, Lorg/webrtc/ali/PeerConnectionFactory;->nativeLibLoaded:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/PeerConnectionFactory;-><init>(Lorg/webrtc/ali/PeerConnectionFactory$Options;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/webrtc/ali/PeerConnectionFactory$Options;)V
    .locals 1
    .param p1, "options"    # Lorg/webrtc/ali/PeerConnectionFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0}, Lorg/webrtc/ali/PeerConnectionFactory;-><init>(Lorg/webrtc/ali/PeerConnectionFactory$Options;Lorg/webrtc/ali/VideoEncoderFactory;Lorg/webrtc/ali/VideoDecoderFactory;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/webrtc/ali/PeerConnectionFactory$Options;Lorg/webrtc/ali/VideoEncoderFactory;Lorg/webrtc/ali/VideoDecoderFactory;)V
    .locals 4
    .param p1, "options"    # Lorg/webrtc/ali/PeerConnectionFactory$Options;
    .param p2, "encoderFactory"    # Lorg/webrtc/ali/VideoEncoderFactory;
    .param p3, "decoderFactory"    # Lorg/webrtc/ali/VideoDecoderFactory;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1, p2, p3}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreatePeerConnectionFactory(Lorg/webrtc/ali/PeerConnectionFactory$Options;Lorg/webrtc/ali/VideoEncoderFactory;Lorg/webrtc/ali/VideoDecoderFactory;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    .line 113
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Failed to initialize PeerConnectionFactory!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method public static fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-boolean v0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static initializeAndroidGlobals(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoHwAcceleration"    # Z

    .prologue
    .line 63
    invoke-static {p0}, Lorg/webrtc/ali/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 64
    invoke-static {p0, p1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeInitializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 65
    return-void
.end method

.method public static initializeAndroidGlobals(Ljava/lang/Object;ZZZ)Z
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "initializeAudio"    # Z
    .param p2, "initializeVideo"    # Z
    .param p3, "videoHwAcceleration"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    check-cast p0, Landroid/content/Context;

    .end local p0    # "context":Ljava/lang/Object;
    invoke-static {p0, p3}, Lorg/webrtc/ali/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public static native initializeFieldTrials(Ljava/lang/String;)V
.end method

.method public static native initializeInternalTracer()V
.end method

.method private static native nativeCreateAudioSource(JLorg/webrtc/ali/MediaConstraints;)J
.end method

.method private static native nativeCreateAudioTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeCreateLocalMediaStream(JLjava/lang/String;)J
.end method

.method private static native nativeCreateObserver(Lorg/webrtc/ali/PeerConnection$Observer;)J
.end method

.method private static native nativeCreatePeerConnection(JLorg/webrtc/ali/PeerConnection$RTCConfiguration;Lorg/webrtc/ali/MediaConstraints;J)J
.end method

.method private static native nativeCreatePeerConnectionFactory(Lorg/webrtc/ali/PeerConnectionFactory$Options;Lorg/webrtc/ali/VideoEncoderFactory;Lorg/webrtc/ali/VideoDecoderFactory;)J
.end method

.method private static native nativeCreateVideoSource(JLorg/webrtc/ali/SurfaceTextureHelper;Z)J
.end method

.method private static native nativeCreateVideoTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeFieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeFreeFactory(J)V
.end method

.method public static native nativeInitializeAndroidGlobals(Landroid/content/Context;Z)V
.end method

.method private static native nativeSetVideoHwAccelerationOptions(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method private static native nativeStartAecDump(JII)Z
.end method

.method private static native nativeStopAecDump(J)V
.end method

.method private static native nativeThreadsCallbacks(J)V
.end method

.method private static onNetworkThreadReady()V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/PeerConnectionFactory;->networkThread:Ljava/lang/Thread;

    .line 243
    const-string/jumbo v0, "PeerConnectionFactory"

    const-string/jumbo v1, "onNetworkThreadReady"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private static onSignalingThreadReady()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/PeerConnectionFactory;->signalingThread:Ljava/lang/Thread;

    .line 253
    const-string/jumbo v0, "PeerConnectionFactory"

    const-string/jumbo v1, "onSignalingThreadReady"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private static onWorkerThreadReady()V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/PeerConnectionFactory;->workerThread:Ljava/lang/Thread;

    .line 248
    const-string/jumbo v0, "PeerConnectionFactory"

    const-string/jumbo v1, "onWorkerThreadReady"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private static printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 6
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 224
    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 226
    .local v1, "stackTraces":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 227
    const-string/jumbo v2, "PeerConnectionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " stacks trace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 229
    .local v0, "stackTrace":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "PeerConnectionFactory"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "stackTrace":Ljava/lang/StackTraceElement;
    .end local v1    # "stackTraces":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static printStackTraces()V
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lorg/webrtc/ali/PeerConnectionFactory;->networkThread:Ljava/lang/Thread;

    const-string/jumbo v1, "Network thread"

    invoke-static {v0, v1}, Lorg/webrtc/ali/PeerConnectionFactory;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lorg/webrtc/ali/PeerConnectionFactory;->workerThread:Ljava/lang/Thread;

    const-string/jumbo v1, "Worker thread"

    invoke-static {v0, v1}, Lorg/webrtc/ali/PeerConnectionFactory;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lorg/webrtc/ali/PeerConnectionFactory;->signalingThread:Ljava/lang/Thread;

    const-string/jumbo v1, "Signaling thread"

    invoke-static {v0, v1}, Lorg/webrtc/ali/PeerConnectionFactory;->printStackTrace(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static native shutdownInternalTracer()V
.end method

.method public static native startInternalTracingCapture(Ljava/lang/String;)Z
.end method

.method public static native stopInternalTracingCapture()V
.end method


# virtual methods
.method public createAudioSource(Lorg/webrtc/ali/MediaConstraints;)Lorg/webrtc/ali/AudioSource;
    .locals 4
    .param p1, "constraints"    # Lorg/webrtc/ali/MediaConstraints;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    new-instance v0, Lorg/webrtc/ali/AudioSource;

    iget-wide v2, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v2, v3, p1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreateAudioSource(JLorg/webrtc/ali/MediaConstraints;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/ali/AudioSource;-><init>(J)V

    return-object v0
.end method

.method public createAudioTrack(Ljava/lang/String;Lorg/webrtc/ali/AudioSource;)Lorg/webrtc/ali/AudioTrack;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/webrtc/ali/AudioSource;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    new-instance v0, Lorg/webrtc/ali/AudioTrack;

    iget-wide v2, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    iget-wide v4, p2, Lorg/webrtc/ali/AudioSource;->nativeSource:J

    invoke-static {v2, v3, p1, v4, v5}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreateAudioTrack(JLjava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/ali/AudioTrack;-><init>(J)V

    return-object v0
.end method

.method public createLocalMediaStream(Ljava/lang/String;)Lorg/webrtc/ali/MediaStream;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 139
    new-instance v0, Lorg/webrtc/ali/MediaStream;

    iget-wide v2, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v2, v3, p1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreateLocalMediaStream(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/ali/MediaStream;-><init>(J)V

    return-object v0
.end method

.method public createPeerConnection(Ljava/util/List;Lorg/webrtc/ali/MediaConstraints;Lorg/webrtc/ali/PeerConnection$Observer;)Lorg/webrtc/ali/PeerConnection;
    .locals 2
    .param p2, "constraints"    # Lorg/webrtc/ali/MediaConstraints;
    .param p3, "observer"    # Lorg/webrtc/ali/PeerConnection$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/ali/PeerConnection$IceServer;",
            ">;",
            "Lorg/webrtc/ali/MediaConstraints;",
            "Lorg/webrtc/ali/PeerConnection$Observer;",
            ")",
            "Lorg/webrtc/ali/PeerConnection;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    .local p1, "iceServers":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/ali/PeerConnection$IceServer;>;"
    new-instance v0, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;

    invoke-direct {v0, p1}, Lorg/webrtc/ali/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 135
    .local v0, "rtcConfig":Lorg/webrtc/ali/PeerConnection$RTCConfiguration;
    invoke-virtual {p0, v0, p2, p3}, Lorg/webrtc/ali/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/ali/PeerConnection$RTCConfiguration;Lorg/webrtc/ali/MediaConstraints;Lorg/webrtc/ali/PeerConnection$Observer;)Lorg/webrtc/ali/PeerConnection;

    move-result-object v1

    return-object v1
.end method

.method public createPeerConnection(Lorg/webrtc/ali/PeerConnection$RTCConfiguration;Lorg/webrtc/ali/MediaConstraints;Lorg/webrtc/ali/PeerConnection$Observer;)Lorg/webrtc/ali/PeerConnection;
    .locals 12
    .param p1, "rtcConfig"    # Lorg/webrtc/ali/PeerConnection$RTCConfiguration;
    .param p2, "constraints"    # Lorg/webrtc/ali/MediaConstraints;
    .param p3, "observer"    # Lorg/webrtc/ali/PeerConnection$Observer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 120
    invoke-static {p3}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreateObserver(Lorg/webrtc/ali/PeerConnection$Observer;)J

    move-result-wide v4

    .line 121
    .local v4, "nativeObserver":J
    cmp-long v0, v4, v10

    if-nez v0, :cond_0

    move-object v0, v8

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    move-object v2, p1

    move-object v3, p2

    .line 125
    invoke-static/range {v0 .. v5}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreatePeerConnection(JLorg/webrtc/ali/PeerConnection$RTCConfiguration;Lorg/webrtc/ali/MediaConstraints;J)J

    move-result-wide v6

    .line 126
    .local v6, "nativePeerConnection":J
    cmp-long v0, v6, v10

    if-nez v0, :cond_1

    move-object v0, v8

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lorg/webrtc/ali/PeerConnection;

    invoke-direct {v0, v6, v7, v4, v5}, Lorg/webrtc/ali/PeerConnection;-><init>(JJ)V

    goto :goto_0
.end method

.method public createVideoSource(Lorg/webrtc/ali/VideoCapturer;)Lorg/webrtc/ali/VideoSource;
    .locals 8
    .param p1, "capturer"    # Lorg/webrtc/ali/VideoCapturer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    iget-object v5, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    if-nez v5, :cond_0

    const/4 v1, 0x0

    .line 145
    .local v1, "eglContext":Lorg/webrtc/ali/EglBase$Context;
    :goto_0
    const-string/jumbo v5, "VideoCapturerThread"

    .line 146
    invoke-static {v5, v1}, Lorg/webrtc/ali/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/ali/EglBase$Context;)Lorg/webrtc/ali/SurfaceTextureHelper;

    move-result-object v4

    .line 147
    .local v4, "surfaceTextureHelper":Lorg/webrtc/ali/SurfaceTextureHelper;
    iget-wide v6, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    .line 148
    invoke-interface {p1}, Lorg/webrtc/ali/VideoCapturer;->isScreencast()Z

    move-result v5

    invoke-static {v6, v7, v4, v5}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreateVideoSource(JLorg/webrtc/ali/SurfaceTextureHelper;Z)J

    move-result-wide v2

    .line 149
    .local v2, "nativeAndroidVideoTrackSource":J
    new-instance v0, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;

    invoke-direct {v0, v2, v3}, Lorg/webrtc/ali/AndroidVideoTrackSourceObserver;-><init>(J)V

    .line 152
    .local v0, "capturerObserver":Lorg/webrtc/ali/VideoCapturer$CapturerObserver;
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 151
    invoke-interface {p1, v4, v5, v0}, Lorg/webrtc/ali/VideoCapturer;->initialize(Lorg/webrtc/ali/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/ali/VideoCapturer$CapturerObserver;)V

    .line 153
    new-instance v5, Lorg/webrtc/ali/VideoSource;

    invoke-direct {v5, v2, v3}, Lorg/webrtc/ali/VideoSource;-><init>(J)V

    return-object v5

    .line 143
    .end local v0    # "capturerObserver":Lorg/webrtc/ali/VideoCapturer$CapturerObserver;
    .end local v1    # "eglContext":Lorg/webrtc/ali/EglBase$Context;
    .end local v2    # "nativeAndroidVideoTrackSource":J
    .end local v4    # "surfaceTextureHelper":Lorg/webrtc/ali/SurfaceTextureHelper;
    :cond_0
    iget-object v5, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    .line 144
    invoke-virtual {v5}, Lorg/webrtc/ali/EglBase;->getEglBaseContext()Lorg/webrtc/ali/EglBase$Context;

    move-result-object v1

    goto :goto_0
.end method

.method public createVideoTrack(Ljava/lang/String;Lorg/webrtc/ali/VideoSource;)Lorg/webrtc/ali/VideoTrack;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/webrtc/ali/VideoSource;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 157
    new-instance v0, Lorg/webrtc/ali/VideoTrack;

    iget-wide v2, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    iget-wide v4, p2, Lorg/webrtc/ali/VideoSource;->nativeSource:J

    invoke-static {v2, v3, p1, v4, v5}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeCreateVideoTrack(JLjava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/ali/VideoTrack;-><init>(J)V

    return-object v0
.end method

.method public dispose()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFreeFactory(J)V

    .line 210
    sput-object v2, Lorg/webrtc/ali/PeerConnectionFactory;->networkThread:Ljava/lang/Thread;

    .line 211
    sput-object v2, Lorg/webrtc/ali/PeerConnectionFactory;->workerThread:Ljava/lang/Thread;

    .line 212
    sput-object v2, Lorg/webrtc/ali/PeerConnectionFactory;->signalingThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/ali/EglBase;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 217
    :cond_1
    return-void
.end method

.method public native nativeSetOptions(JLorg/webrtc/ali/PeerConnectionFactory$Options;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setOptions(Lorg/webrtc/ali/PeerConnectionFactory$Options;)V
    .locals 2
    .param p1, "options"    # Lorg/webrtc/ali/PeerConnectionFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeSetOptions(JLorg/webrtc/ali/PeerConnectionFactory$Options;)V

    .line 184
    return-void
.end method

.method public setVideoHwAccelerationOptions(Lorg/webrtc/ali/EglBase$Context;Lorg/webrtc/ali/EglBase$Context;)V
    .locals 4
    .param p1, "localEglContext"    # Lorg/webrtc/ali/EglBase$Context;
    .param p2, "remoteEglContext"    # Lorg/webrtc/ali/EglBase$Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    if-eqz v0, :cond_0

    .line 195
    const-string/jumbo v0, "PeerConnectionFactory"

    const-string/jumbo v1, "Egl context already set."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/ali/EglBase;

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "PeerConnectionFactory"

    const-string/jumbo v1, "Egl context already set."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/ali/EglBase;->release()V

    .line 202
    :cond_1
    invoke-static {p1}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    .line 203
    invoke-static {p2}, Lorg/webrtc/ali/EglBase;->create(Lorg/webrtc/ali/EglBase$Context;)Lorg/webrtc/ali/EglBase;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/ali/EglBase;

    .line 204
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    iget-object v2, p0, Lorg/webrtc/ali/PeerConnectionFactory;->localEglbase:Lorg/webrtc/ali/EglBase;

    .line 205
    invoke-virtual {v2}, Lorg/webrtc/ali/EglBase;->getEglBaseContext()Lorg/webrtc/ali/EglBase$Context;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/ali/PeerConnectionFactory;->remoteEglbase:Lorg/webrtc/ali/EglBase;

    invoke-virtual {v3}, Lorg/webrtc/ali/EglBase;->getEglBaseContext()Lorg/webrtc/ali/EglBase$Context;

    move-result-object v3

    .line 204
    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeSetVideoHwAccelerationOptions(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public startAecDump(II)Z
    .locals 2
    .param p1, "file_descriptor"    # I
    .param p2, "filesize_limit_bytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1, p1, p2}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeStartAecDump(JII)Z

    move-result v0

    return v0
.end method

.method public stopAecDump()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeStopAecDump(J)V

    .line 179
    return-void
.end method

.method public threadsCallbacks()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/webrtc/ali/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/PeerConnectionFactory;->nativeThreadsCallbacks(J)V

    .line 221
    return-void
.end method
