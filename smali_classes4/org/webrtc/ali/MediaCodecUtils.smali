.class Lorg/webrtc/ali/MediaCodecUtils;
.super Ljava/lang/Object;
.source "MediaCodecUtils.java"


# static fields
.field static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field static final COLOR_QCOM_FORMATYVU420PackedSemiPlanar16m4ka:I = 0x7fa30c02

.field static final COLOR_QCOM_FORMATYVU420PackedSemiPlanar32m4ka:I = 0x7fa30c01

.field static final COLOR_QCOM_FORMATYVU420PackedSemiPlanar64x32Tile2m8ka:I = 0x7fa30c03

.field static final DECODER_COLOR_FORMATS:[I

.field static final ENCODER_COLOR_FORMATS:[I

.field static final EXYNOS_PREFIX:Ljava/lang/String; = "OMX.Exynos."

.field static final INTEL_PREFIX:Ljava/lang/String; = "OMX.Intel."

.field static final NVIDIA_PREFIX:Ljava/lang/String; = "OMX.Nvidia."

.field static final QCOM_PREFIX:Ljava/lang/String; = "OMX.qcom."

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/ali/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/webrtc/ali/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    return-void

    .line 36
    .line 45
    nop

    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c01
        0x7fa30c02
        0x7fa30c03
        0x7fa30c04
    .end array-data

    :array_1
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/webrtc/ali/VideoCodecType;)Z
    .locals 6
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "type"    # Lorg/webrtc/ali/VideoCodecType;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 64
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/webrtc/ali/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const/4 v1, 0x1

    .line 68
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return v1

    .line 63
    .restart local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;
    .locals 8
    .param p0, "supportedColorFormats"    # [I
    .param p1, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    const/4 v3, 0x0

    .line 52
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget v1, p0, v4

    .line 53
    .local v1, "supportedColorFormat":I
    iget-object v6, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v7, v6

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    aget v0, v6, v2

    .line 54
    .local v0, "codecColorFormat":I
    if-ne v0, v1, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    .end local v0    # "codecColorFormat":I
    .end local v1    # "supportedColorFormat":I
    :goto_2
    return-object v2

    .line 53
    .restart local v0    # "codecColorFormat":I
    .restart local v1    # "supportedColorFormat":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "codecColorFormat":I
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 59
    .end local v1    # "supportedColorFormat":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
