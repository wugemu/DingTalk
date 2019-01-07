.class public abstract Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "MonitorMediaPlayer.java"


# static fields
.field public static final ABTEST_USE_CACHE_COMOPONENT:Ljava/lang/String; = "useCacheComponent"

.field public static final ABTEST_USE_CACHE_ENABLE:Ljava/lang/String; = "useCache"

.field public static final ABTEST_USE_CACHE_MODULE:Ljava/lang/String; = "useCacheModule"

.field public static final DEFAULT_NO_TRAFFIC_HOST:Ljava/lang/String; = "mtbtraffic.danuoyi.alicdn.com"

.field public static final KEY_NO_TRAFFIC_HOST:Ljava/lang/String; = "PolicyHost"

.field public static final MAX_EVENT_NUM:I = 0x1e

.field public static final MornitorBuffering:Ljava/lang/String; = "taolive_buffering"

.field public static final MornitorBufferingNew:Ljava/lang/String; = "stalled"

.field public static final MornitorFirstFrameRender:Ljava/lang/String; = "first_frame_render"

.field public static final PLAYER_EVENT_COMPLETE:I = 0x6

.field public static final PLAYER_EVENT_ERROR:I = 0x7

.field public static final PLAYER_EVENT_FIRST_RENDER:I = 0x8

.field public static final PLAYER_EVENT_PAUSE:I = 0x3

.field public static final PLAYER_EVENT_PREPARED:I = 0x1

.field public static final PLAYER_EVENT_SEEK:I = 0x5

.field public static final PLAYER_EVENT_STALLED:I = 0x4

.field public static final PLAYER_EVENT_START:I = 0x2

.field public static final VIDEO_CACHE_BLACK:Ljava/lang/String; = "videoCacheBlackList"

.field public static final VIDEO_CACHE_ENABLE:Ljava/lang/String; = "videoCacheEnable2"

.field public static final VIDEO_CDNIP_ENABLE:Ljava/lang/String; = "videoCDNIpEnable"

.field public static final mornitorNetShake:Ljava/lang/String; = "net_shake"

.field public static final mornitorOnePlay:Ljava/lang/String; = "playExperience"

.field public static final mornitorPlayerError:Ljava/lang/String; = "playerError"

.field public static final mornitorPlaying:Ljava/lang/String; = "playing"

.field public static final mornitorPtsDts:Ljava/lang/String; = "pts_dts"

.field private static final report_duration:I = 0xa


# instance fields
.field protected AppMonitor_Module:Ljava/lang/String;

.field audio_packets_:J

.field avdiff_:F

.field protected bFirstFrameRendered:Z

.field protected volatile bIsCompleteHitCache:Z

.field protected volatile bIsHitCache:Z

.field protected volatile bLooping:Z

.field protected bNeedCommitPlayExperience:Z

.field protected bSeeked:Z

.field protected volatile bUseVideoCache:Z

.field protected mAbTestAdapter:Ljjp;

.field protected mBufferingCount:J

.field protected mBufferingTotalTime:J

.field protected mBuffering_start:J

.field protected mCdnIp:Ljava/lang/String;

.field protected mCommitPlayError:Z

.field protected mConfig:Ljos;

.field protected mConfigAdapter:Ljjq;

.field protected mContext:Landroid/content/Context;

.field mEncodeType:Ljava/lang/String;

.field protected mExtInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstRenderAdapter:Ljjs;

.field protected mFirstRenderTime:J

.field mHandler:Landroid/os/Handler;

.field mLastErrorCode:I

.field mLastExtra:I

.field mLastIsConnected:I

.field protected mLastPlayTime:J

.field protected mLast_buffering:J

.field mLocalIP:Ljava/lang/String;

.field protected mLoopCount:I

.field protected mPlayUrl:Ljava/lang/String;

.field protected mPlayerEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrepareTime:J

.field mServerIP:Ljava/lang/String;

.field protected mStartTime:J

.field protected mSurface:Landroid/view/Surface;

.field protected mTlogAdapter:Ljjt;

.field protected mTotalPlayTime:J

.field protected mUserFirstRenderTime:J

.field mVia:Ljava/lang/String;

.field mVideoDuration:J

.field private mVideoToken:Ljava/lang/String;

.field video_packets_:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 133
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    .line 57
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    .line 58
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mStartTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mUserFirstRenderTime:J

    .line 59
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    .line 60
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    .line 61
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bNeedCommitPlayExperience:Z

    .line 62
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    .line 63
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCommitPlayError:Z

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    .line 77
    iput v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    iput v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastExtra:I

    const/16 v0, -0x63

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 79
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->audio_packets_:J

    .line 80
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->video_packets_:J

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->avdiff_:F

    .line 86
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVideoDuration:J

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 123
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    .line 57
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    .line 58
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mStartTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mUserFirstRenderTime:J

    .line 59
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    .line 60
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    .line 61
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bNeedCommitPlayExperience:Z

    .line 62
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    .line 63
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCommitPlayError:Z

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    .line 77
    iput v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    iput v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastExtra:I

    const/16 v0, -0x63

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 79
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->audio_packets_:J

    .line 80
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->video_packets_:J

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->avdiff_:F

    .line 86
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVideoDuration:J

    .line 124
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljjq;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configAdapter"    # Ljjq;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 127
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    .line 57
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    .line 58
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mStartTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mUserFirstRenderTime:J

    .line 59
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    .line 60
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    .line 61
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bNeedCommitPlayExperience:Z

    .line 62
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    .line 63
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCommitPlayError:Z

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    .line 77
    iput v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    iput v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastExtra:I

    const/16 v0, -0x63

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 79
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->audio_packets_:J

    .line 80
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->video_packets_:J

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->avdiff_:F

    .line 86
    iput-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVideoDuration:J

    .line 128
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    .line 131
    return-void
.end method

