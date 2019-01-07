.class public Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;
.super Ljava/lang/Object;
.source "FFmpegVideoCompressConfig.java"


# instance fields
.field public bitrate:I

.field public height:I

.field public inputPath:Ljava/lang/String;

.field public outputPath:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create720P()Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;-><init>()V

    .line 50
    .local v0, "config":Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;
    const/16 v1, 0x168

    iput v1, v0, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;->width:I

    .line 51
    const/16 v1, 0x280

    iput v1, v0, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;->height:I

    .line 52
    const v1, 0xc11d8

    iput v1, v0, Ltv/danmaku/ijk/media/player/ffmpeg/FFmpegVideoCompressConfig;->bitrate:I

    .line 53
    return-object v0
.end method
