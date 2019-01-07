.class public Lcom/taobao/taolive/TaoLive;
.super Ljava/lang/Object;
.source "TaoLive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/TaoLive$StatisticThread;,
        Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;,
        Lcom/taobao/taolive/TaoLive$OnInfoListener;,
        Lcom/taobao/taolive/TaoLive$OnErrorListener;,
        Lcom/taobao/taolive/TaoLive$OnPreparedListener;,
        Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;,
        Lcom/taobao/taolive/TaoLive$EventHandler;,
        Lcom/taobao/taolive/TaoLive$TaoLiveConfig;,
        Lcom/taobao/taolive/TaoLive$MediaType;,
        Lcom/taobao/taolive/TaoLive$DataDIR;
    }
.end annotation


# static fields
.field public static final FORCE_CLOSE_CAMERA:I = 0x58

.field private static final H264_HW_SPECIAL_MODELS:[Ljava/lang/String;

.field public static final HW_ENCODER_CHANGE_TO_SW:I = 0x32

.field public static final HW_VIDEO_DEQUEUE_INPUT_TIMEOUT:I = 0xc

.field public static final HW_VIDEO_DEQUEUE_OUTPUT_TIMEOUT:I = 0xd

.field public static final HW_VIDEO_DROP_FRAME:I = 0x3c

.field public static final HW_VIDEO_ENCODER_BPS_TOO_LOW:I = 0xe

.field public static final HW_VIDEO_ENCODER_CONFIG_ERROR:I = 0xb

.field public static final HW_VIDEO_ENCODER_NOT_EXIST:I = 0xa

.field public static final INVOKE_ERROR:I = -0x1

.field public static final INVOKE_OK:I = 0x0

.field public static final INVOKE_ON_ERROR_STATE:I = -0x1

.field public static final LOG_SHOW:I = 0x271a

.field public static final MEDIA_ERROR:I = 0x2712

.field public static final MEDIA_INFO:I = 0x2713

.field public static final MEDIA_INFO_BLINK:I = 0x34

.field public static final MEDIA_INFO_FACEDETECT_ERROR:I = 0x36

.field public static final MEDIA_INFO_MONITOR_NET_SEND_KEYFRAME:I = 0x33

.field public static final MEDIA_INFO_SMILE:I = 0x35

.field public static final MEDIA_PREPARED:I = 0x2711

.field public static final MEDIA_PREPARE_FAILED:I = 0x2710

.field public static final NETWORK_BLOCK_DATA_SEND:I = 0x15

.field public static final NETWORK_TOO_SLOW:I = 0x14

.field public static final RECONNECT_MAX_RETRY_COUNT:I = 0xf

.field public static final RTMP_CONNECT_ERROR:I = 0x12

.field public static final RTMP_RECONNECT_ERROR:I = 0x16

.field public static final RTMP_SEND_ERROR:I = 0x13

.field public static final SW_AUDIO_ENCODER_CONFIG_ERROR:I = 0xe

.field public static final SW_AUDIO_ENCODER_ENCODE_ERROR:I = 0xf

.field public static final SW_VIDEO_ENCODER_CONFIG_ERROR:I = 0x10

.field public static final SW_VIDEO_ENCODER_ENCODE_ERROR:I = 0x11

.field private static final TAG:Ljava/lang/String; = "TaoLive"

.field public static final TAOLIVE_AAC_BUFFER:I = 0x2

.field public static final TAOLIVE_AAC_ENC_TIME:I = 0x3

.field public static final TAOLIVE_AUDIO_DIFF:I = 0x4

.field public static final TAOLIVE_AUDIO_GAIN:I = 0xe

.field public static final TAOLIVE_AVC_BUFFER:I = 0x7

.field public static final TAOLIVE_AVC_HW_ENC_TIME:I = 0x9

.field public static final TAOLIVE_AVC_SW_ENC_TIME:I = 0x8

.field public static final TAOLIVE_ENCODE_BPS:I = 0xf

.field public static final TAOLIVE_NETWORK_LEVEL:I = 0x10

.field public static final TAOLIVE_PCM_BUFFER:I = 0x1

.field public static final TAOLIVE_SEND_BPS:I = 0xd

.field public static final TAOLIVE_STREAM_HAS_AUDIO:I = 0x12

.field public static final TAOLIVE_STREAM_HAS_VIDEO:I = 0x11

.field public static final TAOLIVE_VIDEO_CAP_ORI_FPS:I = 0xb

.field public static final TAOLIVE_VIDEO_CAP_REAL_FPS:I = 0xc

.field public static final TAOLIVE_VIDEO_DIFF:I = 0xa

.field public static final TAOLIVE_YUVBUFFER_1:I = 0x5

.field public static final TAOLIVE_YUVBUFFER_2:I = 0x6

.field public static final VIDEO_ENCODER_TYPE_HW:I = 0x3b

.field public static final VIDEO_ENCODER_TYPE_SW:I = 0x3a

.field private static mApplicationCtx:Landroid/content/Context;


# instance fields
.field private RTMPReconnectTimer:Ljava/util/Timer;

.field private hasRegister1:Z

.field private hasRegister2:Z

.field private hasRegister3:Z

.field private hasRegister4:Z

.field private hasRegister5:Z

.field private hasRegister6:Z

.field private hasRegister7:Z

.field private hasRegister8:Z

.field private hasRegister9:Z

.field private isLiveStreamStarted:Z

.field private mCameraPreview:Lcom/taobao/taolive/CameraPreview;

.field private mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

.field private mCtx:Landroid/content/Context;

.field private mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

.field private mOnErrorListener:Lcom/taobao/taolive/TaoLive$OnErrorListener;

.field private mOnInfoListener:Lcom/taobao/taolive/TaoLive$OnInfoListener;

.field private mOnLogPrintCallback:Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;

.field private mOnPreparedListener:Lcom/taobao/taolive/TaoLive$OnPreparedListener;

.field private m_rtmpRetryCount:I

.field private pointer:J

.field private retryIntervalCount:I

.field private roomId:Ljava/lang/String;

.field private self:Lcom/taobao/taolive/TaoLive;

.field private statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

.field private streamPushIp:Ljava/lang/String;

.field private streamPushUrl:Ljava/lang/String;

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    const-string/jumbo v1, "TaoLive"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    :try_start_0
    const-string/jumbo v1, "AliEffectModule"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/taobao/taolive/TaoLive;->mApplicationCtx:Landroid/content/Context;

    .line 348
    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "LON-AL00"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "MHA-AL00"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "MHA-TL00"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "MHA-AL10"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "MHA-TL10"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "VTR-AL00"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "VTR-TL00"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "VKY-AL00"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "KNT-UL10"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "KNT-AL10"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "KNT-AL20"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "KNT-TL10"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "FRD-AL00"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "FRD-DL00"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "STF-AL10"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "STF-AL00"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "DUK-AL20"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "DUK-TL30"

    aput-object v3, v1, v2

    sput-object v1, Lcom/taobao/taolive/TaoLive;->H264_HW_SPECIAL_MODELS:[Ljava/lang/String;

    return-void

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "application_ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    .line 154
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->mCtx:Landroid/content/Context;

    .line 156
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->self:Lcom/taobao/taolive/TaoLive;

    .line 157
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    .line 158
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/taobao/taolive/TaoLive;->pointer:J

    .line 160
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->textView:Landroid/widget/TextView;

    .line 161
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->stringBuilder:Ljava/lang/StringBuilder;

    .line 163
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->isLiveStreamStarted:Z

    .line 165
    iput v6, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    .line 167
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    .line 169
    const-string/jumbo v1, "nohttpdns"

    iput-object v1, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    .line 171
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister1:Z

    .line 172
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister2:Z

    .line 173
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister3:Z

    .line 174
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister4:Z

    .line 175
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister5:Z

    .line 176
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister6:Z

    .line 177
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister7:Z

    .line 178
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister8:Z

    .line 179
    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister9:Z

    .line 242
    iput v6, p0, Lcom/taobao/taolive/TaoLive;->retryIntervalCount:I

    .line 243
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    .line 824
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    .line 287
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->mCtx:Landroid/content/Context;

    .line 288
    sput-object p2, Lcom/taobao/taolive/TaoLive;->mApplicationCtx:Landroid/content/Context;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/taobao/taolive/TaoLive;->stringBuilder:Ljava/lang/StringBuilder;

    .line 294
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 295
    new-instance v1, Lcom/taobao/taolive/TaoLive$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/taobao/taolive/TaoLive$EventHandler;-><init>(Lcom/taobao/taolive/TaoLive;Lcom/taobao/taolive/TaoLive;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v1, Lcom/taobao/taolive/TaoLive$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/taobao/taolive/TaoLive$EventHandler;-><init>(Lcom/taobao/taolive/TaoLive;Lcom/taobao/taolive/TaoLive;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    goto :goto_0

    .line 299
    :cond_1
    iput-object v5, p0, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    goto :goto_0
.end method

.method private MyTLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 601
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mOnLogPrintCallback:Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mOnLogPrintCallback:Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TAOLIVE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;->onLogPrint(Ljava/lang/String;)Z

    .line 604
    :cond_0
    const-string/jumbo v0, "TaoLive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method private native PrepareAsync(Ljava/lang/String;)I
.end method

.method private Reconnect2RTMPServer()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 246
    const-string/jumbo v1, "Reconnect to server called!"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 247
    iget v1, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    const/16 v2, 0x2712

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/taobao/taolive/TaoLive$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    invoke-virtual {v1, v0}, Lcom/taobao/taolive/TaoLive$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    iput v5, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    .line 262
    .end local v0    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v1, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 253
    const/4 v1, 0x3

    iput v1, p0, Lcom/taobao/taolive/TaoLive;->retryIntervalCount:I

    .line 259
    :goto_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    .line 260
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    new-instance v2, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;

    iget v3, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    iget v4, p0, Lcom/taobao/taolive/TaoLive;->retryIntervalCount:I

    mul-int/lit16 v4, v4, 0x1388

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/taobao/taolive/TaoLive$RTMPReconnectTask;-><init>(Lcom/taobao/taolive/TaoLive;Lcom/taobao/taolive/TaoLive;II)V

    iget v3, p0, Lcom/taobao/taolive/TaoLive;->retryIntervalCount:I

    mul-int/lit16 v3, v3, 0x1388

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 261
    iget v1, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    goto :goto_0

    .line 254
    :cond_1
    iget v1, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 255
    const/4 v1, 0x2

    iput v1, p0, Lcom/taobao/taolive/TaoLive;->retryIntervalCount:I

    goto :goto_1

    .line 257
    :cond_2
    iput v5, p0, Lcom/taobao/taolive/TaoLive;->retryIntervalCount:I

    goto :goto_1
.end method

.method private native ReconnectServer()I
.end method

.method private native SetConfig(Lcom/taobao/taolive/TaoLive$TaoLiveConfig;)I
.end method

.method private native StartAudioPlay()I
.end method

.method private native StartSendAudio()I
.end method

.method private native StartSendVideo()I
.end method

.method private native StartVideoPlay()I
.end method

.method private native StopAudioPlay()I
.end method

.method private native StopSendAudio()I
.end method

.method private native StopSendVideo()I
.end method

.method private native StopVideoPlay()I
.end method

.method static synthetic access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mOnPreparedListener:Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->self:Lcom/taobao/taolive/TaoLive;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/taobao/taolive/TaoLive;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/taobao/taolive/TaoLive;->isLiveStreamStarted:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$TaoLiveConfig;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/taobao/taolive/TaoLive;I)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/taolive/TaoLive;->get_property_int(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/taolive/TaoLive;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->Reconnect2RTMPServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mOnErrorListener:Lcom/taobao/taolive/TaoLive$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mOnInfoListener:Lcom/taobao/taolive/TaoLive$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/taolive/TaoLive;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/taolive/TaoLive;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->stringBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/taobao/taolive/TaoLive;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->stringBuilder:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method static synthetic access$702(Lcom/taobao/taolive/TaoLive;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/taobao/taolive/TaoLive;I)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/taobao/taolive/TaoLive;->get_property_long(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/taobao/taolive/TaoLive;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/taobao/taolive/TaoLive;->hasRegister8:Z

    return v0
.end method

.method static synthetic access$902(Lcom/taobao/taolive/TaoLive;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/TaoLive;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/taobao/taolive/TaoLive;->hasRegister8:Z

    return p1
.end method

.method private native close_camera()I
.end method

.method private dealWithEventReceived(IJJJJJJJ)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # J
    .param p8, "arg4"    # J
    .param p10, "arg5"    # J
    .param p12, "arg6"    # J
    .param p14, "arg7"    # J

    .prologue
    .line 627
    const/16 v4, 0x2711

    if-ne p1, v4, :cond_1

    .line 628
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "connectRtmpSever"

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "networkNormalInUsing"

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "liveExitNormal"

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "netCongest"

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v4, 0x1

    iput v4, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const/16 v4, 0x2713

    if-ne p1, v4, :cond_6

    .line 634
    const-wide/16 v4, 0x33

    cmp-long v4, p2, v4

    if-nez v4, :cond_3

    .line 635
    iget-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister9:Z

    if-nez v4, :cond_2

    .line 636
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister9:Z

    .line 637
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "netSendKeyframe"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 639
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "appKey"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string/jumbo v4, "userId"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string/jumbo v4, "roomId"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string/jumbo v4, "pts"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v4, "dts"

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    .line 646
    .local v3, "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "netSendKeyframe"

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0

    .line 647
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :cond_3
    const-wide/16 v4, 0x58

    cmp-long v4, p2, v4

    if-nez v4, :cond_4

    .line 648
    iget-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister4:Z

    if-nez v4, :cond_0

    .line 649
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister4:Z

    .line 650
    const-string/jumbo v0, "-104"

    .line 651
    .local v0, "errCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "liveExitNormal"

    invoke-static {v4, v5, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    .end local v0    # "errCode":Ljava/lang/String;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_4
    const-wide/16 v4, 0x3c

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    .line 656
    iget-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister1:Z

    if-nez v4, :cond_5

    .line 657
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister1:Z

    .line 658
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "videoDropRate"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 660
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 661
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "appKey"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v4, "userId"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v4, "roomId"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v4, "pushUrl"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string/jumbo v4, "pushIp"

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string/jumbo v4, "dropCount"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string/jumbo v4, "dropInterval"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    .line 669
    .restart local v3    # "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "videoDropRate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 671
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :cond_6
    const/16 v4, 0x2712

    if-ne p1, v4, :cond_0

    .line 672
    const-wide/16 v4, 0x12

    cmp-long v4, p2, v4

    if-nez v4, :cond_7

    .line 673
    iget-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister2:Z

    if-nez v4, :cond_0

    .line 674
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister2:Z

    .line 675
    const-string/jumbo v0, "-102"

    .line 676
    .restart local v0    # "errCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    .restart local v1    # "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "connectRtmpSever"

    invoke-static {v4, v5, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    .end local v0    # "errCode":Ljava/lang/String;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_7
    const-wide/16 v4, 0x13

    cmp-long v4, p2, v4

    if-nez v4, :cond_8

    .line 681
    iget-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister3:Z

    if-nez v4, :cond_0

    .line 682
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister3:Z

    .line 683
    const-string/jumbo v0, "-103"

    .line 684
    .restart local v0    # "errCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    .restart local v1    # "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "networkNormalInUsing"

    invoke-static {v4, v5, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 688
    .end local v0    # "errCode":Ljava/lang/String;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_8
    const-wide/16 v4, 0x15

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    .line 689
    iget-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister5:Z

    if-nez v4, :cond_0

    .line 690
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/taobao/taolive/TaoLive;->hasRegister5:Z

    .line 691
    const-string/jumbo v0, "-105"

    .line 692
    .restart local v0    # "errCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v5, v5, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    .restart local v1    # "errMsg":Ljava/lang/String;
    const-string/jumbo v4, "TBVideoCore_TBAVEngine"

    const-string/jumbo v5, "netCongest"

    invoke-static {v4, v5, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private native deinit()I
.end method

.method public static getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/taobao/taolive/TaoLive;->mApplicationCtx:Landroid/content/Context;

    return-object v0
.end method

.method private native get_property_int(I)I
.end method

.method private native get_property_long(I)J
.end method

.method private native init(Landroid/content/Context;Ljava/lang/Object;Z)I
.end method

.method private native native_updateTieTu(I[BII)V
.end method

.method private native open_camera(Ljava/lang/Object;IIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IJJJJJJJLjava/lang/Object;)V
    .locals 20
    .param p0, "taolive_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # J
    .param p8, "arg4"    # J
    .param p10, "arg5"    # J
    .param p12, "arg6"    # J
    .param p14, "arg7"    # J
    .param p16, "obj"    # Ljava/lang/Object;

    .prologue
    .line 609
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "taolive_ref":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/taolive/TaoLive;

    .line 610
    .local v2, "tl":Lcom/taobao/taolive/TaoLive;
    const-string/jumbo v3, "TaoLive"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "postEventFromNative got=> what: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/living/utils/TBLSLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    if-nez v2, :cond_0

    .line 623
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v3, v2, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    if-eqz v3, :cond_1

    .line 615
    iget-object v3, v2, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    move-wide/from16 v0, p2

    long-to-int v4, v0

    move-wide/from16 v0, p4

    long-to-int v5, v0

    move/from16 v0, p1

    move-object/from16 v1, p16

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/taobao/taolive/TaoLive$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 616
    .local v18, "m":Landroid/os/Message;
    const-wide/16 v4, 0x58

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    .line 617
    invoke-virtual {v2}, Lcom/taobao/taolive/TaoLive;->closeCamera()I

    .end local v18    # "m":Landroid/os/Message;
    :cond_1
    :goto_1
    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    .line 622
    invoke-direct/range {v2 .. v17}, Lcom/taobao/taolive/TaoLive;->dealWithEventReceived(IJJJJJJJ)V

    goto :goto_0

    .line 619
    .restart local v18    # "m":Landroid/os/Message;
    :cond_2
    iget-object v3, v2, Lcom/taobao/taolive/TaoLive;->mEventHandler:Lcom/taobao/taolive/TaoLive$EventHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/taobao/taolive/TaoLive$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method


# virtual methods
.method public native closeAEC()V
.end method

.method public closeCamera()I
    .locals 1

    .prologue
    .line 384
    const-string/jumbo v0, "[IN] closeCamera"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->close_camera()I

    .line 386
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview;->Stop()V

    .line 387
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview;->Close()I

    .line 388
    const-string/jumbo v0, "[OUT] closeCamera"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public native comeToFront()V
.end method

.method public deInit()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 325
    const-string/jumbo v2, "[IN] deInit"

    invoke-direct {p0, v2}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 326
    iput-object v3, p0, Lcom/taobao/taolive/TaoLive;->self:Lcom/taobao/taolive/TaoLive;

    .line 327
    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 329
    iput-object v3, p0, Lcom/taobao/taolive/TaoLive;->RTMPReconnectTimer:Ljava/util/Timer;

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    invoke-virtual {v2}, Lcom/taobao/taolive/TaoLive$StatisticThread;->RequestExit()V

    .line 334
    :try_start_0
    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/taobao/taolive/TaoLive$StatisticThread;->join(J)V

    .line 335
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    :goto_0
    const-string/jumbo v2, "statistic_thread_ exit"

    invoke-direct {p0, v2}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->deinit()I

    move-result v1

    .line 343
    .local v1, "ret":I
    const-string/jumbo v2, "[OUT] deInit"

    invoke-direct {p0, v2}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 344
    return v1

    .line 336
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public native disableFacebeauty()I
.end method

.method public native disableNsAgc()I
.end method

.method public native doFacebeauty()I
.end method

.method public native enableFacebeauty(Ljava/lang/String;)I
.end method

.method public native enableNsAgc()I
.end method

.method public getCameraStatus()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview;->getCameraStatus()I

    move-result v0

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastPreviewFrame()Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 496
    const-string/jumbo v1, "[IN] saveLastPreviewFrame"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v1}, Lcom/taobao/taolive/CameraPreview;->get_pic_prew_rgb565()[B

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v2, v2, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoWidth:I

    iget-object v3, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v3, v3, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/taobao/taolive/TaoLive;->getOriginalBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, "ret":Landroid/graphics/Bitmap;
    const-string/jumbo v1, "[OUT] saveLastPreviewFrame"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 500
    return-object v0
.end method

.method public getLogView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNetworkLevel()I
    .locals 1

    .prologue
    .line 554
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->get_property_int(I)I

    move-result v0

    return v0
.end method

.method public getOriginalBitmap([BII)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v2, v2, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->isLandscape:I

    if-nez v2, :cond_1

    .line 508
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 512
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 513
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 510
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public native goToBack()V
.end method

.method public init(Z)I
    .locals 3
    .param p1, "isUseHWEncoder"    # Z

    .prologue
    .line 313
    const-string/jumbo v1, "[IN] init"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/taobao/taolive/TaoLive;->mApplicationCtx:Landroid/content/Context;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2, p1}, Lcom/taobao/taolive/TaoLive;->init(Landroid/content/Context;Ljava/lang/Object;Z)I

    move-result v0

    .line 315
    .local v0, "ret":I
    iput-object p0, p0, Lcom/taobao/taolive/TaoLive;->self:Lcom/taobao/taolive/TaoLive;

    .line 316
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Lcom/taobao/taolive/TaoLive$StatisticThread;

    invoke-direct {v1, p0}, Lcom/taobao/taolive/TaoLive$StatisticThread;-><init>(Lcom/taobao/taolive/TaoLive;)V

    iput-object v1, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    .line 318
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->statistic_thread_:Lcom/taobao/taolive/TaoLive$StatisticThread;

    invoke-virtual {v1}, Lcom/taobao/taolive/TaoLive$StatisticThread;->start()V

    .line 320
    :cond_0
    const-string/jumbo v1, "[OUT] init"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 321
    return v0
.end method

.method public native openAEC()V
.end method

.method public openCamera(IIIZ)Landroid/view/SurfaceView;
    .locals 7
    .param p1, "cameraID"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "landscape"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    const-string/jumbo v0, "[IN] openCamera"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/taobao/taolive/CameraPreview;

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/taolive/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    .line 370
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/taolive/TaoLive;->open_camera(Ljava/lang/Object;IIIZ)I

    .line 371
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/taolive/CameraPreview;->Open(III)Landroid/view/SurfaceView;

    move-result-object v6

    .line 372
    .local v6, "ret":Landroid/view/SurfaceView;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[OUT] openCamera, preview:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 373
    return-object v6
.end method

.method public prepareAsync(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "rtmpUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    const-string/jumbo v1, "[IN] prepareAsync"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 418
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    .line 419
    iput-object p2, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    .line 420
    const/4 v1, 0x1

    iput v1, p0, Lcom/taobao/taolive/TaoLive;->m_rtmpRetryCount:I

    .line 421
    invoke-direct {p0, p2}, Lcom/taobao/taolive/TaoLive;->PrepareAsync(Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, "ret":I
    const-string/jumbo v1, "[OUT] prepareAsync"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 423
    return v0
.end method

.method public reconnectServer()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 489
    const-string/jumbo v1, "[IN] reconnectServer"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->ReconnectServer()I

    move-result v0

    .line 491
    .local v0, "ret":I
    const-string/jumbo v1, "[OUT] reconnectServer"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 492
    return v0
.end method

.method public setAdaptiveBitrate(J)V
    .locals 1
    .param p1, "bitrate"    # J

    .prologue
    .line 558
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1, p2}, Lcom/taobao/taolive/TaoLive;->set_property_long(IJ)I

    .line 559
    return-void
.end method

.method public native setBeautyswitch(Z)I
.end method

.method public setConfig(Lcom/taobao/taolive/TaoLive$TaoLiveConfig;)I
    .locals 5
    .param p1, "config"    # Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    const-string/jumbo v2, "[IN] setConfig"

    invoke-direct {p0, v2}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 356
    sget-object v2, Lcom/taobao/taolive/TaoLive;->H264_HW_SPECIAL_MODELS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 357
    .local v0, "exceptionModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x170

    iget v3, p1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoWidth:I

    if-ne v2, v3, :cond_0

    .line 358
    const-string/jumbo v2, "TaoLive"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has special listed H.264 encoder."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/living/utils/TBLSLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    const/16 v2, 0x160

    iput v2, p1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->videoWidth:I

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    .line 362
    invoke-direct {p0, p1}, Lcom/taobao/taolive/TaoLive;->SetConfig(Lcom/taobao/taolive/TaoLive$TaoLiveConfig;)I

    move-result v1

    .line 363
    .local v1, "ret":I
    const-string/jumbo v2, "[OUT] setConfig"

    invoke-direct {p0, v2}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 364
    return v1
.end method

.method public setNSAGCEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 461
    const-string/jumbo v0, "[IN] setNSAGCEnable"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 462
    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/taobao/taolive/TaoLive;->enableNsAgc()I

    .line 467
    :goto_0
    const-string/jumbo v0, "[OUT] setNSAGCEnable"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 468
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/taolive/TaoLive;->disableNsAgc()I

    goto :goto_0
.end method

.method public setOnErrorListener(Lcom/taobao/taolive/TaoLive$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/taolive/TaoLive$OnErrorListener;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->mOnErrorListener:Lcom/taobao/taolive/TaoLive$OnErrorListener;

    .line 578
    return-void
.end method

.method public setOnInfoListener(Lcom/taobao/taolive/TaoLive$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/taolive/TaoLive$OnInfoListener;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->mOnInfoListener:Lcom/taobao/taolive/TaoLive$OnInfoListener;

    .line 589
    return-void
.end method

.method public setOnLogPrintCallback(Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->mOnLogPrintCallback:Lcom/taobao/taolive/TaoLive$OnLogPrintCallback;

    .line 597
    return-void
.end method

.method public setOnPreparedListener(Lcom/taobao/taolive/TaoLive$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive;->mOnPreparedListener:Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    .line 567
    return-void
.end method

.method public setViewerMirror(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 409
    const-string/jumbo v0, "[IN] setViewerMirror"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0, p1}, Lcom/taobao/taolive/CameraPreview;->setViewerMirror(Z)V

    .line 413
    :cond_0
    const-string/jumbo v0, "[OUT] setViewerMirror"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public native set_property_bytebuffer(I[B)I
.end method

.method public native set_property_int(II)I
.end method

.method public native set_property_long(IJ)I
.end method

.method public startAudioPlay()I
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StartAudioPlay()I

    move-result v0

    return v0
.end method

.method public native startGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public startSendAudio()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 453
    const-string/jumbo v1, "[IN] startSendAudio"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/taolive/TaoLive;->isLiveStreamStarted:Z

    .line 455
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StartSendAudio()I

    move-result v0

    .line 456
    .local v0, "ret":I
    const-string/jumbo v1, "[OUT] startSendAudio"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 457
    return v0
.end method

.method public startSendVideo()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 427
    const-string/jumbo v1, "[IN] startSendVideo"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/taolive/TaoLive;->isLiveStreamStarted:Z

    .line 429
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StartSendVideo()I

    move-result v0

    .line 430
    .local v0, "ret":I
    const-string/jumbo v1, "[OUT] startSendVideo"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 431
    return v0
.end method

.method public native startTieTu(Ljava/lang/String;)V
.end method

.method public startVideoPlay()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 518
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v1, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->surface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 519
    :cond_0
    const-string/jumbo v1, "m_config==null||m_config.surface==null"

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 531
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v1, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->dataDir:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v1, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->mediaType:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v1, v1, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->mediaType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 526
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startVideoPlay() at wrong state, datadir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v2, v2, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->dataDir:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", media_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget v2, v2, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->mediaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StartVideoPlay()I

    move-result v0

    goto :goto_0
.end method

.method public stopAudioPlay()I
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StopAudioPlay()I

    move-result v0

    return v0
.end method

.method public native stopGame()V
.end method

.method public stopSendAudio()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 471
    const-string/jumbo v3, "[IN] stopSendAudio"

    invoke-direct {p0, v3}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 472
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/taobao/taolive/TaoLive;->isLiveStreamStarted:Z

    .line 473
    iget-boolean v3, p0, Lcom/taobao/taolive/TaoLive;->hasRegister7:Z

    if-nez v3, :cond_0

    .line 474
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/taolive/TaoLive;->hasRegister7:Z

    .line 475
    const-string/jumbo v3, "TBVideoCore_TBAVEngine"

    const-string/jumbo v4, "checkAudio"

    invoke-static {v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/taobao/taolive/TaoLive;->get_property_int(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 477
    const-string/jumbo v0, "-107"

    .line 478
    .local v0, "errCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v4, v4, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v4, v4, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v3, "TBVideoCore_TBAVEngine"

    const-string/jumbo v4, "checkAudio"

    invoke-static {v3, v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v0    # "errCode":Ljava/lang/String;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StopSendAudio()I

    move-result v2

    .line 484
    .local v2, "ret":I
    const-string/jumbo v3, "[OUT] stopSendAudio"

    invoke-direct {p0, v3}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 485
    return v2
.end method

.method public stopSendVideo()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    const-string/jumbo v3, "[IN] stopSendVideo"

    invoke-direct {p0, v3}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 436
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/taobao/taolive/TaoLive;->isLiveStreamStarted:Z

    .line 437
    iget-boolean v3, p0, Lcom/taobao/taolive/TaoLive;->hasRegister6:Z

    if-nez v3, :cond_0

    .line 438
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/taolive/TaoLive;->hasRegister6:Z

    .line 439
    const-string/jumbo v3, "TBVideoCore_TBAVEngine"

    const-string/jumbo v4, "checkVideo"

    invoke-static {v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Lcom/taobao/taolive/TaoLive;->get_property_int(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 441
    const-string/jumbo v0, "-106"

    .line 442
    .local v0, "errCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v4, v4, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->mConfig:Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    iget-object v4, v4, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->roomId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->streamPushUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taolive/TaoLive;->streamPushIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v3, "TBVideoCore_TBAVEngine"

    const-string/jumbo v4, "checkVideo"

    invoke-static {v3, v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .end local v0    # "errCode":Ljava/lang/String;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StopSendVideo()I

    move-result v2

    .line 448
    .local v2, "ret":I
    const-string/jumbo v3, "[OUT] stopSendVideo"

    invoke-direct {p0, v3}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 449
    return v2
.end method

.method public native stopTieTu()V
.end method

.method public stopVideoPlay()I
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/taobao/taolive/TaoLive;->StopVideoPlay()I

    move-result v0

    return v0
.end method

.method public native test()I
.end method

.method public turnLightOff()V
    .locals 1

    .prologue
    .line 401
    const-string/jumbo v0, "[IN] turnLightOff"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview;->turnLightOff()V

    .line 405
    :cond_0
    const-string/jumbo v0, "[OUT] turnLightOff"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public turnLightOn()V
    .locals 1

    .prologue
    .line 393
    const-string/jumbo v0, "[IN] turnLightOn"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive;->mCameraPreview:Lcom/taobao/taolive/CameraPreview;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview;->turnLightOn()V

    .line 397
    :cond_0
    const-string/jumbo v0, "[OUT] turnLightOn"

    invoke-direct {p0, v0}, Lcom/taobao/taolive/TaoLive;->MyTLog(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public native updateFaceBeautyParam(FFFFFFFFF)I
.end method
