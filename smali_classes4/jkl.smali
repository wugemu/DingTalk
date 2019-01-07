.class public final Ljkl;
.super Ljava/lang/Object;
.source "TaoAudioRecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljkl$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/AudioRecord;

.field b:Z

.field c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

.field public d:Z

.field public e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V
    .locals 2
    .param p1, "taoMediaRecorder"    # Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Ljkl;->b:Z

    .line 20
    iput v0, p0, Ljkl;->f:I

    .line 23
    iput v1, p0, Ljkl;->g:I

    .line 24
    iput-boolean v1, p0, Ljkl;->d:Z

    .line 26
    iput-boolean v0, p0, Ljkl;->e:Z

    .line 29
    iput-object p1, p0, Ljkl;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 41
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljkl;->d:Z

    if-ne v0, v1, :cond_3

    .line 42
    iget-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Ljkl;->c:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 1066
    iget-object v8, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    .line 44
    .local v8, "taoMediaProfile":Ljkm;
    iget v0, v8, Ljkm;->m:I

    iget v1, v8, Ljkm;->n:I

    iget v2, v8, Ljkm;->o:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Ljkl;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, v8, Ljkm;->b:I

    iget v2, v8, Ljkm;->m:I

    iget v3, v8, Ljkm;->n:I

    iget v4, v8, Ljkm;->o:I

    iget v5, p0, Ljkl;->f:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    .line 50
    iget-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    iput v0, p0, Ljkl;->g:I

    .line 51
    iget-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v8    # "taoMediaProfile":Ljkm;
    :cond_0
    :try_start_2
    iget-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v7

    .line 68
    .local v7, "recordingState":I
    const/4 v0, 0x3

    if-eq v7, v0, :cond_2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "recordingState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3010
    const-string/jumbo v1, "video_recorder"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v9

    .line 79
    .end local v7    # "recordingState":I
    :goto_0
    monitor-exit p0

    return v0

    .line 52
    .restart local v8    # "taoMediaProfile":Ljkm;
    :catch_0
    move-exception v6

    .line 53
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startRecording failed, error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2010
    const-string/jumbo v1, "video_recorder"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :try_start_4
    iget-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Ljkl;->a:Landroid/media/AudioRecord;

    move v0, v9

    .line 63
    goto :goto_0

    .line 73
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "taoMediaProfile":Ljkm;
    .restart local v7    # "recordingState":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljkl;->e:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljkl;->b:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljkl;->d:Z

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljkl$a;

    invoke-direct {v1, p0}, Ljkl$a;-><init>(Ljkl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v7    # "recordingState":I
    :cond_3
    move v0, v10

    .line 79
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "taoMediaProfile":Ljkm;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljkl;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
