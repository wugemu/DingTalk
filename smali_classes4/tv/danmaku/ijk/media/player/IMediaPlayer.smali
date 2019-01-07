.class public interface abstract Ltv/danmaku/ijk/media/player/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoClickListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;,
        Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_MEDIACODEC_DECODE_ERROR:I = -0x6f

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_AUDIO_RENDERING_START:I = 0x2712

.field public static final MEDIA_INFO_AVFORMAT_TIME:I = 0x2c7

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_FACE_DETECT_INFO:I = 0x2cc

.field public static final MEDIA_INFO_FRAME_QUEUE_NULL:I = 0x2c9

.field public static final MEDIA_INFO_KEYFRAME_PTS:I = 0x2c0

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NETWORK_SHAKE:I = 0x2c6

.field public static final MEDIA_INFO_NETWORK_TRAFFIC:I = 0x2ca

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_SEI_USERDEFINED_STRUCT:I = 0x2cb

.field public static final MEDIA_INFO_SHOULD_SWITCH_TO_LOW_QUALITY_STREAM:I = 0x387

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_STREAM_ABNORMAL_ADJOIN:I = 0x2c1

.field public static final MEDIA_INFO_STREAM_ABNORMAL_AUDIO:I = 0x2c3

.field public static final MEDIA_INFO_STREAM_ABNORMAL_AVSTREAM:I = 0x2c4

.field public static final MEDIA_INFO_STREAM_ABNORMAL_VIDEO:I = 0x2c2

.field public static final MEDIA_INFO_STREAM_ABNORMAL_VIDEO_DTS:I = 0x2c5

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_DECODE_ERROR:I = 0x2c8

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_ROTATION_CHANGED:I = 0x2711

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_OUT_OF_BUFFERING:I = 0x12c

.field public static final MEDIA_RESUME_BUFFERING:I = 0x12d


# virtual methods
.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoSarDen()I
.end method

.method public abstract getVideoSarNum()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ltv/danmaku/ijk/media/player/IjkMediaException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
