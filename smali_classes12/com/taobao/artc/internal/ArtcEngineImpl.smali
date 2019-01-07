.class public Lcom/taobao/artc/internal/ArtcEngineImpl;
.super Lcom/taobao/artc/api/ArtcEngine;
.source "ArtcEngineImpl.java"


# static fields
.field private static final DEFAULT_PEER_USER_ID_KEY:Ljava/lang/String; = "peer_user_id"

.field private static final MSG_EVT_MAIN_CLOSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ArtcEngineImpl"

.field private static adjBrightnessFlag:I

.field private static mChannelId:Ljava/lang/String;

.field private static mDeviceId:Ljava/lang/String;

.field private static mDeviceInfo:Lcom/taobao/artc/utils/ArtcDeviceInfo;

.field private static mUserId:Ljava/lang/String;

.field private static storeBizId:Ljava/lang/String;

.field private static storeChannelId:Ljava/lang/String;


# instance fields
.field private final SIGNAL_STATUS_CREATE_CHANNEL_SUCCESS:I

.field private final SIGNAL_STATUS_CREATING_CHANNEL:I

.field private final SIGNAL_STATUS_JOINING_CHANNEL:I

.field private final SIGNAL_STATUS_JOIN_CHANNEL_SUCCESS:I

.field private final SIGNAL_STATUS_LEAVE_CHANNEL_SUCCESS:I

.field private final SIGNAL_STATUS_LEAVING_CHANNEL:I

.field private artcAudioEventHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

.field private artcCameraHandle:Lcom/taobao/artc/api/IArtcCameraHandle;

.field private artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

.field private audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

.field private camFpsZeroCount:I

.field private cameraEvtHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

.field private cameraFps:I

.field cameraSwitchHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

.field private chProfile:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

.field public effectEglbase:Lorg/webrtc/EglBase;

.field private enableFaceBeauty:Z

.field private enableVideo_:Z

.field private externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

.field private externalVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

.field private force_mirror:Z

.field private inCall:Z

.field private inRestart:Z

.field private isBeautyAvailable:Z

.field private isFirstStartPreview:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInitedEngine:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private landscape_mode:Z

.field public localEglbase:Lorg/webrtc/EglBase;

.field private localRender:Lorg/webrtc/SurfaceViewRenderer;

.field private mArtcEngineEventProxy:Ljka;

.field private mAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

.field private mContext:Landroid/content/Context;

.field private mNetworkStatusChangeListener:Lanet/channel/status/NetworkStatusHelper$a;

.field private mainThreadHandler:Landroid/os/Handler;

.field private network_good:I

.field private permission_audio_record_granted:Z

.field private permission_camera_granted:Z

.field public remoteEglbase:Lorg/webrtc/EglBase;

.field private remoteRender:Lorg/webrtc/SurfaceViewRenderer;

.field private rootEglBase:Lorg/webrtc/EglBase;

.field private rootEglCtx:Lorg/webrtc/EglBase$Context;

.field private signalStatus:I

.field private final signal_ACCS:Ljava/lang/String;

.field private final signal_LWP:Ljava/lang/String;

.field private speakerHandler:Lcom/taobao/artc/api/IArtcSpeakerHandle;

.field private supportAdjBrightnesss:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private videoCapturer:Lorg/webrtc/VideoCapturer;

.field private videoCapturerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private videoHeight:I

.field private videoSource:Lorg/webrtc/VideoSource;

.field private videoStaticCapabilityHandler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

.field private videoWidth:I

