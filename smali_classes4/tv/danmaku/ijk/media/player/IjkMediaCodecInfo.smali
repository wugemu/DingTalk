.class public Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
.super Ljava/lang/Object;
.source "IjkMediaCodecInfo.java"


# static fields
.field public static RANK_ACCEPTABLE:I = 0x0

.field public static RANK_LAST_CHANCE:I = 0x0

.field public static RANK_MAX:I = 0x0

.field public static RANK_NON_STANDARD:I = 0x0

.field public static RANK_NO_SENSE:I = 0x0

.field public static RANK_SECURE:I = 0x0

.field public static RANK_SOFTWARE:I = 0x0

.field public static RANK_TESTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IjkMediaCodecInfo"

.field private static sKnownCodecList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCodecInfo:Landroid/media/MediaCodecInfo;

.field public mMimeType:Ljava/lang/String;

.field public mRank:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x3e8

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_MAX:I

    .line 19
    const/16 v0, 0x320

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    .line 20
    const/16 v0, 0x2bc

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_ACCEPTABLE:I

    .line 21
    const/16 v0, 0x258

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I

    .line 22
    const/16 v0, 0x12c

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SECURE:I

    .line 23
    const/16 v0, 0xc8

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    .line 24
    const/16 v0, 0x64

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_NON_STANDARD:I

    .line 25
    const/4 v0, 0x0

    sput v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_NO_SENSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    return-void
.end method

.method private static declared-synchronized getKnownCodecList()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v1, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    monitor-exit v1

    return-object v0

    .line 37
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 45
    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Nvidia.h264.decode"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Nvidia.h264.decode.secure"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SECURE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Intel.hw_vd.h264"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Intel.VideoDecoder.AVC"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.qcom.video.decoder.avc"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.ittiam.video.decoder.avc"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_NO_SENSE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.SEC.avc.dec"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.SEC.AVC.Decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.SEC.avcdec"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.SEC.avc.sw.dec"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.SEC.hevc.sw.dec"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Exynos.avc.dec"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Exynos.AVC.Decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.k3.video.decoder.avc"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.IMG.MSVDX.Decoder.AVC"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.TI.DUCATI1.VIDEO.DECODER"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.rk.video_decoder.avc"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.amlogic.avc.decoder.awesome"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.MARVELL.VIDEO.H264DECODER"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.Action.Video.Decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.allwinner.video.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.BRCM.vc4.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.brcm.video.h264.hw.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.brcm.video.h264.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.cosmo.video.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.duos.h264.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.hantro.81x0.video.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.hantro.G1.video.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.hisi.video.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.LG.decoder.video.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.MS.AVC.Decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.RENESAS.VIDEO.DECODER.H264"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.RTK.video.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.sprd.h264.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.ST.VFM.H264Dec"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.vpu.video_decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.WMT.decoder.avc"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.bluestacks.hw.decoder"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.google.h264.decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.google.h264.lc.decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.k3.ffmpeg.decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.ffmpeg.video.decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;

    const-string/jumbo v2, "OMX.sprd.soft.h264.decoder"

    sget v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->sKnownCodecList:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    .locals 7
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    if-eqz p0, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string/jumbo v5, "omx."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_NON_STANDARD:I

    .line 191
    .local v4, "rank":I
    :goto_1
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;-><init>()V

    .line 192
    .local v0, "candidate":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    iput-object p0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 193
    iput v4, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    .line 194
    iput-object p1, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 153
    .end local v0    # "candidate":Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;
    .end local v4    # "rank":I
    :cond_2
    const-string/jumbo v5, "omx.pv"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 155
    .end local v4    # "rank":I
    :cond_3
    const-string/jumbo v5, "omx.google."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 157
    .end local v4    # "rank":I
    :cond_4
    const-string/jumbo v5, "omx.ffmpeg."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 159
    .end local v4    # "rank":I
    :cond_5
    const-string/jumbo v5, "omx.k3.ffmpeg."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 160
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 161
    .end local v4    # "rank":I
    :cond_6
    const-string/jumbo v5, "omx.avcodec."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 162
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_SOFTWARE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 163
    .end local v4    # "rank":I
    :cond_7
    const-string/jumbo v5, "omx.ittiam."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 165
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_NO_SENSE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 166
    .end local v4    # "rank":I
    :cond_8
    const-string/jumbo v5, "omx.mtk."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 169
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_9

    .line 170
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_NO_SENSE:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 172
    .end local v4    # "rank":I
    :cond_9
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_TESTED:I

    .restart local v4    # "rank":I
    goto :goto_1

    .line 174
    .end local v4    # "rank":I
    :cond_a
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->getKnownCodecList()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 175
    .local v2, "knownRank":Ljava/lang/Integer;
    if-eqz v2, :cond_b

    .line 176
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4    # "rank":I
    goto/16 :goto_1

    .line 180
    .end local v4    # "rank":I
    :cond_b
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 181
    .local v1, "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v1, :cond_c

    .line 182
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_ACCEPTABLE:I

    .restart local v4    # "rank":I
    goto/16 :goto_1

    .line 184
    .end local v4    # "rank":I
    :cond_c
    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "rank":I
    goto/16 :goto_1

    .line 186
    .end local v1    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v4    # "rank":I
    :catch_0
    move-exception v5

    sget v4, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->RANK_LAST_CHANCE:I

    .restart local v4    # "rank":I
    goto/16 :goto_1
.end method
