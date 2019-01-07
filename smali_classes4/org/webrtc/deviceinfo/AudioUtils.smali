.class public Lorg/webrtc/deviceinfo/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# static fields
.field private static final DEFAULT_AUDIO_SOURCE:I = 0x7

.field private static final DEFAULT_SAMPLE_RATE_HZ:I = 0x3e80

.field private static final MAX_SAMPLE_RATE_HZ:I = 0xac44

.field private static TAG:Ljava/lang/String;

.field private static isDefaultSampleRateOverridden:Z

.field private static sAudioSource:I

.field private static sSampleRateHz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/webrtc/deviceinfo/AudioUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/deviceinfo/AudioUtils;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x7

    sput v0, Lorg/webrtc/deviceinfo/AudioUtils;->sAudioSource:I

    .line 26
    const/16 v0, 0x3e80

    sput v0, Lorg/webrtc/deviceinfo/AudioUtils;->sSampleRateHz:I

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/deviceinfo/AudioUtils;->isDefaultSampleRateOverridden:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAudioSampleRateHz(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-class v2, Lorg/webrtc/deviceinfo/AudioUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->runningOnEmulator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lorg/webrtc/deviceinfo/AudioUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Running emulator, overriding sample rate to 8 kHz."

    invoke-static {v1, v3}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/16 v0, 0x1f40

    .line 60
    :goto_0
    monitor-exit v2

    return v0

    .line 47
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->isDefaultSampleRateOverridden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    sget-object v1, Lorg/webrtc/deviceinfo/AudioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Default sample rate is overriden to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->getDefaultSampleRateHz()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    goto :goto_0

    .line 54
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_2

    .line 55
    invoke-static {p0}, Lorg/webrtc/deviceinfo/AudioUtils;->getSampleRateOnJellyBeanMR10OrHigher(Landroid/content/Context;)I

    move-result v0

    .line 59
    .local v0, "sampleRateHz":I
    :goto_1
    sget-object v1, Lorg/webrtc/deviceinfo/AudioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sample rate is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "sampleRateHz":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 57
    :cond_2
    :try_start_2
    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->getDefaultSampleRateHz()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .restart local v0    # "sampleRateHz":I
    goto :goto_1
.end method

.method public static declared-synchronized getDefaultAudioSource()I
    .locals 2

    .prologue
    .line 31
    const-class v0, Lorg/webrtc/deviceinfo/AudioUtils;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/webrtc/deviceinfo/AudioUtils;->sAudioSource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSampleRateHz()I
    .locals 2

    .prologue
    .line 69
    const-class v0, Lorg/webrtc/deviceinfo/AudioUtils;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/webrtc/deviceinfo/AudioUtils;->sSampleRateHz:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getSampleRateOnJellyBeanMR10OrHigher(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->getDefaultSampleRateHz()I

    move-result v3

    .line 84
    .local v3, "sampleRate":I
    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 86
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 87
    const-string/jumbo v5, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "sampleRateString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    .local v2, "rate":I
    if-eqz v2, :cond_1

    .line 92
    const v5, 0xac44

    if-le v2, v5, :cond_0

    .line 93
    const v2, 0xac44

    .line 95
    :cond_0
    move v3, v2

    .line 104
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "rate":I
    .end local v4    # "sampleRateString":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 97
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v4    # "sampleRateString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized isDefaultSampleRateOverridden()Z
    .locals 2

    .prologue
    .line 74
    const-class v0, Lorg/webrtc/deviceinfo/AudioUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/webrtc/deviceinfo/AudioUtils;->isDefaultSampleRateOverridden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static runningOnEmulator()Z
    .locals 2

    .prologue
    .line 78
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v1, "generic_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setAudioSource(I)V
    .locals 2
    .param p0, "source"    # I

    .prologue
    .line 35
    const-class v0, Lorg/webrtc/deviceinfo/AudioUtils;

    monitor-enter v0

    :try_start_0
    sput p0, Lorg/webrtc/deviceinfo/AudioUtils;->sAudioSource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultSampleRateHz(I)V
    .locals 2
    .param p0, "sampleRateHz"    # I

    .prologue
    .line 64
    const-class v1, Lorg/webrtc/deviceinfo/AudioUtils;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lorg/webrtc/deviceinfo/AudioUtils;->isDefaultSampleRateOverridden:Z

    .line 65
    sput p0, Lorg/webrtc/deviceinfo/AudioUtils;->sSampleRateHz:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v1

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