.field private waiter:Ljkc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    sput-object v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    .line 106
    sput-object v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mUserId:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeBizId:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeChannelId:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceId:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    sput v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->adjBrightnessFlag:I

    .line 146
    sput-object v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceInfo:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0}, Lcom/taobao/artc/api/ArtcEngine;-><init>()V

    .line 104
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    .line 107
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraEvtHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 109
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcCameraHandle:Lcom/taobao/artc/api/IArtcCameraHandle;

    .line 112
    new-instance v2, Ljka;

    invoke-direct {v2}, Ljka;-><init>()V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 116
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    .line 117
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    .line 118
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    .line 119
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->waiter:Ljkc;

    .line 121
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 122
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 130
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableFaceBeauty:Z

    .line 137
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedEngine:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFirstStartPreview:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->supportAdjBrightnesss:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    iput-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    .line 147
    const/4 v2, -0x1

    iput v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->network_good:I

    .line 148
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    .line 149
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->landscape_mode:Z

    .line 151
    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->SIGNAL_STATUS_CREATING_CHANNEL:I

    .line 152
    const/4 v2, 0x2

    iput v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->SIGNAL_STATUS_CREATE_CHANNEL_SUCCESS:I

    .line 153
    const/4 v2, 0x5

    iput v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->SIGNAL_STATUS_JOINING_CHANNEL:I

    .line 154
    const/4 v2, 0x6

    iput v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->SIGNAL_STATUS_JOIN_CHANNEL_SUCCESS:I

    .line 155
    const/16 v2, 0xa

    iput v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->SIGNAL_STATUS_LEAVING_CHANNEL:I

    .line 156
    const/16 v2, 0xb

    iput v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->SIGNAL_STATUS_LEAVE_CHANNEL_SUCCESS:I

    .line 157
    iput v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signalStatus:I

    .line 158
    iput v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    .line 160
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .line 161
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 162
    sget-object v2, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_COMMUNICATION:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->chProfile:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 163
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inCall:Z

    .line 164
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inRestart:Z

    .line 165
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoStaticCapabilityHandler:Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .line 166
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->speakerHandler:Lcom/taobao/artc/api/IArtcSpeakerHandle;

    .line 168
    const-string/jumbo v2, "accs"

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signal_ACCS:Ljava/lang/String;

    .line 169
    const-string/jumbo v2, "lwp"

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signal_LWP:Ljava/lang/String;

    .line 171
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_audio_record_granted:Z

    .line 172
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_camera_granted:Z

    .line 191
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 192
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAudioEventHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 193
    new-instance v2, Lcom/taobao/artc/internal/ArtcEngineImpl$1;

    invoke-direct {v2, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$1;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mNetworkStatusChangeListener:Lanet/channel/status/NetworkStatusHelper$a;

    .line 201
    iput-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->force_mirror:Z

    .line 203
    new-instance v2, Lcom/taobao/artc/internal/ArtcEngineImpl$12;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/taobao/artc/internal/ArtcEngineImpl$12;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mainThreadHandler:Landroid/os/Handler;

    .line 216
    new-instance v2, Lcom/taobao/artc/internal/ArtcEngineImpl$23;

    invoke-direct {v2, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$23;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    iput-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraSwitchHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 320
    const-string/jumbo v2, "ArtcEngineImpl"

    const-string/jumbo v3, "Create ArtcEngineImpl"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const-string/jumbo v2, "ArtcEngineImpl"

    invoke-static {v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v2, "init params should not be null"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const-string/jumbo v2, "init should invoke in main thread"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-static {v2, v0}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    .line 326
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/taobao/artc/internal/ArtcGlobal;->context:Landroid/content/Context;

    .line 328
    new-instance v0, Ljkc;

    invoke-direct {v0}, Ljkc;-><init>()V

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->waiter:Ljkc;

    .line 330
    return-void

    :cond_0
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method public static Local2UTC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2026
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2027
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2028
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "gmtTime":Ljava/lang/String;
    return-object v0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/artc/internal/ArtcEngineImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->releaseResourceOnMainThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAudioEventHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/taobao/artc/utils/ArtcDeviceInfo;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceInfo:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/taobao/artc/utils/ArtcDeviceInfo;)Lcom/taobao/artc/utils/ArtcDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/utils/ArtcDeviceInfo;

    .prologue
    .line 98
    sput-object p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceInfo:Lcom/taobao/artc/utils/ArtcDeviceInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/EglBase$Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglCtx:Lorg/webrtc/EglBase$Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/taobao/artc/internal/ArtcEngineImpl;Landroid/content/Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lorg/webrtc/EglBase$Context;
    .param p3, "x3"    # Lorg/webrtc/EglBase$Context;
    .param p4, "x4"    # Lorg/webrtc/EglBase$Context;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeInitEnv(Landroid/content/Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/taobao/artc/internal/ArtcEngineImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->updateArtcConfig()V

    return-void
.end method

.method static synthetic access$1600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcConfig;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/ArtcConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Lcom/taobao/artc/api/ArtcConfig;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeInitialize(Lcom/taobao/artc/api/ArtcConfig;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetCallTimeout(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalAudioProcess;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/ArtcExternalAudioProcess;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeRegisterExternalAudioProcess(Lcom/taobao/artc/api/ArtcExternalAudioProcess;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturerStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeUnInitialize()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljkc;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->waiter:Ljkc;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/taobao/artc/internal/ArtcEngineImpl;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetVideoProfile(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetVideoMirror(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/SurfaceViewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Lorg/webrtc/SurfaceViewRenderer;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetLocalView(Lorg/webrtc/SurfaceViewRenderer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/SurfaceViewRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Lorg/webrtc/SurfaceViewRenderer;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetRemoteView(Lorg/webrtc/SurfaceViewRenderer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFirstStartPreview:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeStartPreview()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/SurfaceViewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    return v0
.end method

.method static synthetic access$3100(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    return v0
.end method

.method static synthetic access$3300(Lcom/taobao/artc/internal/ArtcEngineImpl;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetChannelProfile(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetUserId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/util/ArrayList;I)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetVideoLayout(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetBroadcast(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 98
    sput-object p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeCreateChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 98
    sput-object p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lorg/webrtc/VideoCapturer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeJoinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/VideoCapturer;)Lorg/webrtc/VideoCapturer;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Lorg/webrtc/VideoCapturer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeLeaveChannel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSwapScreen()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeMuteLocalAudioStream(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeMuteRemoteAudioStream(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/taobao/artc/internal/ArtcEngineImpl;ZLjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeMuteRemoteAudioStream2(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeMuteLocalVideoStream(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeMuteRemoteVideoStream(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/taobao/artc/internal/ArtcEngineImpl;F)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # F

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetAudioOutputVolume(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeInvite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->setPreviewMirror(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct/range {p0 .. p6}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeAnswer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->checkFloatRange(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/taobao/artc/internal/ArtcEngineImpl;FFFFFFFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F
    .param p8, "x8"    # F
    .param p9, "x9"    # F

    .prologue
    .line 98
    invoke-direct/range {p0 .. p9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSetFaceBeautyParam(FFFFFFFFF)V

    return-void
.end method

.method static synthetic access$5400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeEnableFaceBeauty(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeKick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeCancelCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5802(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signalStatus:I

    return p1
.end method

.method static synthetic access$5900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/IArtcCameraHandle;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcCameraHandle:Lcom/taobao/artc/api/IArtcCameraHandle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    return-object v0
.end method

.method static synthetic access$6000()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->adjBrightnessFlag:I

    return v0
.end method

.method static synthetic access$6100(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inRestart:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inRestart:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/taobao/artc/internal/ArtcEngineImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativePreferHardwareEncoder(I)V

    return-void
.end method

.method static synthetic access$6300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeBizId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeIsBeautyRuning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_camera_granted:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_audio_record_granted:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    return v0
.end method

.method static synthetic access$6702(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    return p1
.end method

.method static synthetic access$6708(Lcom/taobao/artc/internal/ArtcEngineImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    return v0
.end method

.method static synthetic access$6800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inCall:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inCall:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->chProfile:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraErrorUTCommit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/artc/internal/ArtcEngineImpl;)Lcom/taobao/artc/api/ArtcExternalVideoProcess;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->supportAdjBrightnesss:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private adaptOutputFormat()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoSource:Lorg/webrtc/VideoSource;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoSource:Lorg/webrtc/VideoSource;

    iget v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    iget v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    iget v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/webrtc/VideoSource;->adaptOutputFormat(III)V

    .line 1973
    :cond_0
    return-void
.end method

.method private static artcAPIUTCommit(Ljava/lang/String;)V
    .locals 5
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v0, "statMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 264
    .local v2, "timeUTC":J
    sget-object v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v1, "uid"

    sget-object v4, Lcom/taobao/artc/internal/ArtcEngineImpl;->mUserId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    sget-object v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 269
    const-string/jumbo v1, "did"

    sget-object v4, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_1
    sget-object v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 273
    const-string/jumbo v1, "cid"

    sget-object v4, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    const-string/jumbo v1, "mtp"

    const-string/jumbo v4, "api"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v1, "prm"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "ArtcInfo"

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private cameraErrorUTCommit(Ljava/lang/String;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "statMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 249
    .local v2, "timeUTC":J
    const-string/jumbo v1, "mtp"

    const-string/jumbo v4, "cameraError"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v1, "channelId"

    sget-object v4, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v1, "sdkVersion"

    invoke-virtual {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v1, "info"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v1, "currentTime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v1, "ArtcEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cameraErrorUTCommit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const-string/jumbo v1, "ArtcInfo"

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljkf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private checkFloatRange(FFF)F
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "target"    # F

    .prologue
    .line 2595
    cmpg-float v0, p3, p1

    if-gez v0, :cond_0

    .line 2600
    .end local p1    # "min":F
    :goto_0
    return p1

    .line 2597
    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 2598
    goto :goto_0

    :cond_1
    move p1, p3

    .line 2600
    goto :goto_0
.end method

.method public static createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bizId"    # Ljava/lang/String;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 1153
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "static createChannel, bizId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    const-string/jumbo v0, "static createChannel"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1155
    sput-object p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeBizId:Ljava/lang/String;

    .line 1156
    invoke-static {p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeCreateChannel2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    sput-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeChannelId:Ljava/lang/String;

    return-object v0
.end method

.method private destroyArtcJavaResource()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1874
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v2, "destroyArtcJavaResource"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1877
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 1879
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->releaseResourceOnMainThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFirstStartPreview:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1895
    :cond_1
    return-void

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseResourceOnMainThread, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1882
    const-string/jumbo v1, "ArtcEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "releaseResourceOnMainThread, error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1887
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mainThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1888
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2604
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;J)V

    .line 2605
    return-void
.end method

.method private execute(Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 2608
    invoke-static {p1, p2, p3}, Ljkg;->a(Ljava/lang/Runnable;J)V

    .line 2609
    return-void
.end method

.method private executeGL(Ljki;)V
    .locals 0
    .param p1, "r"    # Ljki;

    .prologue
    .line 2612
    invoke-static {p1}, Ljkg;->a(Ljki;)V

    .line 2613
    return-void
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initArtcJavaResource()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1829
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1830
    const-string/jumbo v3, "ArtcEngineImpl"

    const-string/jumbo v4, "initArtcJavaResource"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1832
    invoke-static {}, Lorg/webrtc/EglBase;->create()Lorg/webrtc/EglBase;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    .line 1833
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v3}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglCtx:Lorg/webrtc/EglBase$Context;

    .line 1835
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v3}, Lcom/taobao/artc/api/ArtcConfig;->videoRawFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v2, "inputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1838
    :try_start_0
    new-instance v3, Lorg/webrtc/FileVideoCapturer;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v4}, Lcom/taobao/artc/api/ArtcConfig;->videoRawFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/webrtc/FileVideoCapturer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :goto_0
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/taobao/artc/internal/ArtcEngineImpl$31;

    invoke-direct {v4, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$31;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    .line 8125
    new-instance v5, Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-direct {v5, v3, v4}, Lcom/taobao/artc/audio/ArtcAudioManager;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 1848
    iput-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 1856
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v4}, Lcom/taobao/artc/api/ArtcConfig;->isPreferBlueTooth()Z

    move-result v4

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 8160
    const-string/jumbo v6, "ArtcAudioManager"

    const-string/jumbo v7, "init"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8161
    iget-boolean v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->b:Z

    if-nez v6, :cond_1

    .line 8166
    iget-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    iput v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->d:I

    .line 8167
    iget-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v6

    iput-boolean v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->e:Z

    .line 8168
    iget-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v6

    iput-boolean v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->f:Z

    .line 8169
    const-string/jumbo v6, "ArtcAudioManager"

    const-string/jumbo v7, "init, saved audiomanager mode:"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const-string/jumbo v9, ", speakeron:"

    aput-object v9, v8, v12

    iget-boolean v9, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->e:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v13

    const/4 v9, 0x3

    const-string/jumbo v10, ", micmute:"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-boolean v10, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->f:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8172
    new-instance v6, Lcom/taobao/artc/audio/ArtcAudioManager$2;

    invoke-direct {v6, v3}, Lcom/taobao/artc/audio/ArtcAudioManager$2;-><init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V

    iput-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8213
    iget-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    iget-object v7, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v6, v7, v11, v13}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v6

    .line 8215
    if-ne v6, v12, :cond_7

    .line 8216
    const-string/jumbo v6, "ArtcAudioManager"

    const-string/jumbo v7, "Audio focus request granted for VOICE_CALL streams"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8228
    :goto_1
    invoke-virtual {v3, v11}, Lcom/taobao/artc/audio/ArtcAudioManager;->b(Z)V

    .line 8481
    iget-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    .line 8233
    invoke-virtual {v3, v6}, Lcom/taobao/artc/audio/ArtcAudioManager;->c(Z)V

    .line 9319
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9322
    new-instance v7, Lcom/taobao/artc/audio/ArtcAudioManager$3;

    invoke-direct {v7, v3}, Lcom/taobao/artc/audio/ArtcAudioManager$3;-><init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V

    iput-object v7, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->k:Landroid/content/BroadcastReceiver;

    .line 9356
    iget-object v7, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->a:Landroid/content/Context;

    iget-object v8, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8239
    iput-boolean v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->n:Z

    .line 8240
    if-eqz v4, :cond_0

    .line 8241
    iput-object v5, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->q:Ljka;

    .line 9366
    iget-object v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v4

    if-nez v4, :cond_8

    .line 9367
    const-string/jumbo v4, "ArtcAudioManager"

    const-string/jumbo v5, "Bluetooth recording is not supported by current system"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8246
    :cond_0
    :goto_2
    iput-boolean v12, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->b:Z

    .line 1857
    :cond_1
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 9437
    const-string/jumbo v4, "auto"

    iput-object v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    .line 1858
    invoke-static {v12}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->setWebRtcBasedAcousticEchoCanceler(Z)V

    .line 1859
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->setAudioEventHandler(Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;)V

    .line 1862
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v3}, Lcom/taobao/artc/api/ArtcConfig;->videoDecodeMode()I

    move-result v3

    if-ne v3, v12, :cond_2

    .line 1863
    invoke-static {}, Lorg/webrtc/MediaCodecVideoDecoder;->disableH264HwCodec()V

    .line 1865
    :cond_2
    const-string/jumbo v3, "ArtcEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initArtcJavaResource done, videoCapturer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1871
    .end local v2    # "inputFile":Ljava/io/File;
    :cond_3
    return-void

    .line 1839
    .restart local v2    # "inputFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1840
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1843
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v3}, Lcom/taobao/artc/api/ArtcConfig;->cameraOutFormat()I

    move-result v0

    .line 1844
    .local v0, "cam_out_fmt":I
    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraEvtHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v5}, Lcom/taobao/artc/api/ArtcConfig;->isPreferFrontCamera()Z

    move-result v5

    .line 8022
    if-ne v0, v13, :cond_6

    .line 8041
    invoke-static {v3}, Lorg/webrtc/Camera2Enumerator;->isSupported(Landroid/content/Context;)Z

    move-result v6

    .line 8022
    if-eqz v6, :cond_6

    .line 8023
    const-string/jumbo v6, "ArtcVideoCapturer"

    const-string/jumbo v7, "Creating capturer using camera2 API."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8024
    new-instance v6, Lorg/webrtc/Camera2Enumerator;

    invoke-direct {v6, v3}, Lorg/webrtc/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v4, v5}, Ljkj;->a(Lorg/webrtc/CameraEnumerator;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Z)Lorg/webrtc/VideoCapturer;

    move-result-object v3

    .line 8029
    :goto_3
    if-nez v3, :cond_5

    .line 8030
    const/4 v3, 0x0

    .line 1844
    :cond_5
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    goto/16 :goto_0

    .line 8026
    :cond_6
    const-string/jumbo v3, "ArtcVideoCapturer"

    const-string/jumbo v6, "Creating capturer using camera1 API."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8027
    new-instance v3, Lorg/webrtc/Camera1Enumerator;

    invoke-direct {v3, v0}, Lorg/webrtc/Camera1Enumerator;-><init>(I)V

    invoke-static {v3, v4, v5}, Ljkj;->a(Lorg/webrtc/CameraEnumerator;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Z)Lorg/webrtc/VideoCapturer;

    move-result-object v3

    goto :goto_3

    .line 8218
    .end local v0    # "cam_out_fmt":I
    :cond_7
    const-string/jumbo v6, "ArtcAudioManager"

    const-string/jumbo v7, "Audio focus request failed"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 9370
    :cond_8
    const-string/jumbo v4, "ArtcAudioManager"

    const-string/jumbo v5, "Bluetooth recording is supported by current system"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9372
    new-instance v4, Lcom/taobao/artc/audio/ArtcAudioManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/taobao/artc/audio/ArtcAudioManager$4;-><init>(Lcom/taobao/artc/audio/ArtcAudioManager;Landroid/os/Looper;)V

    iput-object v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 9393
    :try_start_1
    iget-object v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 9394
    iget-object v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9399
    :goto_4
    new-instance v4, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;

    invoke-direct {v4, v3, v11}, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;-><init>(Lcom/taobao/artc/audio/ArtcAudioManager;B)V

    iput-object v4, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->m:Landroid/content/BroadcastReceiver;

    .line 9400
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9402
    const-string/jumbo v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9403
    const-string/jumbo v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9404
    const-string/jumbo v5, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9405
    iget-object v5, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->a:Landroid/content/Context;

    iget-object v6, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 9396
    :catch_1
    move-exception v4

    const-string/jumbo v4, "ArtcAudioManager"

    const-string/jumbo v5, "startBluetoothSco() failed. no bluetooth device connected."

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private native nativeAnswer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private native nativeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeCancelCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeCreateChannel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCreateChannel2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeEnableFaceBeauty(Z)V
.end method

.method private native nativeEncodeVideoCustomFrame(Ljava/lang/String;I)I
.end method

.method private native nativeInitEnv(Landroid/content/Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;Lorg/webrtc/EglBase$Context;)V
.end method

.method private native nativeInitialize(Lcom/taobao/artc/api/ArtcConfig;)I
.end method

.method private native nativeInitializeVideoCapturer(Landroid/content/Context;Lorg/webrtc/VideoCapturer;JLorg/webrtc/VideoCapturer$CapturerObserver;)V
.end method

.method private native nativeInvite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeIsBeautyRuning()Z
.end method

.method private native nativeIsVideoHardwareEncoderRuning()Z
.end method

.method private native nativeJoinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeKick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeLeaveChannel(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeMuteLocalAudioStream(Z)I
.end method

.method private native nativeMuteLocalVideoStream(Z)I
.end method

.method private native nativeMuteRemoteAudioStream(Z)I
.end method

.method private native nativeMuteRemoteAudioStream2(ZLjava/lang/String;)I
.end method

.method private native nativeMuteRemoteVideoStream(Z)I
.end method

.method private native nativePreferHardwareEncoder(I)V
.end method

.method private native nativeRegisterExternalAudioProcess(Lcom/taobao/artc/api/ArtcExternalAudioProcess;)V
.end method

.method private static native nativeSdkVersion()Ljava/lang/String;
.end method

.method private native nativeSetAudioOutputVolume(F)I
.end method

.method private native nativeSetBroadcast(Ljava/lang/String;I)I
.end method

.method private native nativeSetCallTimeout(I)I
.end method

.method private native nativeSetChannelProfile(IZ)I
.end method

.method private native nativeSetFaceBeautyParam(FFFFFFFFF)V
.end method

.method private native nativeSetLocalView(Lorg/webrtc/SurfaceViewRenderer;)I
.end method

.method private native nativeSetRemoteView(Lorg/webrtc/SurfaceViewRenderer;)I
.end method

.method private native nativeSetUserId(Ljava/lang/String;)I
.end method

.method private native nativeSetVideoLayout(Ljava/util/ArrayList;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/artc/api/ArtcVideoLayout$ArtcVideoRect;",
            ">;I)I"
        }
    .end annotation
.end method

.method private native nativeSetVideoMirror(Z)I
.end method

.method private native nativeSetVideoProfile(IZ)I
.end method

.method private native nativeStartPreview()I
.end method

.method private native nativeSwapScreen()I
.end method

.method private native nativeUnInitialize()I
.end method

.method private onActiveSpeakers([Ljava/lang/String;)V
    .locals 1
    .param p1, "active_speakers"    # [Ljava/lang/String;

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->speakerHandler:Lcom/taobao/artc/api/IArtcSpeakerHandle;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->speakerHandler:Lcom/taobao/artc/api/IArtcSpeakerHandle;

    invoke-interface {v0, p1}, Lcom/taobao/artc/api/IArtcSpeakerHandle;->onActiveSpeakers([Ljava/lang/String;)V

    .line 2476
    :cond_0
    return-void
.end method

.method public static onArtcLog(ILjava/lang/String;)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1953
    invoke-static {p0, p1}, Lcom/taobao/artc/utils/ArtcLog;->onArtcLog(ILjava/lang/String;)V

    .line 1954
    return-void
.end method

.method public static onNetworkThreadReady()V
    .locals 3

    .prologue
    .line 2714
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onNetworkThreadReady"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2715
    return-void
.end method

.method public static onSignalingThreadReady()V
    .locals 3

    .prologue
    .line 2722
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onSignalingThreadReady"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2723
    return-void
.end method

.method public static onWorkerThreadReady()V
    .locals 3

    .prologue
    .line 2718
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "onWorkerThreadReady"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2719
    return-void
.end method

.method private releaseResourceOnMainThread()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 283
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 3250
    const-string/jumbo v1, "ArtcAudioManager"

    const-string/jumbo v2, "close"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3251
    iget-boolean v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->b:Z

    if-eqz v1, :cond_2

    .line 3361
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3362
    iput-object v4, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->k:Landroid/content/BroadcastReceiver;

    .line 3256
    iget-boolean v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->n:Z

    if-eqz v1, :cond_0

    .line 3409
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3410
    iput-object v4, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 3411
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 3412
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3413
    iput-object v4, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->m:Landroid/content/BroadcastReceiver;

    .line 3261
    :cond_0
    iget-boolean v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->e:Z

    invoke-virtual {v0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    .line 3262
    iget-boolean v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->f:Z

    invoke-virtual {v0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->b(Z)V

    .line 3263
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    iget v2, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->d:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 3266
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    iget-object v2, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3267
    iput-object v4, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3268
    const-string/jumbo v1, "ArtcAudioManager"

    const-string/jumbo v2, "Abandoned audio focus for VOICE_CALL streams"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3270
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    if-eqz v1, :cond_1

    .line 3271
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    invoke-virtual {v1}, Ljjz;->a()V

    .line 3272
    iput-object v4, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    .line 3275
    :cond_1
    iput-boolean v5, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->b:Z

    .line 285
    :cond_2
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 286
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "audio manager released"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->release()V

    .line 291
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->release()V

    .line 295
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 297
    :cond_5
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "egl render released"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 301
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localEglbase:Lorg/webrtc/EglBase;

    .line 303
    :cond_6
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 305
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteEglbase:Lorg/webrtc/EglBase;

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_8

    .line 308
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 309
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->effectEglbase:Lorg/webrtc/EglBase;

    .line 311
    :cond_8
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_9

    .line 312
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglCtx:Lorg/webrtc/EglBase$Context;

    .line 313
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->release()V

    .line 314
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    .line 316
    :cond_9
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "egl base released"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method private sendLWP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "channel_id"    # Ljava/lang/String;
    .param p3, "request_uid"    # Ljava/lang/String;
    .param p4, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2621
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "send LWP"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2622
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->getLWPSender()Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2623
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "send LWP, cmd:"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " ch_id:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " rid:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, " datalen:"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2624
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->getLWPSender()Lcom/taobao/artc/lwp/ArtcLWPChannel$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/artc/lwp/ArtcLWPChannel$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2626
    :cond_0
    return-void
.end method

.method public static setAdjBrightnessFlag(I)V
    .locals 3
    .param p0, "flag"    # I

    .prologue
    .line 1957
    sput p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->adjBrightnessFlag:I

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAdjBrightnessFlag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1959
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAdjBrightnessSwitch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1960
    return-void
.end method

.method private setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # [Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 850
    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 854
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    invoke-interface {v0, p1, p2}, Lorg/webrtc/CameraVideoCapturer;->setCameraXParam([Ljava/lang/String;[Ljava/lang/String;)V

    .line 856
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :cond_0
    return-void
.end method

.method private setPreviewMirror(Z)V
    .locals 2
    .param p1, "front_camera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 909
    if-eqz p1, :cond_0

    .line 910
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->force_mirror:Z

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceViewRenderer;->setMirror(Z)V

    .line 922
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->force_mirror:Z

    if-nez v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceViewRenderer;->setMirror(Z)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceViewRenderer;->setMirror(Z)V

    goto :goto_0
.end method

.method private updateArtcConfig()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1907
    sget-object v2, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1908
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v2}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "accs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1910
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v2}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "lwp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1912
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v2}, Lcom/taobao/artc/api/ArtcConfig;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceId:Ljava/lang/String;

    .line 1915
    :cond_0
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    sget-object v3, Lcom/taobao/artc/internal/ArtcEngineImpl;->mDeviceId:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->deviceId:Ljava/lang/String;

    .line 1916
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->model:Ljava/lang/String;

    .line 1917
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v3, v4}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getBuildProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->board:Ljava/lang/String;

    .line 1918
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->osVersion:Ljava/lang/String;

    .line 1919
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->networkType:Ljava/lang/String;

    .line 1920
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1921
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 1922
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1923
    .local v0, "carriers":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1924
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->carriers:Ljava/lang/String;

    .line 1927
    .end local v0    # "carriers":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljkb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/artc/api/ArtcConfig;->ip:Ljava/lang/String;

    .line 1928
    const-string/jumbo v2, "ArtcEngineImpl"

    const-string/jumbo v3, "updateArtcConfig"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "artcConfig"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1929
    return-void
.end method

.method private verifyArtcPermission()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1898
    sget-object v3, Lcom/taobao/artc/api/AConstants$Permission;->MANDATORY:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 1899
    .local v0, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1903
    .end local v0    # "permission":Ljava/lang/String;
    :goto_1
    return v1

    .line 1898
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1903
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private writeFaceModeltoSdcard()V
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    .line 2481
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$35;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$35;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 2592
    return-void
.end method


# virtual methods
.method public answer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1655
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "answer"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "channelId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "callId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "answer"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "role"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1656
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/artc/internal/ArtcEngineImpl;->answer2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1657
    return-void
.end method

.method public answer2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "peerId"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "answer"    # I
    .param p6, "option"    # Ljava/lang/String;
    .param p7, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1661
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "answer2"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "channelId:"

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    const-string/jumbo v3, ", callId:"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", answer:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", role:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "answer, role: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", answer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1663
    const-string/jumbo v0, "param null"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1664
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->isCheckAccsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsConnectd:Z

    if-nez v0, :cond_0

    .line 1666
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    const-string/jumbo v1, "accs is NOT available"

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1669
    :cond_0
    if-ne p5, v5, :cond_1

    .line 1671
    iput-boolean v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inCall:Z

    .line 1673
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1674
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$26;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/artc/internal/ArtcEngineImpl$26;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1681
    :cond_2
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "role"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1628
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "call, channelId\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteUserId\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", role\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/artc/internal/ArtcEngineImpl;->call2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1630
    return-void
.end method

.method public call2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "role"    # I
    .param p4, "option"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1634
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "call2, channelId\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteUserId\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", role\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "call, remoteUserId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",role"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1636
    const-string/jumbo v0, "param null"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1637
    const-string/jumbo v0, "artc not init or create"

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedEngine:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 1638
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->isCheckAccsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsConnectd:Z

    if-nez v0, :cond_0

    .line 1640
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    const-string/jumbo v1, "accs is NOT available"

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1643
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1644
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/artc/internal/ArtcEngineImpl$25;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1651
    :cond_1
    return-void
.end method

.method public cancelCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1797
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancelCall, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1798
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->cancelCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    return-void
.end method

.method public cancelCall2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1803
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancelCall2, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cancelCall, remoteUserId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1805
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1806
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$30;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/taobao/artc/internal/ArtcEngineImpl$30;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1813
    :cond_0
    return-void
.end method

.method public checkCameraLight()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2013
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 2015
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    invoke-interface {v0}, Lorg/webrtc/CameraVideoCapturer;->checkLightEnable()Z

    move-result v1

    .line 2017
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createChannel(Ljava/lang/String;)V
    .locals 3
    .param p1, "bizId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1124
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createChannel, bizId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->createChannel2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    return-void
.end method

.method public createChannel2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bizId"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1130
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createChannel2, bizId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    const-string/jumbo v0, "createChannel"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1138
    sput-object p1, Lcom/taobao/artc/internal/ArtcEngineImpl;->storeBizId:Ljava/lang/String;

    .line 1139
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signalStatus:I

    .line 1140
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$10;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1150
    return-void
.end method

.method public enableCameraLight(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enableCameraLight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1998
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$32;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$32;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 2010
    return-void
.end method

.method public enableFaceBeauty(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "enableFaceBeauty, enable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1715
    iput-boolean p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableFaceBeauty:Z

    .line 1716
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$28;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$28;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1770
    return-void
.end method

.method public encodeVideoCustomFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1993
    const/16 v0, 0x63

    invoke-direct {p0, p1, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeEncodeVideoCustomFrame(Ljava/lang/String;I)I

    .line 1994
    return-void
.end method

.method public getCameraBrightness()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 860
    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 864
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    invoke-interface {v0}, Lorg/webrtc/CameraVideoCapturer;->getBrightness()I

    move-result v1

    .line 866
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/taobao/artc/api/ArtcConfig;)V
    .locals 3
    .param p1, "artcConfig"    # Lcom/taobao/artc/api/ArtcConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 359
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->initialize2(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public initialize2(Lcom/taobao/artc/api/ArtcConfig;Ljava/lang/String;)V
    .locals 5
    .param p1, "artcConfig"    # Lcom/taobao/artc/api/ArtcConfig;
    .param p2, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 370
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "initialize2"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    const-string/jumbo v0, "initialize begin"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 373
    iput v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    .line 374
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedEngine:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    iput-boolean v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inRestart:Z

    .line 376
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    .line 377
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->externalVideoProcess()Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    .line 378
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->externalAudioProcess()Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 379
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->getLocalUserId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mUserId:Ljava/lang/String;

    .line 381
    iput-boolean v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_audio_record_granted:Z

    .line 382
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Ldp;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iput-boolean v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_audio_record_granted:Z

    .line 385
    :cond_0
    iput-boolean v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_camera_granted:Z

    .line 386
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Ldp;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iput-boolean v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->permission_camera_granted:Z

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    const-string/jumbo v1, "accs"

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcConfig;->protocal:Ljava/lang/String;

    .line 393
    sget v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsInit:I

    sget-object v1, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ARTC_ACCS_UNINIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

    invoke-virtual {v1}, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 394
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "will init accs just once"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->isLoadBeautyResource()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->writeFaceModeltoSdcard()V

    .line 409
    :goto_1
    const/16 v0, 0x280

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 410
    const/16 v0, 0x168

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 411
    const/16 v0, 0x14

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    .line 413
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$34;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$34;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraEvtHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 507
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$36;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$36;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 535
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mNetworkStatusChangeListener:Lanet/channel/status/NetworkStatusHelper$a;

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 538
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isAppBackground: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lic;->j()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAppBackground: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lic;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->initArtcJavaResource()V

    .line 544
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$37;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$37;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 582
    :goto_2
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "initialize over"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    const-string/jumbo v0, "initialize end"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 584
    return-void

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lwp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    const-string/jumbo v1, "lwp"

    iput-object v1, v0, Lcom/taobao/artc/api/ArtcConfig;->protocal:Ljava/lang/String;

    goto/16 :goto_0

    .line 405
    :cond_4
    iput-boolean v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    goto/16 :goto_1

    .line 579
    :cond_5
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "init error"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "as artc not deInit"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public initializeVideoCapturer(J)V
    .locals 7
    .param p1, "nativeVideoSource"    # J

    .prologue
    const/4 v4, 0x0

    .line 1935
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1936
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "initializeVideoCapturer error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1947
    :goto_0
    return-void

    .line 1939
    :cond_0
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "initializeVideoCapturer"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "nativeVideoSource"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1940
    new-instance v0, Lorg/webrtc/VideoSource;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/VideoSource;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoSource:Lorg/webrtc/VideoSource;

    .line 1941
    new-instance v6, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoSource:Lorg/webrtc/VideoSource;

    iget-wide v0, v0, Lorg/webrtc/VideoSource;->nativeSource:J

    invoke-direct {v6, v0, v1}, Lorg/webrtc/VideoCapturer$AndroidVideoTrackSourceObserver;-><init>(J)V

    .line 1942
    .local v6, "capturerObserver":Lorg/webrtc/VideoCapturer$CapturerObserver;
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoSource:Lorg/webrtc/VideoSource;

    iget-wide v4, v0, Lorg/webrtc/VideoSource;->nativeSource:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeInitializeVideoCapturer(Landroid/content/Context;Lorg/webrtc/VideoCapturer;JLorg/webrtc/VideoCapturer$CapturerObserver;)V

    .line 1943
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    if-eqz v0, :cond_1

    .line 1944
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalVideoProcess:Lcom/taobao/artc/api/ArtcExternalVideoProcess;

    invoke-virtual {v0, v6}, Lcom/taobao/artc/api/ArtcExternalVideoProcess;->_setCaptureObserver(Lorg/webrtc/VideoCapturer$CapturerObserver;)V

    .line 1946
    :cond_1
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->adaptOutputFormat()V

    goto :goto_0
.end method

.method public invite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1601
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "invite"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1602
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->invite2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    return-void
.end method

.method public invite2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1607
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "invite2"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "userId:"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, ", ext:"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invite, channelId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remoteUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1609
    const-string/jumbo v0, "param null"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1610
    const-string/jumbo v0, "artc not init or create"

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedEngine:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 1611
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->isCheckAccsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsConnectd:Z

    if-nez v0, :cond_0

    .line 1613
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    const-string/jumbo v1, "accs is NOT available"

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1616
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1617
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/taobao/artc/internal/ArtcEngineImpl$24;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1624
    :cond_1
    return-void
.end method

.method public isFaceBeautyAvailable()Z
    .locals 1

    .prologue
    .line 1685
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    return v0
.end method

.method public isFrontFacingCamera()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 1979
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    invoke-interface {v0}, Lorg/webrtc/CameraVideoCapturer;->isFrontFacingCamera()Z

    move-result v1

    .line 1981
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 7432
    iget-object v0, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 1577
    return v0
.end method

.method public isVideoHardwareEncoderRuning()Z
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->nativeIsVideoHardwareEncoderRuning()Z

    move-result v0

    return v0
.end method

.method public joinChannel(Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1162
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "joinChannel, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1163
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->joinChannel2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method public joinChannel2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "extention"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1174
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "joinChannel2, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "joinChannel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->isCheckAccsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsConnectd:Z

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    const-string/jumbo v1, "accs is NOT available"

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_0
    if-eqz p1, :cond_1

    .line 1182
    const/4 v0, 0x5

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signalStatus:I

    .line 1183
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$11;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1194
    :cond_1
    return-void
.end method

.method public kick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1774
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "kick, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1775
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->kick2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    return-void
.end method

.method public kick2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "remoteUserId"    # Ljava/lang/String;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1780
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "kick2, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remoteUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "kick, remoteUserId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1782
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1783
    iput-boolean v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->inCall:Z

    .line 1784
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1785
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$29;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/taobao/artc/internal/ArtcEngineImpl$29;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1793
    :cond_0
    return-void
.end method

.method public leaveChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1202
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "leaveChannel, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method public leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1207
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "leaveChannel2, channelId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/artc/internal/ArtcEngineImpl;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->isCheckAccsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsConnectd:Z

    if-nez v0, :cond_0

    .line 1210
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    const-string/jumbo v1, "accs is NOT available"

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->signalStatus:I

    .line 1214
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$13;

    invoke-direct {v0, p0, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl$13;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1220
    return-void
.end method

.method public muteLocalAudioStream(Z)V
    .locals 5
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1293
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "muteLocalAudio"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "muteLocalAudioStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1295
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$17;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$17;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1301
    return-void
.end method

.method public muteLocalVideoStream(Z)V
    .locals 5
    .param p1, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1328
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1330
    :cond_0
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "muteLocalVideo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "muteLocalVideoStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1332
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$20;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$20;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public muteRemoteAudioStream(Z)V
    .locals 5
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1305
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "muteRemoteAudio"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "muteRemoteAudioStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1307
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$18;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$18;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1313
    return-void
.end method

.method public muteRemoteAudioStream(ZLjava/lang/String;)V
    .locals 5
    .param p1, "muted"    # Z
    .param p2, "userid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1317
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "muteRemoteAudio"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl$19;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1324
    return-void
.end method

.method public muteRemoteVideoStream(Z)V
    .locals 5
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1344
    :cond_0
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "muteRemoteVideo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "muteRemoteVideoStream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$21;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$21;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onArtcEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "extInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    if-nez v0, :cond_0

    .line 2041
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "has not regist IArtcEngineEventHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2466
    :goto_0
    return-void

    .line 2045
    :cond_0
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$33;

    invoke-direct {v0, p0, p2, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$33;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registCameraCallback(Lcom/taobao/artc/api/IArtcCameraHandle;)V
    .locals 0
    .param p1, "cameraHandle"    # Lcom/taobao/artc/api/IArtcCameraHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 872
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcCameraHandle:Lcom/taobao/artc/api/IArtcCameraHandle;

    .line 873
    return-void
.end method

.method public registLogCallback(Lcom/taobao/artc/api/IArtcLogHandle;)V
    .locals 0
    .param p1, "logHandle"    # Lcom/taobao/artc/api/IArtcLogHandle;

    .prologue
    .line 1987
    invoke-static {p1}, Lcom/taobao/artc/utils/ArtcLog;->setArtcLogCallbackHandle(Lcom/taobao/artc/api/IArtcLogHandle;)V

    .line 1988
    return-void
.end method

.method public registUser(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1582
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registUseruserId\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registUser: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1584
    sput-object p1, Lcom/taobao/artc/internal/ArtcEngineImpl;->mUserId:Ljava/lang/String;

    .line 1585
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1588
    return-void
.end method

.method public registerHandler(Lcom/taobao/artc/api/ArtcEngineEventHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/taobao/artc/api/ArtcEngineEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 695
    const-string/jumbo v0, "init params should not be null"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerHandler,  ArtcEngineEventHandler handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mArtcEngineEventProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 5024
    iput-object p1, v0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    .line 701
    :cond_0
    return-void
.end method

.method public registerHandler(Lcom/taobao/artc/api/IArtcEngineEventHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/taobao/artc/api/IArtcEngineEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 679
    const-string/jumbo v0, "init params should not be null"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerHandler,  IArtcEngineEventHandler handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mArtcEngineEventProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 5020
    iput-object p1, v0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    .line 685
    :cond_0
    return-void
.end method

.method public registerSpeakerCallback(Lcom/taobao/artc/api/IArtcSpeakerHandle;)V
    .locals 0
    .param p1, "speakerHandle"    # Lcom/taobao/artc/api/IArtcSpeakerHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 887
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->speakerHandler:Lcom/taobao/artc/api/IArtcSpeakerHandle;

    .line 888
    return-void
.end method

.method public setAudioEventHandler(Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;)V
    .locals 0
    .param p1, "audioEventHandler"    # Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 892
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAudioEventHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 893
    return-void
.end method

.method public setAudioOutputVolume(F)V
    .locals 3
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1356
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setAudioOutputVolume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$22;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$22;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;F)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1363
    return-void
.end method

.method public setBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "rtmp_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1098
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setBroadcast, rtmp: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    const-string/jumbo v0, "setBroadcast"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1100
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$9;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$9;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1118
    return-void
.end method

.method public setCallTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 877
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCallTimeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$40;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$40;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;I)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 884
    return-void
.end method

.method public setCameraBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 838
    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    instance-of v1, v1, Lorg/webrtc/CameraVideoCapturer;

    if-eqz v1, :cond_0

    sget v1, Lcom/taobao/artc/internal/ArtcEngineImpl;->adjBrightnessFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 842
    const-string/jumbo v1, "ArtcEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCameraBrightness: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCameraBrightness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraVideoCapturer;

    .line 845
    .local v0, "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    invoke-interface {v0, p1}, Lorg/webrtc/CameraVideoCapturer;->setBrightness(I)V

    .line 847
    .end local v0    # "cameraVideoCapturer":Lorg/webrtc/CameraVideoCapturer;
    :cond_0
    return-void
.end method

.method public setChannelProfile(Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;Z)V
    .locals 5
    .param p1, "profile"    # Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;
    .param p2, "enableVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1048
    const-string/jumbo v3, "channel profile is not invalid."

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_BROADCAST:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_COMMUNICATION:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ARTC_CHANNEL_PROFILE_CONFERENCE:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v0}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 1051
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->chProfile:Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;

    .line 1052
    iput-boolean p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    .line 1060
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v3, "setChannelProfile: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setChannelProfile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl$6;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/AConstants$ArtcChannelProfile;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1069
    return-void

    :cond_1
    move v0, v1

    .line 1048
    goto :goto_0
.end method

.method public setEnableSpeakerphone(I)V
    .locals 2
    .param p1, "policy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    if-eqz v0, :cond_0

    .line 1376
    packed-switch p1, :pswitch_data_0

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1378
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 6437
    const-string/jumbo v1, "auto"

    iput-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    goto :goto_0

    .line 1381
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    goto :goto_0

    .line 1384
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    goto :goto_0

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnableSpeakerphone(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1367
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setEnableSpeakerphone, enable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEnableSpeakerphone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->audioManager:Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    .line 1372
    :cond_0
    return-void
.end method

.method public setFaceBeautyParam(FFFFFFF)V
    .locals 10
    .param p1, "skinSmooth"    # F
    .param p2, "whiten"    # F
    .param p3, "wholePink"    # F
    .param p4, "shapeHor"    # F
    .param p5, "cheekPink"    # F
    .param p6, "shapeVer"    # F
    .param p7, "shapeEye"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1691
    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isBeautyAvailable:Z

    if-eqz v1, :cond_0

    .line 1692
    const-string/jumbo v1, "ArtcEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBeautyParam, 0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    new-instance v1, Lcom/taobao/artc/internal/ArtcEngineImpl$27;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/taobao/artc/internal/ArtcEngineImpl$27;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;FFFFFFF)V

    invoke-direct {p0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1710
    :cond_0
    return-void
.end method

.method public setLocalView(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 5
    .param p1, "localRender"    # Lorg/webrtc/SurfaceViewRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 926
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLocalView, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    const-string/jumbo v0, "setLocalView"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 928
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 964
    :goto_0
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 933
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "artc not init resource"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_2

    .line 939
    if-nez p1, :cond_4

    .line 940
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setLocalView, release formal render"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->release()V

    .line 942
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 951
    :cond_2
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 952
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 956
    invoke-virtual {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->isFrontFacingCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->setPreviewMirror(Z)V

    .line 958
    :cond_3
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$3;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 944
    :cond_4
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->localRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setLocalView, same render"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRemoteView(Lorg/webrtc/SurfaceViewRenderer;)V
    .locals 5
    .param p1, "remoteRender"    # Lorg/webrtc/SurfaceViewRenderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 968
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setRemoteView, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    const-string/jumbo v0, "setRemoteView"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 970
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 972
    :cond_0
    const-string/jumbo v0, "artc not init resource"

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 973
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_1

    .line 974
    if-nez p1, :cond_3

    .line 975
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setRemoteView, release formal render"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceViewRenderer;->release()V

    .line 977
    iput-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 986
    :cond_1
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    .line 987
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->rootEglBase:Lorg/webrtc/EglBase;

    invoke-virtual {v0}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/webrtc/SurfaceViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    .line 992
    :cond_2
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$4;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/SurfaceViewRenderer;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 979
    :cond_3
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->remoteRender:Lorg/webrtc/SurfaceViewRenderer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setRemoteView, same render"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 4
    .param p1, "userid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1073
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "setUserId: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUserId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0, p1}, Lcom/taobao/artc/api/ArtcConfig;->setLocalUserId(Ljava/lang/String;)V

    .line 1076
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$7;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1082
    return-void
.end method

.method public setVideoLayout(Lcom/taobao/artc/api/ArtcVideoLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/taobao/artc/api/ArtcVideoLayout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-eqz v0, :cond_0

    .line 1087
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$8;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/ArtcVideoLayout;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 1094
    :cond_0
    return-void
.end method

.method public setVideoMirror(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 897
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoMirror, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    iput-boolean p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->force_mirror:Z

    .line 899
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$2;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 906
    return-void
.end method

.method public setVideoProfile(Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V
    .locals 7
    .param p1, "profile"    # Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    .param p2, "landscape"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x280

    const/16 v5, 0x168

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x14

    .line 726
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string/jumbo v3, "artc video profile\'s value is not valid."

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_15FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_180P_10FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_240P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_270P_12FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P2_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_368P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v3, v0}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 741
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_180P_10FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_3

    .line 742
    const/16 v0, 0x140

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 743
    const/16 v0, 0xb4

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 744
    const/16 v0, 0xa

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    .line 781
    :goto_2
    iput-boolean p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->landscape_mode:Z

    .line 783
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v3, "setVideoProfile: "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string/jumbo v1, " landscape:"

    aput-object v1, v4, v2

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVideoProfile, profile:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 785
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl$39;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 729
    goto :goto_1

    .line 745
    :cond_3
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_240P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_4

    .line 746
    const/16 v0, 0x140

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 747
    const/16 v0, 0xf0

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 748
    iput v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto :goto_2

    .line 749
    :cond_4
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_270P_12FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_5

    .line 750
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 751
    const/16 v0, 0x10c

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 752
    const/16 v0, 0xc

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto :goto_2

    .line 753
    :cond_5
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_15FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_6

    .line 754
    iput v6, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 755
    iput v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 756
    const/16 v0, 0xf

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto :goto_2

    .line 757
    :cond_6
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_7

    .line 758
    iput v6, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 759
    iput v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 760
    iput v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto/16 :goto_2

    .line 761
    :cond_7
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P2_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_8

    .line 762
    const/16 v0, 0x120

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 763
    iget v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 764
    iput v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto/16 :goto_2

    .line 765
    :cond_8
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_9

    .line 766
    iput v6, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 767
    iput v5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 768
    const/16 v0, 0x19

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto/16 :goto_2

    .line 769
    :cond_9
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_a

    .line 770
    const/16 v0, 0x500

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 771
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 772
    iput v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto/16 :goto_2

    .line 773
    :cond_a
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_25FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    if-ne p1, v0, :cond_b

    .line 774
    const/16 v0, 0x500

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoWidth:I

    .line 775
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoHeight:I

    .line 776
    const/16 v0, 0x19

    iput v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraFps:I

    goto/16 :goto_2

    .line 778
    :cond_b
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v3, "setChannelProfile, currently unsupported profile: "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public setVideoResolution(Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;Z)V
    .locals 6
    .param p1, "resolution"    # Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;
    .param p2, "landscape"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 803
    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v1, :cond_0

    .line 833
    :goto_0
    return-void

    .line 807
    :cond_0
    const-string/jumbo v4, "artc video profile\'s value is not valid."

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_180P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_270P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_288P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_360P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_368P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_720P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-ne p1, v1, :cond_2

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v4, v1}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 815
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_180P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-ne p1, v1, :cond_3

    .line 816
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_180P_10FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .line 830
    .local v0, "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    :goto_2
    const-string/jumbo v1, "ArtcEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setVideoResolution: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", landscape:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoResolution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0, v0, p2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->setVideoProfile(Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;Z)V

    goto :goto_0

    .end local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    :cond_2
    move v1, v2

    .line 807
    goto :goto_1

    .line 817
    :cond_3
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_270P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-ne p1, v1, :cond_4

    .line 818
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_270P_12FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .restart local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    goto :goto_2

    .line 819
    .end local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    :cond_4
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_360P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-ne p1, v1, :cond_5

    .line 820
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_360P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .restart local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    goto :goto_2

    .line 821
    .end local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    :cond_5
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_368P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-ne p1, v1, :cond_6

    .line 822
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_368P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .restart local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    goto :goto_2

    .line 823
    .end local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    :cond_6
    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ARTC_VIDEO_RESOLUTION_720P:Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;

    if-ne p1, v1, :cond_7

    .line 824
    sget-object v0, Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;->ARTC_VIDEO_PROFILE_720P_20FPS:Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;

    .restart local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    goto :goto_2

    .line 826
    .end local v0    # "profile":Lcom/taobao/artc/api/AConstants$ArtcVideoProfile;
    :cond_7
    const-string/jumbo v1, "ArtcEngineImpl"

    const-string/jumbo v4, "setVideoResolution, currently unsupported resolution: "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/taobao/artc/api/AConstants$ArtcVideoResolutionType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setVideoRotation(ZI)V
    .locals 2
    .param p1, "auto"    # Z
    .param p2, "angle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 796
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    if-nez v0, :cond_0

    .line 797
    new-instance v0, Lcom/taobao/artc/api/ArtcException;

    const-string/jumbo v1, "[sorry]video capturer is not available"

    invoke-direct {v0, v1}, Lcom/taobao/artc/api/ArtcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->videoCapturer:Lorg/webrtc/VideoCapturer;

    check-cast v0, Lorg/webrtc/CameraCapturer;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/CameraCapturer;->setVideoRotation(ZI)V

    .line 800
    return-void
.end method

.method public startPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1002
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "startPreview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->startPreview2(Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method public startPreview2(Ljava/lang/String;)V
    .locals 4
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1008
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "startPreview2"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    const-string/jumbo v0, "startPreview"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1010
    iput v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->camFpsZeroCount:I

    .line 1011
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->verifyArtcPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;->ARTC_EVENT_LCAK_PERMISSION:Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;

    invoke-virtual {v0, v1, v3}, Ljka;->onError(Lcom/taobao/artc/api/AConstants$ArtcErrorEvent;I)V

    goto :goto_0

    .line 1018
    :cond_1
    const-string/jumbo v0, "context is null"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mContext:Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    const-string/jumbo v0, "artc not init resource"

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedResource:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v0, v1}, Ljkh;->a(Ljava/lang/String;Z)V

    .line 1022
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$5;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$5;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1224
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "stopPreview"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->stopPreview2(Ljava/lang/String;)V

    .line 1226
    return-void
.end method

.method public stopPreview2(Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1230
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopPreview2, enableVideo_: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    const-string/jumbo v0, "stopPreview"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1232
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1234
    :cond_0
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$14;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$14;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public swapScreen()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1278
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "swapScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    const-string/jumbo v0, "swapScreen"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1280
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 1289
    :goto_0
    return-void

    .line 1282
    :cond_0
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$16;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$16;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    .prologue
    .line 1253
    const-string/jumbo v0, "switchCamera"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraSwitchHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    invoke-virtual {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 1255
    return-void
.end method

.method public switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 3
    .param p1, "switchEventsHandler"    # Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1258
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "switchCamera ..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    iget-boolean v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableVideo_:Z

    if-nez v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1261
    :cond_0
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$15;

    invoke-direct {v0, p0, p1}, Lcom/taobao/artc/internal/ArtcEngineImpl$15;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unInitialize()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 667
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "unInitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->unInitialize2(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public unInitialize2(Ljava/lang/String;)V
    .locals 7
    .param p1, "option"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 593
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "unInitialize2"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    const-string/jumbo v0, "unInitialize begin"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->isInitedEngine:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->cameraEvtHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 598
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 599
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAudioEventHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 600
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->speakerHandler:Lcom/taobao/artc/api/IArtcSpeakerHandle;

    .line 601
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mNetworkStatusChangeListener:Lanet/channel/status/NetworkStatusHelper$a;

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->b(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 603
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 4020
    iput-object v3, v0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    .line 604
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 4024
    iput-object v3, v0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    .line 606
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    invoke-virtual {v0, v3}, Lcom/taobao/artc/api/ArtcExternalAudioProcess;->setProcessCallback(Ljkd;)V

    .line 608
    iput-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->externalAudioProcess:Lcom/taobao/artc/api/ArtcExternalAudioProcess;

    .line 611
    :cond_0
    new-instance v0, Lcom/taobao/artc/internal/ArtcEngineImpl$38;

    invoke-direct {v0, p0}, Lcom/taobao/artc/internal/ArtcEngineImpl$38;-><init>(Lcom/taobao/artc/internal/ArtcEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->execute(Ljava/lang/Runnable;)V

    .line 650
    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->waiter:Ljkc;

    .line 4039
    iget-object v0, v1, Ljkc;->a:[Ljava/lang/Object;

    aget-object v2, v0, v6

    monitor-enter v2

    .line 4040
    :try_start_0
    iget-object v0, v1, Ljkc;->b:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 4042
    :try_start_1
    iget-object v0, v1, Ljkc;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4047
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v1, Ljkc;->b:[Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v0, v1

    .line 4048
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 651
    invoke-virtual {p0, v6}, Lcom/taobao/artc/internal/ArtcEngineImpl;->enableFaceBeauty(Z)V

    .line 652
    invoke-direct {p0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->destroyArtcJavaResource()V

    .line 654
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "unInitialize2, shutdown threadpool"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    invoke-static {}, Ljkg;->a()V

    .line 660
    :goto_1
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "unInitialize2 done"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    const-string/jumbo v0, "unInitialize done"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 662
    return-void

    .line 4043
    :catch_0
    move-exception v0

    .line 4044
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 4048
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 657
    :cond_2
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "deInit error"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "as artc not init"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public unRegisterHandler()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 710
    const-string/jumbo v0, "ArtcEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegisterHandler, mArtcEngineEventProxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 6020
    iput-object v3, v0, Ljka;->a:Lcom/taobao/artc/api/IArtcEngineEventHandler;

    .line 713
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->mArtcEngineEventProxy:Ljka;

    .line 6024
    iput-object v3, v0, Ljka;->b:Lcom/taobao/artc/api/ArtcEngineEventHandler;

    .line 716
    :cond_0
    return-void
.end method

.method public unregistUser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/artc/api/ArtcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1592
    const-string/jumbo v0, "ArtcEngineImpl"

    const-string/jumbo v1, "unregistUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1593
    const-string/jumbo v0, "unregistUser"

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcAPIUTCommit(Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl;->artcConfig_:Lcom/taobao/artc/api/ArtcConfig;

    invoke-virtual {v0}, Lcom/taobao/artc/api/ArtcConfig;->protocal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "accs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1597
    return-void
.end method
