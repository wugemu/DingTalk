.class public Lorg/webrtc/voiceengine/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"


# static fields
.field private static final DEFAULT_FRAMES_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String;


# instance fields
.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private mAudioLowLatencyOutputFrameSize:I

.field private mAudioLowLatencySupported:Z

.field private mNativeOutputSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/webrtc/voiceengine/AudioManagerAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v2, Lorg/webrtc/voiceengine/AudioManagerAndroid$1;

    invoke-direct {v2, p0}, Lorg/webrtc/voiceengine/AudioManagerAndroid$1;-><init>(Lorg/webrtc/voiceengine/AudioManagerAndroid;)V

    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 42
    const-string/jumbo v2, "audio"

    .line 43
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    .line 45
    const v2, 0xac44

    iput v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 46
    const/16 v2, 0x100

    iput v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 47
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 49
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "sampleRateString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 54
    :cond_0
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "framesPerBuffer":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 60
    .end local v0    # "framesPerBuffer":Ljava/lang/String;
    .end local v1    # "sampleRateString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.audio.low_latency"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/webrtc/voiceengine/AudioManagerAndroid;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/AudioManagerAndroid;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    return v0
.end method

.method private getNativeOutputSampleRate()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    return v0
.end method

.method private isAudioLowLatencySupported()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return v0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 115
    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 111
    return-void
.end method
