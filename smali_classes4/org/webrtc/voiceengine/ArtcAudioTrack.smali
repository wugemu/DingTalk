.class public Lorg/webrtc/voiceengine/ArtcAudioTrack;
.super Ljava/lang/Object;
.source "ArtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;
    }
.end annotation


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArtcAudioTrack"

.field private static volatile speakerMute:Z


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

.field private audioTrack:Landroid/media/AudioTrack;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final context:Landroid/content/Context;

.field private emptyBytes:[B

.field private final nativeAudioTrack:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->speakerMute:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeAudioTrack"    # J

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 51
    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    .line 158
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ctor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iput-object p1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->context:Landroid/content/Context;

    .line 160
    iput-wide p2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->nativeAudioTrack:J

    .line 161
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioTrack;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 24
    invoke-static {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioTrack;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$300(Lorg/webrtc/voiceengine/ArtcAudioTrack;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioTrack;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->nativeAudioTrack:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/webrtc/voiceengine/ArtcAudioTrack;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioTrack;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->nativeGetPlayoutData(IJ)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->speakerMute:Z

    return v0
.end method

.method static synthetic access$600(Lorg/webrtc/voiceengine/ArtcAudioTrack;)[B
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioTrack;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->emptyBytes:[B

    return-object v0
.end method

.method private areParametersValid(II)Z
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channels"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 291
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getStreamType()I

    move-result v0

    .line 292
    .local v0, "streamType":I
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 293
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelConfiguration()I

    move-result v1

    invoke-direct {p0, p2}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->channelCountToConfiguration(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 294
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 295
    invoke-static {v0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 296
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method private channelCountToConfiguration(I)I
    .locals 1
    .param p1, "channels"    # I

    .prologue
    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private getStreamMaxVolume()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 258
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v2, "getStreamMaxVolume"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    .line 260
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 259
    goto :goto_0
.end method

.method private getStreamVolume()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 283
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v2, "getStreamVolume"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    .line 285
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 284
    goto :goto_0
.end method

.method private initPlayout(II)Z
    .locals 12
    .param p1, "sampleRate"    # I
    .param p2, "channels"    # I

    .prologue
    .line 168
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initPlayout(sampleRate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    mul-int/lit8 v7, p2, 0x2

    .line 170
    .local v7, "bytesPerFrame":I
    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, v7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 171
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byteBuffer.capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->emptyBytes:[B

    .line 176
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v10, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->nativeAudioTrack:J

    invoke-direct {p0, v0, v10, v11}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 182
    invoke-direct {p0, p2}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->channelCountToConfiguration(I)I

    move-result v3

    .line 183
    .local v3, "channelConfig":I
    const/4 v0, 0x2

    .line 184
    invoke-static {p1, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 185
    .local v5, "minBufferSizeInBytes":I
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack.getMinBufferSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 192
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v1, "AudioTrack.getMinBufferSize returns an invalid value."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v1, "Conflict with existing AudioTrack."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 217
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v1, "Initialization of audio track failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v8

    .line 209
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "ArtcAudioTrack"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->areParametersValid(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v1, "At least one audio track parameter is invalid."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_3
    invoke-direct {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->logMainParameters()V

    .line 226
    invoke-direct {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->logMainParametersExtended()V

    .line 227
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVolumeFixed()Z
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    goto :goto_0
.end method

.method private logMainParameters()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 300
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack: session ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 301
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 302
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 303
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 300
    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method private logMainParametersExtended()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack: buffer size in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 312
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 310
    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnNougatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack: buffer capacity in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 317
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 315
    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_1
    return-void
.end method

.method private logUnderrunCount()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 328
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnNougatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "underrun count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeGetPlayoutData(IJ)V
.end method

.method public static setSpeakerMute(Z)V
    .locals 3
    .param p0, "mute"    # Z

    .prologue
    .line 351
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSpeakerMute("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    sput-boolean p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->speakerMute:Z

    .line 353
    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 5
    .param p1, "volume"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    const-string/jumbo v0, "ArtcAudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setStreamVolume("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    .line 267
    invoke-direct {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v1, "The device implements a fixed volume policy."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 266
    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v2, v1

    .line 272
    goto :goto_1
.end method

.method private startPlayout()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v3, "startPlayout"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    .line 233
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    .line 234
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 235
    const-string/jumbo v0, "ArtcAudioTrack"

    const-string/jumbo v1, "Audio track is not successfully initialized."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 232
    goto :goto_0

    :cond_1
    move v0, v2

    .line 233
    goto :goto_1

    .line 238
    :cond_2
    new-instance v0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    const-string/jumbo v2, "AudioTrackJavaThread"

    invoke-direct {v0, p0, v2}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;-><init>(Lorg/webrtc/voiceengine/ArtcAudioTrack;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    .line 239
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->start()V

    move v2, v1

    .line 240
    goto :goto_2
.end method

.method private stopPlayout()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    const-string/jumbo v2, "ArtcAudioTrack"

    const-string/jumbo v3, "stopPlayout"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->assertTrue(Z)V

    .line 246
    invoke-direct {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->logUnderrunCount()V

    .line 247
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->joinThread()V

    .line 248
    iput-object v5, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;

    .line 249
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 251
    iput-object v5, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 253
    :cond_1
    return v1
.end method
