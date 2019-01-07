.class public Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegApi;
.super Ljava/lang/Object;
.source "FFmpegApi.java"


# static fields
.field private static final AAC:I = 0x15002

.field private static final H264:I = 0x1c

.field private static final YUV420P:I = 0x0

.field private static final YUVJ420P:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native av_base64_encode([B)Ljava/lang/String;
.end method

.method private static native dumpVideoInfo(Ljava/lang/String;)Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoInfo;
.end method

.method public static getSupportPixList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "supportPix":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-object v0
.end method

.method public static getVideoInfo(Ljava/lang/String;)Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoInfo;
    .locals 2
    .param p0, "videoFile"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegApi;->dumpVideoInfo(Ljava/lang/String;)Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoInfo;

    move-result-object v0

    .line 30
    .local v0, "info":Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoInfo;
    const/16 v1, 0x1c

    iput v1, v0, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoInfo;->H264:I

    .line 31
    const v1, 0x15002

    iput v1, v0, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoInfo;->AAC:I

    .line 32
    return-object v0
.end method

.method public static native videoCompress(Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;)I
.end method


# virtual methods
.method public getAACCode()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x15002

    return v0
.end method

.method public getH264Code()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x1c

    return v0
.end method
