.class public Lorg/webrtc/ali/HardwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoEncoderFactory.java"

# interfaces
.implements Lorg/webrtc/ali/VideoEncoderFactory;


# static fields
.field private static final H264_CONSTRAINED_BASELINE_3_1:Ljava/lang/String; = "42001f"

.field private static final H264_CONSTRAINED_HIGH_3_1:Ljava/lang/String; = "640c1f"

.field private static final H264_FMTP_LEVEL_ASYMMETRY_ALLOWED:Ljava/lang/String; = "level-asymmetry-allowed"

.field private static final H264_FMTP_PACKETIZATION_MODE:Ljava/lang/String; = "packetization-mode"

.field private static final H264_FMTP_PROFILE_LEVEL_ID:Ljava/lang/String; = "profile-level-id"

.field private static final H264_HW_EXCEPTION_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final H264_LEVEL_3_1:Ljava/lang/String; = "1f"

.field private static final H264_PROFILE_CONSTRAINED_BASELINE:Ljava/lang/String; = "4200"

.field private static final H264_PROFILE_CONSTRAINED_HIGH:Ljava/lang/String; = "640c"

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:I = 0x3a98

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:I = 0x4e20

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoderFactory"


# instance fields
.field private final enableH264HighProfile:Z

.field private final enableIntelVp8Encoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SAMSUNG-SGH-I337"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Nexus 7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Nexus 4"

    aput-object v2, v0, v1

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "enableIntelVp8Encoder"    # Z
    .param p2, "enableH264HighProfile"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    .line 63
    iput-boolean p2, p0, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    .line 64
    return-void
.end method

.method private createBitrateAdjuster(Lorg/webrtc/ali/VideoCodecType;Ljava/lang/String;)Lorg/webrtc/ali/BitrateAdjuster;
    .locals 1
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;
    .param p2, "codecName"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string/jumbo v0, "OMX.Exynos."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lorg/webrtc/ali/VideoCodecType;->VP8:Lorg/webrtc/ali/VideoCodecType;

    if-ne p1, v0, :cond_0

    .line 213
    new-instance v0, Lorg/webrtc/ali/DynamicBitrateAdjuster;

    invoke-direct {v0}, Lorg/webrtc/ali/DynamicBitrateAdjuster;-><init>()V

    .line 220
    :goto_0
    return-object v0

    .line 216
    :cond_0
    new-instance v0, Lorg/webrtc/ali/FramerateBitrateAdjuster;

    invoke-direct {v0}, Lorg/webrtc/ali/FramerateBitrateAdjuster;-><init>()V

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lorg/webrtc/ali/BaseBitrateAdjuster;

    invoke-direct {v0}, Lorg/webrtc/ali/BaseBitrateAdjuster;-><init>()V

    goto :goto_0
.end method

