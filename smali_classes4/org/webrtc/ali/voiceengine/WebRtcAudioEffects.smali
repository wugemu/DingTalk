.class public Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;
.super Ljava/lang/Object;
.source "WebRtcAudioEffects.java"


# static fields
.field private static final AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

.field private static final AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioEffects"

.field private static cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private shouldEnableAec:Z

.field private shouldEnableNs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    .line 36
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    .line 37
    const-string/jumbo v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    .line 38
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 48
    iput-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 55
    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 56
    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 158
    const-string/jumbo v0, "WebRtcAudioEffects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ctor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 290
    :cond_0
    return-void
.end method

.method public static canUseAcousticEchoCanceler()Z
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->useWebRtcBasedAcousticEchoCanceler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerBlacklisted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerExcludedByUUID()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 139
    .local v0, "canUseAcousticEchoCanceler":Z
    :goto_0
    const-string/jumbo v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "canUseAcousticEchoCanceler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return v0

    .line 138
    .end local v0    # "canUseAcousticEchoCanceler":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canUseNoiseSuppressor()Z
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->useWebRtcBasedNoiseSuppressor()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorBlacklisted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorExcludedByUUID()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 149
    .local v0, "canUseNoiseSuppressor":Z
    :goto_0
    const-string/jumbo v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "canUseNoiseSuppressor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return v0

    .line 148
    .end local v0    # "canUseNoiseSuppressor":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create()Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    invoke-direct {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;-><init>()V

    return-object v0
.end method

