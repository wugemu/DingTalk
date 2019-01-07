.class public final Ljko;
.super Ljava/lang/Object;
.source "TaoVideoRecorder.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Z

.field private b:Ljkp;

.field private c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

.field private d:Ljkk;


# direct methods
.method public constructor <init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V
    .locals 4
    .param p1, "taoMediaRecorder"    # Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Ljko;->b:Ljkp;

    .line 26
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljko;->a:Z

    .line 37
    iput-object p1, p0, Ljko;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 39
    iget-object v1, p0, Ljko;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 1066
    iget-object v0, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    .line 41
    .local v0, "taoMediaProfile":Ljkm;
    iget-object v1, p0, Ljko;->b:Ljkp;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljkp;

    iget v2, v0, Ljkm;->i:I

    iget v3, v0, Ljkm;->j:I

    invoke-direct {v1, v2, v3}, Ljkp;-><init>(II)V

    iput-object v1, p0, Ljko;->b:Ljkp;

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljko;->d:Ljkk;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljko;->d:Ljkk;

    .line 3068
    iget-object v3, v2, Ljkk;->a:Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljkk;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljkk;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 3068
    goto :goto_0

    .line 81
    :cond_1
    :try_start_1
    new-instance v0, Ljkk;

    const-string/jumbo v1, "recorderThread"

    invoke-direct {v0, v1, p0}, Ljkk;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljko;->d:Ljkk;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljko;->a:Z

    .line 83
    iget-object v0, p0, Ljko;->d:Ljkk;

    .line 4064
    iget-object v0, v0, Ljkk;->a:Landroid/os/Handler;

    .line 83
    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 126
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Ljko;->a:Z

    .line 127
    iget-object v1, p0, Ljko;->b:Ljkp;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Ljko;->b:Ljkp;

    .line 5029
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 5030
    iget-object v2, v1, Ljkp;->a:[Ljkp$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 5031
    iget-object v2, v1, Ljkp;->a:[Ljkp$a;

    aget-object v2, v2, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Ljkp$a;->b:J

    .line 5029
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Ljko;->d:Ljkk;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Ljko;->d:Ljkk;

    invoke-virtual {v0}, Ljkk;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_2
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 5090
    :pswitch_0
    const/16 v0, 0x32

    .line 5093
    iget-object v1, p0, Ljko;->b:Ljkp;

    invoke-virtual {v1}, Ljkp;->a()Ljkp$a;

    move-result-object v1

    .line 5095
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljkp$a;->a:[B

    if-eqz v2, :cond_3

    .line 5097
    iget-object v2, p0, Ljko;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 6062
    iget-object v2, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 5097
    if-eqz v2, :cond_2

    iget-object v2, v1, Ljkp$a;->a:[B

    if-eqz v2, :cond_2

    iget-object v2, v1, Ljkp$a;->a:[B

    array-length v2, v2

    if-lez v2, :cond_2

    .line 5098
    invoke-static {}, Ljky;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5099
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeDataToFile  >>> begin write. video frame is not null, frame length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Ljkp$a;->a:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", frame time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Ljkp$a;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5101
    :cond_1
    iget-object v2, p0, Ljko;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 7062
    iget-object v2, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 5101
    iget-object v3, v1, Ljkp$a;->a:[B

    iget-wide v4, v1, Ljkp$a;->b:J

    invoke-virtual {v2, v3, v4, v5}, Ljkn;->a([BJ)I

    .line 5102
    invoke-static {}, Ljky;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeDataToFile  >>> end write. video frame is not null, frame length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Ljkp$a;->a:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", frame time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Ljkp$a;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8024
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljkp$a;->b:J

    .line 5107
    iput-boolean v6, p0, Ljko;->a:Z

    .line 5115
    :goto_1
    iget-object v1, p0, Ljko;->d:Ljkk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljko;->d:Ljkk;

    .line 8064
    iget-object v1, v1, Ljkk;->a:Landroid/os/Handler;

    .line 5115
    if-eqz v1, :cond_0

    .line 5118
    :try_start_0
    iget-object v1, p0, Ljko;->d:Ljkk;

    .line 9064
    iget-object v1, v1, Ljkk;->a:Landroid/os/Handler;

    .line 5118
    const/4 v2, 0x1

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5119
    :catch_0
    move-exception v0

    .line 5120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed send recorder msg, error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10010
    const-string/jumbo v1, "video_recorder"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5109
    :cond_3
    invoke-static {}, Ljky;->c()Z

    .line 5112
    const/16 v0, 0xa

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 54
    :cond_0
    invoke-static {}, Ljky;->c()Z

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Ljko;->b:Ljkp;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Ljko;->b:Ljkp;

    iget-object v1, p0, Ljko;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 1270
    iget-object v1, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->i:[B

    .line 66
    invoke-virtual {v0, v1}, Ljkp;->a([B)V

    .line 68
    :cond_2
    iget-object v0, p0, Ljko;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 2270
    iget-object v0, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->i:[B

    .line 68
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method