.method private checkFirstFrame()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 925
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 926
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 928
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;

    invoke-direct {v1, p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;-><init>(Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 941
    return-void
.end method

.method private getBaseDimensionValues()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 944
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 945
    .local v0, "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_c

    .line 946
    const-string/jumbo v1, "player_type"

    const-string/jumbo v2, "ijkplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_0
    :goto_0
    const-string/jumbo v1, "play_scenario"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget v2, v2, Ljos;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mServerIP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 956
    const-string/jumbo v1, "server_ip"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mServerIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLocalIP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 959
    const-string/jumbo v1, "local_ip"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLocalIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVia:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 962
    const-string/jumbo v1, "route_nodes"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVia:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_3
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 965
    const-string/jumbo v1, "encode_type"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    :cond_4
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 968
    const-string/jumbo v1, "media_url"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    :cond_5
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 971
    const-string/jumbo v1, "feed_id"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :cond_6
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 974
    const-string/jumbo v1, "anchor_account_id"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_7
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 977
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_8
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 980
    const-string/jumbo v1, "video_definition"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_9
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 983
    const-string/jumbo v1, "business_type"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    :cond_a
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 986
    const-string/jumbo v1, "sub_business_type"

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_b
    const-string/jumbo v1, "video_width"

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string/jumbo v1, "video_height"

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string/jumbo v1, "player_status_nodes"

    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getPlayerEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string/jumbo v1, "video_duration"

    iget-wide v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVideoDuration:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    return-object v0

    .line 948
    :cond_c
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    if-eqz v1, :cond_d

    .line 949
    const-string/jumbo v1, "player_type"

    const-string/jumbo v2, "mediaplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 951
    :cond_d
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v1, :cond_0

    .line 952
    const-string/jumbo v1, "player_type"

    const-string/jumbo v2, "taobaoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private getPlayerEvent()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1016
    if-eqz v0, :cond_0

    .line 1017
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :cond_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private monitorPlayerEvent(I)V
    .locals 6
    .param p1, "event"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 999
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1000
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    .line 1005
    :cond_0
    :goto_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1006
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 1007
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayerEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1011
    :cond_1
    :goto_1
    return-void

    .line 1001
    :cond_2
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1002
    :cond_3
    iget-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    .line 1003
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private registerMonitor()V
    .locals 64

    .prologue
    .line 730
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v60

    if-nez v60, :cond_0

    .line 731
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v18

    .line 732
    .local v18, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    const-string/jumbo v60, "player_type"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 733
    const-string/jumbo v60, "media_url"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 734
    const-string/jumbo v60, "server_ip"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 735
    const-string/jumbo v60, "local_ip"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 736
    const-string/jumbo v60, "feed_id"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 737
    const-string/jumbo v60, "anchor_account_id"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 738
    const-string/jumbo v60, "user_id"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 739
    const-string/jumbo v60, "play_scenario"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 740
    const-string/jumbo v60, "error_code"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 741
    const-string/jumbo v60, "video_width"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 742
    const-string/jumbo v60, "video_height"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 743
    const-string/jumbo v60, "encode_type"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 744
    const-string/jumbo v60, "screen_size"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 745
    const-string/jumbo v60, "video_definition"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 746
    const-string/jumbo v60, "route_nodes"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 747
    const-string/jumbo v60, "business_type"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 748
    const-string/jumbo v60, "sub_business_type"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 749
    const-string/jumbo v60, "player_status_nodes"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 750
    const-string/jumbo v60, "video_duration"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 751
    const-string/jumbo v60, "extra"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 752
    const-string/jumbo v60, "page_url"

    const-string/jumbo v61, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 754
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v29

    .line 755
    .local v29, "firstframe_render":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v48, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "first_frame_start"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 756
    .local v48, "start1":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 757
    new-instance v24, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "first_frame_end"

    move-object/from16 v0, v24

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 758
    .local v24, "end1":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v24

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 759
    new-instance v21, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "first_frame_render"

    move-object/from16 v0, v21

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 760
    .local v21, "duration1":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x40c3880000000000L    # 10000.0

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v21

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 761
    new-instance v39, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "level1_duration"

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 762
    .local v39, "level1Duration":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x40c3880000000000L    # 10000.0

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 763
    new-instance v40, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "level2_duration"

    move-object/from16 v0, v40

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 764
    .local v40, "level2Duration":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x40c3880000000000L    # 10000.0

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v40

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 765
    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 766
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 767
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 768
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 769
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "first_frame_render"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v29

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 772
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v14

    .line 773
    .local v14, "buffering":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v49, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_start_time"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 774
    .local v49, "start2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 775
    new-instance v25, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_end_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 776
    .local v25, "end2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v25

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 777
    new-instance v22, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 778
    .local v22, "duration2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x40c3880000000000L    # 10000.0

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v22

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 779
    new-instance v33, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_interval"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 780
    .local v33, "interval":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 781
    new-instance v55, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_decode_fps"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 782
    .local v55, "videoDecodeFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 783
    new-instance v52, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_cache"

    move-object/from16 v0, v52

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 784
    .local v52, "videoCache":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v52

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 785
    new-instance v6, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "audio_cache"

    move-object/from16 v0, v60

    invoke-direct {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 786
    .local v6, "audioCache":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 787
    move-object/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 788
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 789
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 790
    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 791
    move-object/from16 v0, v55

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 792
    move-object/from16 v0, v52

    invoke-virtual {v14, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 793
    invoke-virtual {v14, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "taolive_buffering"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v18

    invoke-static {v0, v1, v14, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 796
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v15

    .line 797
    .local v15, "bufferingNew":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v50, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_start_time"

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 798
    .local v50, "start2New":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v50

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 799
    new-instance v26, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_end_time"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 800
    .local v26, "end2New":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 801
    new-instance v23, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_duration"

    move-object/from16 v0, v23

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 802
    .local v23, "duration2New":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x40c3880000000000L    # 10000.0

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v23

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 803
    new-instance v35, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "buffering_interval"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 804
    .local v35, "intervalNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 805
    new-instance v57, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_decode_fps"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 806
    .local v57, "videoDecodeFpsNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 807
    new-instance v53, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_cache"

    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 808
    .local v53, "videoCacheNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v53

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 809
    new-instance v7, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "audio_cache"

    move-object/from16 v0, v60

    invoke-direct {v7, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 810
    .local v7, "audioCacheNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 811
    move-object/from16 v0, v50

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 812
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 813
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 814
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 815
    move-object/from16 v0, v57

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 816
    move-object/from16 v0, v53

    invoke-virtual {v15, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 817
    invoke-virtual {v15, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "stalled"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v18

    invoke-static {v0, v1, v15, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 820
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v41

    .line 821
    .local v41, "netshake":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v27, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "event_time"

    move-object/from16 v0, v27

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 822
    .local v27, "eventtime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 823
    new-instance v17, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "delay"

    move-object/from16 v0, v17

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 824
    .local v17, "delay":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x40c3880000000000L    # 10000.0

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v25

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 825
    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 826
    move-object/from16 v0, v41

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "net_shake"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v41

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 829
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v47

    .line 830
    .local v47, "ptsdts":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v30, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "frame_count"

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 831
    .local v30, "framecount":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 832
    new-instance v46, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "pts"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 833
    .local v46, "pts":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 834
    new-instance v19, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "dts"

    move-object/from16 v0, v19

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 835
    .local v19, "dts":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v19

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 836
    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 837
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 838
    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "pts_dts"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v47

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 841
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v44

    .line 842
    .local v44, "playerError":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v51, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "time_stamp"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 843
    .local v51, "timeStamp":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 844
    new-instance v36, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "is_connected"

    move-object/from16 v0, v36

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 845
    .local v36, "isConnected":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v36

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 846
    new-instance v37, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "is_tbnet"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 847
    .local v37, "isTBNet":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 848
    new-instance v32, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "hardware_hevc"

    move-object/from16 v0, v32

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 849
    .local v32, "hardware_hevc":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v32

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 850
    new-instance v31, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "hardware_avc"

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 851
    .local v31, "hardware_avc":Lcom/alibaba/mtl/appmonitor/model/Measure;
    new-instance v38, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "is_usecache"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 852
    .local v38, "is_usecache":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 853
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 854
    new-instance v34, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_interval_bit_rate"

    move-object/from16 v0, v34

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 855
    .local v34, "intervalBitrate":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v34

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 856
    new-instance v16, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "cur_position"

    move-object/from16 v0, v16

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 857
    .local v16, "curPosition":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v16

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 858
    move-object/from16 v0, v44

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 859
    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 860
    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 861
    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 862
    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 863
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 864
    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 865
    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "playerError"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v44

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 868
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v42

    .line 869
    .local v42, "playExperience":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v13, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_avg_fps"

    move-object/from16 v0, v60

    invoke-direct {v13, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 870
    .local v13, "avgFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 871
    new-instance v10, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_avg_bit_rate"

    move-object/from16 v0, v60

    invoke-direct {v10, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 872
    .local v10, "avgBitrate":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 873
    new-instance v4, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "abnormal_count"

    move-object/from16 v0, v60

    invoke-direct {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 874
    .local v4, "abnormalCount":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 875
    new-instance v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "abnormal_total_time"

    move-object/from16 v0, v60

    invoke-direct {v5, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 876
    .local v5, "abnormalTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 877
    new-instance v28, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "first_frame_rendering_time"

    move-object/from16 v0, v28

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 878
    .local v28, "firstRenderTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v28

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 879
    new-instance v43, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "play_time"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 880
    .local v43, "playTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 881
    new-instance v11, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_avg_decode_fps"

    move-object/from16 v0, v60

    invoke-direct {v11, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 882
    .local v11, "avgDecodeFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 883
    new-instance v12, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_avg_download_fps"

    move-object/from16 v0, v60

    invoke-direct {v12, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 884
    .local v12, "avgDownloadFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 885
    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 886
    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 887
    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 888
    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 889
    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 890
    invoke-virtual/range {v42 .. v43}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 891
    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 892
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "playExperience"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v42

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 895
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v45

    .line 896
    .local v45, "playing":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    new-instance v20, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "duration"

    move-object/from16 v0, v20

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 897
    .local v20, "duration":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v20

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 898
    new-instance v58, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_interval_download_fps"

    move-object/from16 v0, v58

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 899
    .local v58, "videoDownloadFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v58

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 900
    new-instance v56, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_interval_decode_fps"

    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 901
    .local v56, "videoDecodeFps2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v56

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 902
    new-instance v59, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_interval_fps"

    invoke-direct/range {v59 .. v60}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 903
    .local v59, "videoRenderFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    invoke-virtual/range {v59 .. v61}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 904
    new-instance v54, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "video_cache"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 905
    .local v54, "videoCachedPackets":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 906
    new-instance v8, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "audio_cache"

    move-object/from16 v0, v60

    invoke-direct {v8, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 907
    .local v8, "audioCachedPackets":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 908
    new-instance v9, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v60, "av_diff"

    move-object/from16 v0, v60

    invoke-direct {v9, v0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 909
    .local v9, "avDiff":Lcom/alibaba/mtl/appmonitor/model/Measure;
    const-wide/16 v60, 0x0

    invoke-static/range {v60 .. v61}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v60

    const-wide v62, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 910
    move-object/from16 v0, v45

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 911
    move-object/from16 v0, v45

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 912
    move-object/from16 v0, v45

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 913
    move-object/from16 v0, v45

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 914
    move-object/from16 v0, v45

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 915
    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 916
    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v60, v0

    const-string/jumbo v61, "playing"

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v45

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v4    # "abnormalCount":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v5    # "abnormalTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v6    # "audioCache":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v7    # "audioCacheNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v8    # "audioCachedPackets":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v9    # "avDiff":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v10    # "avgBitrate":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v11    # "avgDecodeFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v12    # "avgDownloadFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v13    # "avgFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v14    # "buffering":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v15    # "bufferingNew":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v16    # "curPosition":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v17    # "delay":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v18    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v19    # "dts":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v20    # "duration":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v21    # "duration1":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v22    # "duration2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v23    # "duration2New":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v24    # "end1":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v25    # "end2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v26    # "end2New":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v27    # "eventtime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v28    # "firstRenderTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v29    # "firstframe_render":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v30    # "framecount":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v31    # "hardware_avc":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v32    # "hardware_hevc":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v33    # "interval":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v34    # "intervalBitrate":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v35    # "intervalNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v36    # "isConnected":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v37    # "isTBNet":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v38    # "is_usecache":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v39    # "level1Duration":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v40    # "level2Duration":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v41    # "netshake":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v42    # "playExperience":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v43    # "playTime":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v44    # "playerError":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v45    # "playing":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v46    # "pts":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v47    # "ptsdts":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v48    # "start1":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v49    # "start2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v50    # "start2New":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v51    # "timeStamp":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v52    # "videoCache":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v53    # "videoCacheNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v54    # "videoCachedPackets":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v55    # "videoDecodeFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v56    # "videoDecodeFps2":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v57    # "videoDecodeFpsNew":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v58    # "videoDownloadFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v59    # "videoRenderFps":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v60

    goto :goto_0
.end method

.method private useCache()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget v1, v1, Ljos;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    const-string/jumbo v2, ".m3u8"

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v1}, Ljjq;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljok;->a(Ljava/lang/String;)Z

    move-result v0

    .line 183
    .local v0, "bCache":Z
    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->q:Ljava/lang/String;

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v2}, Ljjq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljok;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 190
    .end local v0    # "bCache":Z
    :cond_1
    :goto_1
    return v0

    .line 182
    :cond_2
    const-string/jumbo v1, "true"

    goto :goto_0

    .line 190
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getCdnIp()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1025
    :try_start_0
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 1026
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1027
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1028
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1029
    .local v2, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 1030
    .local v4, "simOp":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "460"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1032
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v6}, Ljjq;->a()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "host":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1043
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "manager":Landroid/telephony/TelephonyManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    .end local v4    # "simOp":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 1032
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v3    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "simOp":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "mtbtraffic.danuoyi.alicdn.com"

    goto :goto_0

    .line 1036
    :cond_1
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    if-eqz v6, :cond_2

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfigAdapter:Ljjq;

    invoke-interface {v6}, Ljjq;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljok;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1037
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1038
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljx;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "manager":Landroid/telephony/TelephonyManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    .end local v4    # "simOp":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1043
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getConfig()Ljos;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isCompleteHitCache()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsCompleteHitCache:Z

    return v0
.end method

.method public isHardwareDecode()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public isHitCache()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsHitCache:Z

    return v0
.end method

.method public isUseVideoCache()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    return v0
.end method

.method protected monitorBufferEnd()V
    .locals 22

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bSeeked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 513
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bSeeked:Z

    goto :goto_0

    .line 516
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 517
    .local v6, "buffering_end":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    move-wide/from16 v18, v0

    sub-long v10, v6, v18

    .line 518
    .local v10, "duration":J
    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-ltz v18, :cond_0

    const-wide/16 v18, 0x2710

    cmp-long v18, v10, v18

    if-gtz v18, :cond_0

    .line 520
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v12, v0

    .line 521
    .local v12, "interval":D
    :goto_1
    move-object/from16 v0, p0

    iput-wide v6, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    .line 522
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    .line 523
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    move-wide/from16 v18, v0

    add-long v18, v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    .line 525
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    move-wide/from16 v18, v0

    sub-long v18, v6, v18

    const-wide/32 v20, 0x493e0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    .line 526
    invoke-direct/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v8

    .line 527
    .local v8, "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 528
    .local v14, "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v18, "buffering_start_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string/jumbo v18, "buffering_end_time"

    long-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string/jumbo v18, "buffering_duration"

    long-to-double v0, v10

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string/jumbo v18, "buffering_interval"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 533
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v18, v0

    const/16 v19, 0x2711

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 534
    .local v16, "videoDecodeFps":D
    const-string/jumbo v18, "video_decode_fps"

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v16    # "videoDecodeFps":D
    :cond_3
    invoke-static {v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v5

    .line 537
    .local v5, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v9

    .line 538
    .local v9, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "taolive_buffering"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 541
    .end local v5    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v8    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v14    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_4
    invoke-direct/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v8

    .line 542
    .restart local v8    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 543
    .restart local v14    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v18, "buffering_start_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v18, "buffering_end_time"

    long-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string/jumbo v18, "buffering_duration"

    long-to-double v0, v10

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v18, "buffering_interval"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 548
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v18, v0

    const/16 v19, 0x2711

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 549
    .restart local v16    # "videoDecodeFps":D
    const-string/jumbo v18, "video_decode_fps"

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v16    # "videoDecodeFps":D
    :cond_5
    invoke-static {v8}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v5

    .line 552
    .restart local v5    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v9

    .line 553
    .restart local v9    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "stalled"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 555
    new-instance v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;

    invoke-direct {v4}, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;-><init>()V

    .line 556
    .local v4, "baseInfo":Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Ljos;->b:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    sget-object v18, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->VOD:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    :goto_2
    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->mediaType:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljos;->u:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->videoFormat:Ljava/lang/String;

    .line 558
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "VPM-"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->sourceIdentity:Ljava/lang/String;

    .line 559
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 560
    const-string/jumbo v18, "ijkplayer"

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->playerCore:Ljava/lang/String;

    .line 568
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mExtInfo:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->extInfoData:Ljava/util/Map;

    .line 569
    new-instance v15, Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;

    invoke-direct {v15}, Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;-><init>()V

    .line 570
    .local v15, "statisticsInfo":Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;
    long-to-double v0, v10

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;->impairmentDuration:D

    .line 571
    iput-wide v12, v15, Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;->impairmentInterval:D

    .line 572
    invoke-static {v4, v15}, Lcom/alibaba/motu/videoplayermonitor/MotuVideoPlayerMonitor;->commitImpairmentStatistic(Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;)V

    goto/16 :goto_0

    .line 576
    .end local v4    # "baseInfo":Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;
    .end local v5    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v8    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v14    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v15    # "statisticsInfo":Lcom/alibaba/motu/videoplayermonitor/impairmentStatistics/ImpairmentStatisticsInfo;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 520
    .end local v12    # "interval":D
    :cond_7
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 556
    .restart local v4    # "baseInfo":Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;
    .restart local v5    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v8    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v12    # "interval":D
    .restart local v14    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_8
    sget-object v18, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->LIVE:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    goto :goto_2

    .line 562
    :cond_9
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 563
    const-string/jumbo v18, "mediaplayer"

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->playerCore:Ljava/lang/String;

    goto :goto_3

    .line 565
    :cond_a
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 566
    const-string/jumbo v18, "taobaoplayer"

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaBase;->playerCore:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method protected monitorBufferStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBuffering_start:J

    .line 506
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 507
    return-void
.end method

.method protected monitorComplete()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 374
    iget v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLoopCount:I

    .line 375
    return-void
.end method

.method protected monitorDataSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    :goto_0
    return-object v3

    .line 218
    :cond_0
    iput-boolean v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    .line 219
    iput-boolean v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsHitCache:Z

    .line 220
    iput-boolean v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsCompleteHitCache:Z

    .line 221
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getCdnIp()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCdnIp:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->useCache()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x64

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v0, "appendQuery":Ljava/lang/StringBuilder;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 227
    const/4 v1, 0x0

    .line 230
    .local v1, "cacheKey":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "videoCacheId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCdnIp:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "&cdnIp="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCdnIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "&playTokenId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_2
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v6, v0}, Ljok;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    .line 237
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v6, v7}, Ljni;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "proxyUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 239
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mAbTestAdapter:Ljjp;

    if-eqz v6, :cond_3

    const-string/jumbo v6, "useCache"

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mAbTestAdapter:Ljjp;

    invoke-interface {v7}, Ljjp;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 245
    :cond_3
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljni;->a(Landroid/content/Context;)Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    move-result-object v2

    .line 246
    .local v2, "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    .line 1235
    .end local v3    # "proxyUrl":Ljava/lang/String;
    iget-boolean v6, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->d:Z

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    iget-object v6, v6, Ljnl;->a:Ljava/io/File;

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    iget-object v6, v6, Ljnl;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    iget-object v6, v6, Ljnl;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1236
    invoke-virtual {v2, v3}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2216
    .restart local v3    # "proxyUrl":Ljava/lang/String;
    :goto_2
    iget-boolean v6, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->d:Z

    .line 247
    iput-boolean v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    .line 248
    iput-boolean v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsCompleteHitCache:Z

    .line 249
    iget-boolean v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    .line 2279
    iget-object v7, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    invoke-virtual {v7, v6}, Ljnl;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 2280
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".download"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_5

    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    move v6, v4

    .line 249
    :goto_3
    if-eqz v6, :cond_9

    :goto_4
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsHitCache:Z

    goto/16 :goto_0

    .line 229
    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v2    # "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    .end local v3    # "proxyUrl":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v7, v7, Ljos;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v7, v7, Ljos;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v7, v7, Ljos;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cacheKey":Ljava/lang/String;
    goto/16 :goto_1

    .line 1238
    .restart local v2    # "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    :cond_7
    iput-boolean v5, v2, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->d:Z

    goto/16 :goto_2

    .restart local v3    # "proxyUrl":Ljava/lang/String;
    :cond_8
    move v6, v5

    .line 2281
    goto :goto_3

    :cond_9
    move v4, v5

    .line 249
    goto :goto_4

    .line 252
    .end local v2    # "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    :cond_a
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    :cond_b
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    .line 257
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsCompleteHitCache:Z

    .line 258
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsHitCache:Z

    goto/16 :goto_0

    .line 263
    .end local v0    # "appendQuery":Ljava/lang/StringBuilder;
    .end local v1    # "cacheKey":Ljava/lang/String;
    .end local v3    # "proxyUrl":Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected monitorError(II)V
    .locals 18
    .param p1, "errorCode"    # I
    .param p2, "extra"    # I

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCommitPlayError:Z

    if-eqz v12, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const/4 v12, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 308
    const/4 v12, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCommitPlayError:Z

    .line 309
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    .line 310
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastExtra:I

    .line 311
    invoke-direct/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v6

    .line 312
    .local v6, "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "error_code"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v12, "extra"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    instance-of v12, v12, Landroid/app/Activity;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    .line 316
    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 317
    const-string/jumbo v13, "page_url"

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v9, "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v12, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v12, "is_tbnet"

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string/jumbo v12, "hardware_hevc"

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v12, "hardware_avc"

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v14, "is_usecache"

    move-object/from16 v0, p0

    iget-boolean v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    if-eqz v12, :cond_6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v9, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_3

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 327
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 328
    .local v10, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    .line 329
    const-string/jumbo v12, "is_connected"

    move-object/from16 v0, p0

    iget v13, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v10    # "netInfo":Landroid/net/NetworkInfo;
    :cond_3
    move-object/from16 v0, p0

    instance-of v12, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v12, :cond_4

    .line 332
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object v11, v0

    .line 333
    .local v11, "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const/16 v12, 0x4ea2

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v12, v14, v15}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v2

    .line 334
    .local v2, "bitRate":J
    const-string/jumbo v12, "video_interval_bit_rate"

    long-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v2    # "bitRate":J
    .end local v11    # "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_4
    const-string/jumbo v12, "cur_position"

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getCurrentPosition()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v5

    .line 338
    .local v5, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v8

    .line 339
    .local v8, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    const-string/jumbo v13, "playerError"

    invoke-static {v12, v13, v5, v8}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 341
    new-instance v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;

    invoke-direct {v7}, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;-><init>()V

    .line 342
    .local v7, "info":Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget v12, v12, Ljos;->b:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    sget-object v12, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->VOD:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    :goto_3
    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->mediaType:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v12, v12, Ljos;->u:Ljava/lang/String;

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->videoFormat:Ljava/lang/String;

    .line 344
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->errorCode:Ljava/lang/String;

    .line 345
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "VPM-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->sourceIdentity:Ljava/lang/String;

    .line 346
    move-object/from16 v0, p0

    instance-of v12, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v12, :cond_9

    .line 347
    const-string/jumbo v12, "ijkplayer"

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->playerCore:Ljava/lang/String;

    .line 355
    :cond_5
    :goto_4
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->isSuccess:Ljava/lang/Boolean;

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mExtInfo:Ljava/util/Map;

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->extInfoData:Ljava/util/Map;

    .line 357
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/alibaba/motu/videoplayermonitor/MotuVideoPlayerMonitor;->commitPlayErrInfoStatistics(Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 361
    .end local v5    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v6    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "info":Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;
    .end local v8    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v9    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 324
    .restart local v6    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_6
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 328
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    .restart local v10    # "netInfo":Landroid/net/NetworkInfo;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 342
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v10    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v5    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v7    # "info":Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;
    .restart local v8    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_8
    sget-object v12, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->LIVE:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    goto :goto_3

    .line 349
    :cond_9
    move-object/from16 v0, p0

    instance-of v12, v0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    if-eqz v12, :cond_a

    .line 350
    const-string/jumbo v12, "mediaplayer"

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->playerCore:Ljava/lang/String;

    goto :goto_4

    .line 352
    :cond_a
    move-object/from16 v0, p0

    instance-of v12, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    if-eqz v12, :cond_5

    .line 353
    const-string/jumbo v12, "taobaoplayer"

    iput-object v12, v7, Lcom/alibaba/motu/videoplayermonitor/errorStatistics/MotuVideoPlayErrInfo;->playerCore:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method protected monitorKeyFramePts(J)V
    .locals 9
    .param p1, "pts"    # J

    .prologue
    .line 384
    :try_start_0
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pts:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "info_log":Ljava/lang/String;
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    const-string/jumbo v6, "key_frame_pts"

    invoke-static {v5, v6, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v1

    .line 389
    .local v1, "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v4, "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v5, "frame_count"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v5, "pts"

    long-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v5, "dts"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 394
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 395
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    const-string/jumbo v6, "pts_dts"

    invoke-static {v5, v6, v0, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "info_log":Ljava/lang/String;
    .end local v3    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v4    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected monitorNetShake(J)V
    .locals 11
    .param p1, "delay"    # J

    .prologue
    .line 404
    :try_start_0
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 406
    .local v0, "curtime":J
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v3

    .line 407
    .local v3, "dimensionValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v5, "measureValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v6, "event_time"

    long-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v6, "delay"

    long-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    .line 411
    .local v2, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v4

    .line 412
    .local v4, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    iget-object v6, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    const-string/jumbo v7, "net_shake"

    invoke-static {v6, v7, v2, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "curtime":J
    .end local v2    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "dimensionValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v5    # "measureValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected monitorPause()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 370
    return-void
.end method

.method protected monitorPlayExperience()V
    .locals 32

    .prologue
    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bNeedCommitPlayExperience:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bNeedCommitPlayExperience:Z

    .line 583
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_2

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    .line 585
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastPlayTime:J

    .line 589
    :cond_2
    invoke-direct/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v13

    .line 590
    .local v13, "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v24, "screen_size"

    new-instance v25, Ljava/text/DecimalFormat;

    const-string/jumbo v26, "0.0"

    invoke-direct/range {v25 .. v26}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljok;->a(Landroid/content/Context;)D

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 592
    .local v21, "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v24, "abnormal_count"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string/jumbo v24, "abnormal_total_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string/jumbo v24, "first_frame_rendering_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v24, "play_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 597
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e92

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v16

    .line 598
    .local v16, "fps":J
    const-string/jumbo v24, "video_avg_fps"

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e91

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v10

    .line 600
    .local v10, "decode_fps":J
    const-string/jumbo v24, "video_avg_decode_fps"

    long-to-double v0, v10

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e90

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v14

    .line 602
    .local v14, "download_fps":J
    const-string/jumbo v24, "video_avg_download_fps"

    long-to-double v0, v14

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e93

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v6

    .line 604
    .local v6, "bitrate":J
    const-string/jumbo v24, "video_avg_bit_rate"

    long-to-double v0, v6

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .end local v6    # "bitrate":J
    .end local v10    # "decode_fps":J
    .end local v14    # "download_fps":J
    .end local v16    # "fps":J
    :cond_3
    :goto_1
    invoke-static {v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v12

    .line 613
    .local v12, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static/range {v21 .. v21}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v20

    .line 614
    .local v20, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "playExperience"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 617
    const-string/jumbo v25, "Page_Video"

    sget-object v26, Lcom/taobao/statistic/CT;->Button:Lcom/taobao/statistic/CT;

    const-string/jumbo v27, "PlayExperience"

    const/16 v24, 0x23

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "player_type="

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, "player_type"

    .line 618
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v28, v29

    const/16 v24, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "play_scenario="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Ljos;->b:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x2

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "server_ip="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mServerIP:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x3

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "route_nodes="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVia:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x4

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "media_url="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x5

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "feed_id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Ljos;->s:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x6

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "anchor_account_id="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Ljos;->t:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x7

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_definition="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Ljos;->u:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x8

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "business_type="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Ljos;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x9

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "sub_business_type="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Ljos;->q:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0xa

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_width="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getVideoWidth()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0xb

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_height="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getVideoHeight()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0xc

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "player_status_nodes="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-direct/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getPlayerEvent()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0xd

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_duration="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVideoDuration:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v29, 0xe

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "screen_size="

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, "screen_size"

    .line 632
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v28, v29

    const/16 v24, 0xf

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "encode_type="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x10

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "abnormal_count="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x11

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "abnormal_total_time="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x12

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "first_frame_rendering_time="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x13

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "user_first_frame_time="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mUserFirstRenderTime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x14

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "play_time="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTotalPlayTime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x15

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_avg_fps="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "video_avg_fps"

    .line 639
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x16

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_avg_decode_fps="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "video_avg_decode_fps"

    .line 640
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x17

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_avg_download_fps="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "video_avg_download_fps"

    .line 641
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x18

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "video_avg_bit_rate="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "video_avg_bit_rate"

    .line 642
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x19

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "loop_count="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLoopCount:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x1a

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "hardware_hevc="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x1b

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "hardware_avc="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v29, 0x1c

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "complete_hit_cache="

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bIsCompleteHitCache:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v28, v29

    const/16 v24, 0x1d

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "is_tbnet="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v29, 0x1e

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "is_usecache="

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v28, v29

    const/16 v24, 0x1f

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "play_token="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x20

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "error_code="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x21

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "extra="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastExtra:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    const/16 v24, 0x22

    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "is_connected="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v28, v24

    .line 617
    invoke-static/range {v25 .. v28}, Lcom/taobao/statistic/TBS$Adv;->ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V

    .line 655
    new-instance v22, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;-><init>()V

    .line 656
    .local v22, "mediaInfo":Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Ljos;->b:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->VOD:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->mediaType:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Ljos;->u:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoFormat:Ljava/lang/String;

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljok;->a(Landroid/content/Context;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->screenSize:D

    .line 659
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getVideoWidth()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoWidth:I

    .line 660
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getVideoHeight()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoHeight:I

    .line 661
    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "VPM-"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->sourceIdentity:Ljava/lang/String;

    .line 662
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 663
    const-string/jumbo v24, "ijkplayer"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->playerCore:Ljava/lang/String;

    .line 671
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 672
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e94

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 673
    .local v8, "codec":I
    sparse-switch v8, :sswitch_data_0

    .line 690
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->OTHER:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    .line 708
    .end local v8    # "codec":I
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mExtInfo:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->extInfoData:Ljava/util/Map;

    .line 709
    new-instance v23, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;-><init>()V

    .line 710
    .local v23, "statisticsInfo":Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 711
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e92

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v16

    .line 712
    .restart local v16    # "fps":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->videoFrameRate:D

    .line 713
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e93

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v6

    .line 714
    .restart local v6    # "bitrate":J
    long-to-double v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->avgVideoBitrate:D

    .line 715
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x4e96

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v18

    .line 716
    .local v18, "level1Duration":J
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->videoUrlReqTime:D

    .line 718
    .end local v6    # "bitrate":J
    .end local v16    # "fps":J
    .end local v18    # "level1Duration":J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->impairmentFrequency:D

    .line 719
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->impairmentDuration:D

    .line 720
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->videoFirstFrameDuration:D

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;->duration:D

    .line 722
    invoke-static/range {v22 .. v23}, Lcom/alibaba/motu/videoplayermonitor/MotuVideoPlayerMonitor;->commitPlayKeyStatistics(Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;)V

    goto/16 :goto_0

    .line 726
    .end local v12    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v13    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v21    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v22    # "mediaInfo":Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;
    .end local v23    # "statisticsInfo":Lcom/alibaba/motu/videoplayermonitor/MotuStatisticsInfo;
    :catch_0
    move-exception v24

    goto/16 :goto_0

    .line 606
    .restart local v13    # "dimensionValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "measureValues_buffer":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 607
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x2716

    invoke-virtual/range {v24 .. v25}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->getProperty64(I)J

    move-result-wide v16

    .line 608
    .restart local v16    # "fps":J
    const-string/jumbo v24, "video_avg_fps"

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x2717

    invoke-virtual/range {v24 .. v25}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->getProperty64(I)J

    move-result-wide v4

    .line 610
    .local v4, "birate":J
    const-string/jumbo v24, "video_avg_bit_rate"

    long-to-double v0, v4

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 642
    .end local v4    # "birate":J
    .end local v16    # "fps":J
    .restart local v12    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v20    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 656
    .restart local v22    # "mediaInfo":Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;
    :cond_a
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->LIVE:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    goto/16 :goto_4

    .line 665
    :cond_b
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 666
    const-string/jumbo v24, "mediaplayer"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->playerCore:Ljava/lang/String;

    goto/16 :goto_5

    .line 668
    :cond_c
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 669
    const-string/jumbo v24, "taobaoplayer"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->playerCore:Ljava/lang/String;

    goto/16 :goto_5

    .line 675
    .restart local v8    # "codec":I
    :sswitch_0
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H264:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 678
    :sswitch_1
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H263:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 681
    :sswitch_2
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->HEVC:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 684
    :sswitch_3
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->VP9:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 687
    :sswitch_4
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->MP4:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 694
    .end local v8    # "codec":I
    :cond_d
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 695
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x2715

    invoke-virtual/range {v24 .. v25}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->getProperty64(I)J

    move-result-wide v8

    .line 696
    .local v8, "codec":J
    long-to-int v0, v8

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 704
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->OTHER:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 698
    :pswitch_0
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->H264:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    goto/16 :goto_6

    .line 701
    :pswitch_1
    sget-object v24, Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;->HEVC:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/motu/videoplayermonitor/MotuMediaInfo;->videoCode:Lcom/alibaba/motu/videoplayermonitor/model/MotuVideoCode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 673
    .line 696
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_4
        0x14 -> :sswitch_1
        0x1c -> :sswitch_0
        0xa8 -> :sswitch_3
        0xae -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected monitorPrepare()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bNeedCommitPlayExperience:Z

    .line 274
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    .line 275
    iput-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingCount:J

    .line 276
    iput-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mBufferingTotalTime:J

    .line 277
    iput-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    .line 278
    iput-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLast_buffering:J

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    .line 280
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mCommitPlayError:Z

    .line 281
    iput v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    .line 282
    iput v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastExtra:I

    .line 283
    const/16 v0, -0x63

    iput v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastIsConnected:I

    .line 284
    return-void
.end method

.method protected monitorPrepared(J)V
    .locals 9
    .param p1, "preparedTime"    # J

    .prologue
    .line 287
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    move-wide v0, p1

    .line 288
    .local v0, "endtime":J
    :goto_0
    iget-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    sub-long v4, v0, v4

    iput-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    .line 289
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVideoDuration:J

    .line 290
    instance-of v3, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 291
    check-cast v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 292
    .local v2, "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const/16 v3, 0x520b

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mServerIP:Ljava/lang/String;

    .line 293
    const/16 v3, 0x520c

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLocalIP:Ljava/lang/String;

    .line 294
    const/16 v3, 0x4e99

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mVia:Ljava/lang/String;

    .line 300
    .end local v2    # "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 301
    return-void

    .line 287
    .end local v0    # "endtime":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected monitorRelease()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 426
    iput-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 428
    :cond_0
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bUseVideoCache:Z

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljni;->a(Landroid/content/Context;)Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    move-result-object v0

    .line 430
    .local v0, "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPlayUrl:Ljava/lang/String;

    .line 3221
    iget-object v2, v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 3222
    :try_start_0
    iget-object v3, v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c:Ljnl;

    iget-object v3, v3, Ljnl;->b:Ljoc;

    invoke-interface {v3, v1}, Ljoc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3223
    iget-object v1, v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3224
    iget-object v1, v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljnq;

    .line 3225
    iget-object v4, v0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3226
    if-nez v1, :cond_2

    .line 3227
    monitor-exit v2

    .line 3230
    .end local v0    # "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    :cond_1
    :goto_0
    return-void

    .line 3228
    .restart local v0    # "proxyCacheServer":Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
    :cond_2
    invoke-virtual {v1}, Ljnq;->c()V

    .line 3230
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected monitorRenderStart(J)V
    .locals 23
    .param p1, "renderTime"    # J

    .prologue
    .line 435
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    .line 436
    const-wide/16 v18, 0x0

    cmp-long v17, p1, v18

    if-lez v17, :cond_4

    move-wide/from16 v8, p1

    .line 437
    .local v8, "endtime":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v8, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderAdapter:Ljjs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderAdapter:Ljjs;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljjs;->a()J

    move-result-wide v18

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mUserFirstRenderTime:J

    .line 442
    :goto_1
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p0

    .line 443
    check-cast v17, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/16 v18, 0x4e94

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v4

    .line 444
    .local v4, "codec":J
    long-to-int v0, v4

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 473
    .end local v4    # "codec":J
    :cond_0
    :goto_2
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 475
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x2710

    cmp-long v17, v18, v20

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 478
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljos;->s:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljos;->t:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mServerIP:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLocalIP:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->video_packets_:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->audio_packets_:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->avdiff_:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljos;->r:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 479
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "isVideoOutInTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v16    # "msg":Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->getBaseDimensionValues()Ljava/util/HashMap;

    move-result-object v7

    .line 482
    .local v7, "dimensionValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v15, "measureValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v17, "first_frame_start"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mPrepareTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string/jumbo v17, "first_frame_end"

    long-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string/jumbo v17, "first_frame_render"

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 487
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v17, v0

    const/16 v18, 0x4e96

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v10

    .line 488
    .local v10, "level1Duration":J
    const-string/jumbo v17, "level1_duration"

    long-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-object/from16 v0, p0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v17, v0

    const/16 v18, 0x4e97

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v12

    .line 490
    .local v12, "level2Duration":J
    const-string/jumbo v17, "level2_duration"

    long-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v10    # "level1Duration":J
    .end local v12    # "level2Duration":J
    :cond_2
    invoke-static {v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 493
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v14

    .line 494
    .local v14, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "first_frame_render"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v14}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v6    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v7    # "dimensionValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v15    # "measureValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_3
    :goto_3
    return-void

    .line 436
    .end local v8    # "endtime":J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto/16 :goto_0

    .line 441
    .restart local v8    # "endtime":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mUserFirstRenderTime:J

    goto/16 :goto_1

    .line 446
    .restart local v4    # "codec":J
    :sswitch_0
    const-string/jumbo v17, "H264"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 449
    :sswitch_1
    const-string/jumbo v17, "H263"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 452
    :sswitch_2
    const-string/jumbo v17, "H265"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 455
    :sswitch_3
    const-string/jumbo v17, "VP9"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 458
    :sswitch_4
    const-string/jumbo v17, "MP4"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 462
    .end local v4    # "codec":J
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v17, p0

    .line 463
    check-cast v17, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    const/16 v18, 0x2715

    invoke-virtual/range {v17 .. v18}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->getProperty64(I)J

    move-result-wide v4

    .line 464
    .restart local v4    # "codec":J
    long-to-int v0, v4

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_2

    .line 466
    :pswitch_0
    const-string/jumbo v17, "H264"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 469
    :pswitch_1
    const-string/jumbo v17, "H265"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mEncodeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 502
    .end local v4    # "codec":J
    :catch_0
    move-exception v17

    goto/16 :goto_3

    .line 444
    .line 464
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_4
        0x14 -> :sswitch_1
        0x1c -> :sswitch_0
        0xa8 -> :sswitch_3
        0xae -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected monitorReset()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method protected monitorSeek()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bSeeked:Z

    .line 379
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 380
    return-void
.end method

.method protected monitorStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mStartTime:J

    .line 365
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->monitorPlayerEvent(I)V

    .line 366
    return-void
.end method

.method public setABtestAdapter(Ljjp;)V
    .locals 0
    .param p1, "abTestAdapter"    # Ljjp;

    .prologue
    .line 269
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mAbTestAdapter:Ljjp;

    .line 270
    return-void
.end method

.method public setConfig(Ljos;)V
    .locals 4
    .param p1, "config"    # Ljos;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 137
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    .line 138
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v1, v1, Ljos;->p:Ljava/lang/String;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "TBLive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const-string/jumbo v1, "TBMediaPlayerBundle-android"

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    .line 144
    :goto_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->registerMonitor()V

    .line 145
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->checkFirstFrame()V

    .line 147
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void

    .line 143
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "TBMediaPlayerBundle-video"

    iput-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExtInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "extInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mExtInfo:Ljava/util/Map;

    .line 167
    return-void
.end method

.method public setFirstRenderAdapter(Ljjs;)V
    .locals 0
    .param p1, "adapter"    # Ljjs;

    .prologue
    .line 158
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mFirstRenderAdapter:Ljjs;

    .line 159
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bLooping:Z

    .line 171
    return-void
.end method

.method public setTlogAdapter(Ljjt;)V
    .locals 0
    .param p1, "adapter"    # Ljjt;

    .prologue
    .line 162
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mTlogAdapter:Ljjt;

    .line 163
    return-void
.end method

.method protected useNoTraffic()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method
