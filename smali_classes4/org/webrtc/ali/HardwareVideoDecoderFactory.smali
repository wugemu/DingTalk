.class public Lorg/webrtc/ali/HardwareVideoDecoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoDecoderFactory.java"

# interfaces
.implements Lorg/webrtc/ali/VideoDecoderFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareVideoDecoderFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findCodecForType(Lorg/webrtc/ali/VideoCodecType;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    move-object v2, v3

    .line 65
    :cond_0
    :goto_0
    return-object v2

    .line 49
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    invoke-direct {p0, v2, p1}, Lorg/webrtc/ali/HardwareVideoDecoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "HardwareVideoDecoderFactory"

    const-string/jumbo v5, "Cannot retrieve encoder codec info"

    invoke-static {v4, v5, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :cond_3
    move-object v2, v3

    .line 65
    goto :goto_0
.end method

.method private isHardwareSupported(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z
    .locals 5
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/ali/VideoCodecType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lorg/webrtc/ali/HardwareVideoDecoderFactory$1;->$SwitchMap$org$webrtc$ali$VideoCodecType:[I

    invoke-virtual {p2}, Lorg/webrtc/ali/VideoCodecType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 87
    :pswitch_0
    const-string/jumbo v3, "OMX.qcom."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "OMX.Intel."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "OMX.Exynos."

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "OMX.Nvidia."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 91
    :pswitch_1
    const-string/jumbo v3, "OMX.qcom."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "OMX.Exynos."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 94
    :pswitch_2
    const-string/jumbo v3, "OMX.qcom."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "OMX.Intel."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "OMX.Exynos."

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/ali/VideoCodecType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p1, p2}, Lorg/webrtc/ali/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    sget-object v1, Lorg/webrtc/ali/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 75
    invoke-virtual {p2}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Lorg/webrtc/ali/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/HardwareVideoDecoderFactory;->isHardwareSupported(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public createDecoder(Ljava/lang/String;)Lorg/webrtc/ali/VideoDecoder;
    .locals 6
    .param p1, "codecType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    invoke-static {p1}, Lorg/webrtc/ali/VideoCodecType;->valueOf(Ljava/lang/String;)Lorg/webrtc/ali/VideoCodecType;

    move-result-object v2

    .line 32
    .local v2, "type":Lorg/webrtc/ali/VideoCodecType;
    invoke-direct {p0, v2}, Lorg/webrtc/ali/HardwareVideoDecoderFactory;->findCodecForType(Lorg/webrtc/ali/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 34
    .local v1, "info":Landroid/media/MediaCodecInfo;
    if-nez v1, :cond_0

    .line 35
    const/4 v3, 0x0

    .line 39
    :goto_0
    return-object v3

    .line 38
    :cond_0
    invoke-virtual {v2}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 39
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    new-instance v3, Lorg/webrtc/ali/HardwareVideoDecoder;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/webrtc/ali/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 40
    invoke-static {v5, v0}, Lorg/webrtc/ali/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lorg/webrtc/ali/HardwareVideoDecoder;-><init>(Ljava/lang/String;Lorg/webrtc/ali/VideoCodecType;I)V

    goto :goto_0
.end method