.method private findCodecForType(Lorg/webrtc/ali/VideoCodecType;)Landroid/media/MediaCodecInfo;
    .locals 5
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "info":Landroid/media/MediaCodecInfo;
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 113
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-direct {p0, v2, p1}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :goto_2
    return-object v2

    .line 109
    .restart local v2    # "info":Landroid/media/MediaCodecInfo;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "HardwareVideoEncoderFactory"

    const-string/jumbo v4, "Cannot retrieve encoder codec info"

    invoke-static {v3, v4, v0}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCodecProperties(Lorg/webrtc/ali/VideoCodecType;Z)Ljava/util/Map;
    .locals 4
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;
    .param p2, "highProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/ali/VideoCodecType;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 228
    sget-object v1, Lorg/webrtc/ali/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$ali$VideoCodecType:[I

    invoke-virtual {p1}, Lorg/webrtc/ali/VideoCodecType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unsupported codec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    :goto_0
    return-object v0

    .line 233
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "level-asymmetry-allowed"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v1, "packetization-mode"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v2, "profile-level-id"

    if-eqz p2, :cond_0

    const-string/jumbo v1, "640c1f"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "42001f"

    goto :goto_1

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getForcedKeyFrameIntervalMs(Lorg/webrtc/ali/VideoCodecType;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;
    .param p2, "codecName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v0, 0x3a98

    const/16 v3, 0x17

    .line 195
    sget-object v1, Lorg/webrtc/ali/VideoCodecType;->VP8:Lorg/webrtc/ali/VideoCodecType;

    if-ne p1, v1, :cond_3

    const-string/jumbo v1, "OMX.qcom."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v3, :cond_2

    .line 200
    const/16 v0, 0x4e20

    goto :goto_0

    .line 201
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_0

    .line 206
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyFrameIntervalSec(Lorg/webrtc/ali/VideoCodecType;)I
    .locals 3
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 184
    sget-object v0, Lorg/webrtc/ali/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$ali$VideoCodecType:[I

    invoke-virtual {p1}, Lorg/webrtc/ali/VideoCodecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported VideoCodecType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_0
    const/16 v0, 0x64

    .line 189
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OMX.qcom."

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

.method private isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z
    .locals 2
    .param p1, "info"    # Landroid/media/MediaCodecInfo;
    .param p2, "type"    # Lorg/webrtc/ali/VideoCodecType;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 141
    sget-object v0, Lorg/webrtc/ali/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$ali$VideoCodecType:[I

    invoke-virtual {p2}, Lorg/webrtc/ali/VideoCodecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 172
    sget-object v2, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "OMX.qcom."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_3

    :cond_2
    const-string/jumbo v2, "OMX.Exynos."

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "OMX.qcom."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    :cond_0
    const-string/jumbo v1, "OMX.Exynos."

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    :cond_1
    const-string/jumbo v1, "OMX.Intel."

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    .line 155
    goto :goto_0
.end method

.method private isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/media/MediaCodecInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "OMX.qcom."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "OMX.Exynos."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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

    .line 126
    invoke-static {p1, p2}, Lorg/webrtc/ali/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    sget-object v1, Lorg/webrtc/ali/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 131
    invoke-virtual {p2}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Lorg/webrtc/ali/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, p1, p2}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public createEncoder(Lorg/webrtc/ali/VideoCodecInfo;)Lorg/webrtc/ali/VideoEncoder;
    .locals 9
    .param p1, "input"    # Lorg/webrtc/ali/VideoCodecInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    iget-object v0, p1, Lorg/webrtc/ali/VideoCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/webrtc/ali/VideoCodecType;->valueOf(Ljava/lang/String;)Lorg/webrtc/ali/VideoCodecType;

    move-result-object v2

    .line 69
    .local v2, "type":Lorg/webrtc/ali/VideoCodecType;
    invoke-direct {p0, v2}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->findCodecForType(Lorg/webrtc/ali/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 71
    .local v7, "info":Landroid/media/MediaCodecInfo;
    if-nez v7, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "codecName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "mime":Ljava/lang/String;
    sget-object v0, Lorg/webrtc/ali/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 78
    invoke-virtual {v7, v8}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    .line 77
    invoke-static {v0, v4}, Lorg/webrtc/ali/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 80
    .local v3, "colorFormat":I
    new-instance v0, Lorg/webrtc/ali/HardwareVideoEncoder;

    invoke-direct {p0, v2}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->getKeyFrameIntervalSec(Lorg/webrtc/ali/VideoCodecType;)I

    move-result v4

    .line 81
    invoke-direct {p0, v2, v1}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->getForcedKeyFrameIntervalMs(Lorg/webrtc/ali/VideoCodecType;Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v2, v1}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->createBitrateAdjuster(Lorg/webrtc/ali/VideoCodecType;Ljava/lang/String;)Lorg/webrtc/ali/BitrateAdjuster;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/ali/HardwareVideoEncoder;-><init>(Ljava/lang/String;Lorg/webrtc/ali/VideoCodecType;IIILorg/webrtc/ali/BitrateAdjuster;)V

    goto :goto_0
.end method

.method public getSupportedCodecs()[Lorg/webrtc/ali/VideoCodecInfo;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "supportedCodecInfos":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/ali/VideoCodecInfo;>;"
    new-array v6, v10, [Lorg/webrtc/ali/VideoCodecType;

    sget-object v4, Lorg/webrtc/ali/VideoCodecType;->VP8:Lorg/webrtc/ali/VideoCodecType;

    aput-object v4, v6, v5

    sget-object v4, Lorg/webrtc/ali/VideoCodecType;->VP9:Lorg/webrtc/ali/VideoCodecType;

    aput-object v4, v6, v9

    const/4 v4, 0x2

    sget-object v7, Lorg/webrtc/ali/VideoCodecType;->H264:Lorg/webrtc/ali/VideoCodecType;

    aput-object v7, v6, v4

    move v4, v5

    :goto_0
    if-ge v4, v10, :cond_2

    aget-object v3, v6, v4

    .line 91
    .local v3, "type":Lorg/webrtc/ali/VideoCodecType;
    invoke-direct {p0, v3}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->findCodecForType(Lorg/webrtc/ali/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 92
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v3}, Lorg/webrtc/ali/VideoCodecType;->name()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "name":Ljava/lang/String;
    sget-object v7, Lorg/webrtc/ali/VideoCodecType;->H264:Lorg/webrtc/ali/VideoCodecType;

    if-ne v3, v7, :cond_0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    new-instance v7, Lorg/webrtc/ali/VideoCodecInfo;

    invoke-direct {p0, v3, v9}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->getCodecProperties(Lorg/webrtc/ali/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v5, v1, v8}, Lorg/webrtc/ali/VideoCodecInfo;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    new-instance v7, Lorg/webrtc/ali/VideoCodecInfo;

    invoke-direct {p0, v3, v5}, Lorg/webrtc/ali/HardwareVideoEncoderFactory;->getCodecProperties(Lorg/webrtc/ali/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v5, v1, v8}, Lorg/webrtc/ali/VideoCodecInfo;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "codec":Landroid/media/MediaCodecInfo;
    .end local v3    # "type":Lorg/webrtc/ali/VideoCodecType;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/webrtc/ali/VideoCodecInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/webrtc/ali/VideoCodecInfo;

    return-object v4
.end method