.method private effectTypeIsVoIP(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "type"    # Ljava/util/UUID;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnJellyBeanMR2OrHigher()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 282
    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 303
    :goto_0
    return-object v0

    .line 302
    :cond_0
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 303
    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->cachedEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    goto :goto_0
.end method

.method public static isAcousticEchoCancelerBlacklisted()Z
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForAecUsage()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "blackListedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    .local v1, "isBlacklisted":Z
    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v2, "WebRtcAudioEffects"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is blacklisted for HW AEC usage!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return v1
.end method

.method private static isAcousticEchoCancelerEffectAvailable()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 124
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static isAcousticEchoCancelerExcludedByUUID()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    .local v0, "d":Landroid/media/audiofx/AudioEffect$Descriptor;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 101
    iget-object v5, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v6, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->AOSP_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    .line 102
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    const/4 v1, 0x1

    .line 106
    :cond_0
    return v1

    .line 100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isAcousticEchoCancelerSupported()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerEffectAvailable()Z

    move-result v0

    return v0
.end method

.method private static isEffectTypeAvailable(Ljava/util/UUID;)Z
    .locals 6
    .param p0, "effectType"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 311
    .local v1, "effects":[Landroid/media/audiofx/AudioEffect$Descriptor;
    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 314
    :cond_1
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 315
    .local v0, "d":Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v5, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v5, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    const/4 v2, 0x1

    goto :goto_0

    .line 314
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isNoiseSuppressorBlacklisted()Z
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getBlackListedModelsForNsUsage()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "blackListedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 90
    .local v1, "isBlacklisted":Z
    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v2, "WebRtcAudioEffects"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is blacklisted for HW NS usage!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return v1
.end method

.method private static isNoiseSuppressorEffectAvailable()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 130
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private static isNoiseSuppressorExcludedByUUID()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->getAvailableEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    .local v0, "d":Landroid/media/audiofx/AudioEffect$Descriptor;
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 114
    iget-object v5, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v6, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->AOSP_NOISE_SUPPRESSOR:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const/4 v1, 0x1

    .line 118
    :cond_0
    return v1

    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isNoiseSuppressorSupported()Z
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorEffectAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enable(I)V
    .locals 7
    .param p1, "audioSession"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 200
    const-string/jumbo v2, "WebRtcAudioEffects"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "enable(audioSession="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 202
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->assertTrue(Z)V

    .line 218
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isAcousticEchoCancelerSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 222
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v2, :cond_9

    .line 223
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v1

    .line 224
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v3

    .line 225
    .local v0, "enable":Z
    :goto_2
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string/jumbo v2, "WebRtcAudioEffects"

    const-string/jumbo v5, "Failed to set the AcousticEchoCanceler state"

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    const-string/jumbo v5, "WebRtcAudioEffects"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AcousticEchoCanceler: was "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const-string/jumbo v2, "enabled"

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", enable: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", is now: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 230
    invoke-virtual {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "enabled"

    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v5, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "enable":Z
    .end local v1    # "enabled":Z
    :cond_1
    :goto_5
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->isNoiseSuppressorSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-static {p1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v2

    iput-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 240
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v2, :cond_d

    .line 241
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v2}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v1

    .line 242
    .restart local v1    # "enabled":Z
    iget-boolean v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eqz v2, :cond_a

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v3

    .line 243
    .restart local v0    # "enable":Z
    :goto_6
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    const-string/jumbo v2, "WebRtcAudioEffects"

    const-string/jumbo v3, "Failed to set the NoiseSuppressor state"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_2
    const-string/jumbo v3, "WebRtcAudioEffects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NoiseSuppressor: was "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    const-string/jumbo v2, "enabled"

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", enable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", is now: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 247
    invoke-virtual {v2}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "enabled"

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {v3, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v0    # "enable":Z
    .end local v1    # "enabled":Z
    :cond_3
    :goto_9
    return-void

    :cond_4
    move v2, v4

    .line 201
    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 202
    goto/16 :goto_1

    .restart local v1    # "enabled":Z
    :cond_6
    move v0, v4

    .line 224
    goto/16 :goto_2

    .line 228
    .restart local v0    # "enable":Z
    :cond_7
    const-string/jumbo v2, "disabled"

    goto/16 :goto_3

    .line 230
    :cond_8
    const-string/jumbo v2, "disabled"

    goto/16 :goto_4

    .line 232
    .end local v0    # "enable":Z
    .end local v1    # "enabled":Z
    :cond_9
    const-string/jumbo v2, "WebRtcAudioEffects"

    const-string/jumbo v5, "Failed to create the AcousticEchoCanceler instance"

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .restart local v1    # "enabled":Z
    :cond_a
    move v0, v4

    .line 242
    goto :goto_6

    .line 246
    .restart local v0    # "enable":Z
    :cond_b
    const-string/jumbo v2, "disabled"

    goto :goto_7

    .line 247
    :cond_c
    const-string/jumbo v2, "disabled"

    goto :goto_8

    .line 249
    .end local v0    # "enable":Z
    .end local v1    # "enabled":Z
    :cond_d
    const-string/jumbo v2, "WebRtcAudioEffects"

    const-string/jumbo v3, "Failed to create the NoiseSuppressor instance"

    invoke-static {v2, v3}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public release()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string/jumbo v0, "WebRtcAudioEffects"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 261
    iput-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 265
    iput-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 267
    :cond_1
    return-void
.end method

.method public setAEC(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 166
    const-string/jumbo v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAEC("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const-string/jumbo v1, "WebRtcAudioEffects"

    const-string/jumbo v2, "Platform AEC is not supported"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 177
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    if-eq p1, v1, :cond_1

    .line 173
    const-string/jumbo v1, "WebRtcAudioEffects"

    const-string/jumbo v2, "Platform AEC state can\'t be modified while recording"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    iput-boolean p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableAec:Z

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNS(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 185
    const-string/jumbo v1, "WebRtcAudioEffects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setNS("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string/jumbo v1, "WebRtcAudioEffects"

    const-string/jumbo v2, "Platform NS is not supported"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 196
    :goto_0
    return v0

    .line 191
    :cond_0
    iget-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    if-eq p1, v1, :cond_1

    .line 192
    const-string/jumbo v1, "WebRtcAudioEffects"

    const-string/jumbo v2, "Platform NS state can\'t be modified while recording"

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    iput-boolean p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->shouldEnableNs:Z

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method
