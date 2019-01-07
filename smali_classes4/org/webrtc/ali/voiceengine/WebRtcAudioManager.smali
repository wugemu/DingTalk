.class public Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;
.super Ljava/lang/Object;
.source "WebRtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;
    }
.end annotation


# static fields
.field private static final AUDIO_MODES:[Ljava/lang/String;

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioManager"

.field private static blacklistDeviceForOpenSLESUsage:Z

.field private static blacklistDeviceForOpenSLESUsageIsOverridden:Z

.field private static useStereoInput:Z

.field private static useStereoOutput:Z


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private hardwareAEC:Z

.field private hardwareAGC:Z

.field private hardwareNS:Z

.field private initialized:Z

.field private inputBufferSize:I

.field private inputChannels:I

.field private lowLatencyInput:Z

.field private lowLatencyOutput:Z

.field private final nativeAudioManager:J

.field private nativeChannels:I

.field private nativeSampleRate:I

.field private outputBufferSize:I

.field private outputChannels:I

.field private proAudio:Z

.field private sampleRate:I

.field private final volumeLogger:Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->useStereoOutput:Z

    .line 42
    sput-boolean v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->useStereoInput:Z

    .line 44
    sput-boolean v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    .line 45
    sput-boolean v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "MODE_NORMAL"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "MODE_RINGTONE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "MODE_IN_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "MODE_IN_COMMUNICATION"

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->AUDIO_MODES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(JZIZZ)V
    .locals 21
    .param p1, "nativeAudioManager"    # J
    .param p3, "ManualConfigSampleRate"    # Z
    .param p4, "sample_Rate"    # I
    .param p5, "isManualConfigAEC"    # Z
    .param p6, "isUseHardwareAEC"    # Z

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->initialized:Z

    .line 161
    const-string/jumbo v6, "WebRtcAudioManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ctor"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    .line 164
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 168
    new-instance v6, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-direct {v6, v7}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;-><init>(Landroid/media/AudioManager;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->volumeLogger:Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->storeAudioParameters(ZIZZ)V

    .line 170
    move-object/from16 v0, p0

    iget v7, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->sampleRate:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->outputChannels:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->inputChannels:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->proAudio:Z

    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    move/from16 v17, v0

    move-object/from16 v6, p0

    move-wide/from16 v18, p1

    invoke-direct/range {v6 .. v19}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->nativeCacheAudioParameters(IIIZZZZZZIIJ)V

    .line 173
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 371
    :cond_0
    return-void
.end method

.method private dispose()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    const-string/jumbo v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispose"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->initialized:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->volumeLogger:Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;

    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;->access$100(Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;)V

    goto :goto_0
.end method

.method private getLowLatencyInputFramesPerBuffer()I
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 351
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    return v0
.end method

.method private getLowLatencyOutputFramesPerBuffer()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v1, 0x100

    .line 314
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v2

    invoke-static {v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 315
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 318
    :cond_1
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 319
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "framesPerBuffer":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static getMinInputFrameSize(II)I
    .locals 3
    .param p0, "sampleRateInHz"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 358
    mul-int/lit8 v0, p1, 0x2

    .line 359
    .local v0, "bytesPerFrame":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 v1, 0x10

    .line 361
    .local v1, "channelConfig":I
    :goto_0
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    div-int/2addr v2, v0

    return v2

    .line 359
    .end local v1    # "channelConfig":I
    :cond_0
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 3
    .param p0, "sampleRateInHz"    # I
    .param p1, "numChannels"    # I

    .prologue
    .line 340
    mul-int/lit8 v0, p1, 0x2

    .line 341
    .local v0, "bytesPerFrame":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x4

    .line 343
    .local v1, "channelConfig":I
    :goto_0
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    div-int/2addr v2, v0

    return v2

    .line 341
    .end local v1    # "channelConfig":I
    :cond_0
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private getNativeOutputSampleRate()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 281
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const-string/jumbo v1, "WebRtcAudioManager"

    const-string/jumbo v2, "Running emulator, overriding sample rate to 8 kHz."

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/16 v0, 0x1f40

    .line 301
    :goto_0
    return v0

    .line 287
    :cond_0
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->isDefaultSampleRateOverridden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const-string/jumbo v1, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Default sample rate is overriden to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR1OrHigher()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getSampleRateOnJellyBeanMR10OrHigher()I

    move-result v0

    .line 300
    .local v0, "sampleRateHz":I
    :goto_1
    const-string/jumbo v1, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Sample rate is set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0    # "sampleRateHz":I
    :cond_2
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    .restart local v0    # "sampleRateHz":I
    goto :goto_1
.end method

.method private getSampleRateOnJellyBeanMR10OrHigher()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 306
    iget-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "sampleRateString":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v1

    :goto_0
    return v1

    .line 308
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static declared-synchronized getStereoInput()Z
    .locals 2

    .prologue
    .line 71
    const-class v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->useStereoInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStereoOutput()Z
    .locals 2

    .prologue
    .line 68
    const-class v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->useStereoOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasEarpiece()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 247
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 177
    const-string/jumbo v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->initialized:Z

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return v4

    .line 181
    :cond_0
    const-string/jumbo v0, "WebRtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "audio mode is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->AUDIO_MODES:[Ljava/lang/String;

    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-boolean v4, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->initialized:Z

    .line 183
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->volumeLogger:Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;

    invoke-virtual {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager$VolumeLogger;->start()V

    goto :goto_0
.end method

.method private static isAcousticEchoCancelerSupported()Z
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    return v0
.end method

.method private isCommunicationModeEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceBlacklistedForOpenSLESUsage()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    sget-boolean v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    if-eqz v1, :cond_1

    sget-boolean v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    .line 203
    .local v0, "blacklisted":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v1, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is blacklisted for OpenSL ES usage!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    return v0

    .line 202
    .end local v0    # "blacklisted":Z
    :cond_1
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->deviceIsBlacklistedForOpenSLESUsage()Z

    move-result v0

    goto :goto_0
.end method

.method private isLowLatencyOutputSupported()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isNoiseSuppressorSupported()Z
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    return v0
.end method

.method private isProAudioSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.audio.pro"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 272
    goto :goto_0
.end method

.method private native nativeCacheAudioParameters(IIIZZZZZZIIJ)V
.end method

.method public static declared-synchronized setBlacklistDeviceForOpenSLESUsage(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 52
    const-class v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 53
    sput-boolean p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setStereoInput(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 63
    const-class v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Overriding default input behavior: setStereoInput("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sput-boolean p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->useStereoInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setStereoOutput(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 59
    const-class v1, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "WebRtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Overriding default output behavior: setStereoOutput("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sput-boolean p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->useStereoOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private storeAudioParameters(ZIZZ)V
    .locals 3
    .param p1, "ManualConfigSampleRate"    # Z
    .param p2, "sample_Rate"    # I
    .param p3, "isManualConfigAEC"    # Z
    .param p4, "isUseHardwareAEC"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 211
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getStereoOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->outputChannels:I

    .line 212
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getStereoInput()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->inputChannels:I

    .line 214
    if-eqz p1, :cond_2

    .line 216
    iput p2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->sampleRate:I

    .line 223
    :goto_2
    if-eqz p3, :cond_3

    .line 225
    iput-boolean p4, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    .line 233
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    .line 234
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isNoiseSuppressorSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    .line 235
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    .line 236
    invoke-virtual {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    .line 237
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isProAudioSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->proAudio:Z

    .line 238
    iget-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    .line 239
    :goto_4
    iput v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    .line 240
    iget-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getLowLatencyInputFramesPerBuffer()I

    move-result v0

    .line 241
    :goto_5
    iput v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    .line 242
    return-void

    :cond_0
    move v0, v2

    .line 211
    goto :goto_0

    :cond_1
    move v1, v2

    .line 212
    goto :goto_1

    .line 220
    :cond_2
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getNativeOutputSampleRate()I

    move-result v0

    iput v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->sampleRate:I

    goto :goto_2

    .line 229
    :cond_3
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isAcousticEchoCancelerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    goto :goto_3

    .line 238
    :cond_4
    iget v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->outputChannels:I

    .line 239
    invoke-static {v0, v1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getMinOutputFrameSize(II)I

    move-result v0

    goto :goto_4

    .line 240
    :cond_5
    iget v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->inputChannels:I

    .line 241
    invoke-static {v0, v1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->getMinInputFrameSize(II)I

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public isLowLatencyInputSupported()Z
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
