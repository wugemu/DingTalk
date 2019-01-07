.class public final Ljkn;
.super Ljava/lang/Object;
.source "TaoMuxEncoder.java"


# instance fields
.field public a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V
    .locals 1
    .param p1, "taoMediaRecorder"    # Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljkn;->b:Ljava/lang/Object;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljkn;->c:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 13
    return-void
.end method


# virtual methods
.method public final a([BJ)I
    .locals 4
    .param p1, "pVideoBuffer"    # [B
    .param p2, "iVideoTimeStamp"    # J

    .prologue
    .line 46
    iget-object v1, p0, Ljkn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    :try_start_0
    invoke-static {p1, v2, v3}, Lcom/taobao/media/MediaEncoderMgr;->EncodeVideoFrame([BJ)I

    move-result v0

    monitor-exit v1

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a([BJJ)I
    .locals 4
    .param p1, "pAudioBuffer"    # [B
    .param p2, "iAudioSamCount"    # J
    .param p4, "timestamp"    # J

    .prologue
    .line 52
    iget-object v1, p0, Ljkn;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p4

    :try_start_0
    invoke-static {p1, p2, p3, v2, v3}, Lcom/taobao/media/MediaEncoderMgr;->EncodeAudioFrame([BJJ)I

    move-result v0

    monitor-exit v1

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
