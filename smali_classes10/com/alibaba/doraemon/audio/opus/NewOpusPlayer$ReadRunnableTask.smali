.class Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;
.super Ljava/lang/Object;
.source "NewOpusPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadRunnableTask"
.end annotation


# instance fields
.field private mFinishedRunnable:Ljava/lang/Runnable;

.field private mIsStop:Z

.field private mLeftFrames:I

.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;I)V
    .locals 1
    .param p2, "leftFrames"    # I

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask$1;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mFinishedRunnable:Ljava/lang/Runnable;

    .line 439
    if-gtz p2, :cond_0

    .line 440
    const/4 p2, 0x1

    .line 442
    :cond_0
    iput p2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mLeftFrames:I

    .line 443
    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mIsStop:Z

    return v0
.end method

.method private readAudioDataFromFile()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    const-string/jumbo v9, "readAudioDataFromFile()"

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1600(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mIsStop:Z

    if-eqz v7, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalDuration()J

    move-result-wide v8

    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getCurrentPosition()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 478
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    const-string/jumbo v9, "has been finished when called readAudioDataFromFile()"

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    .line 480
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1300(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1700(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 488
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1700(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)I

    move-result v7

    new-array v1, v7, [B

    .line 490
    .local v1, "data":[B
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    const-string/jumbo v9, "before real readAudioDataFromFile()"

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_3
    :try_start_0
    iget-boolean v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mIsStop:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1600(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1800(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/media/AudioTrack;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 494
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    const-string/jumbo v9, "while isValid() and playState is Playing"

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 497
    iget-object v8, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget-object v9, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$100(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "readAudioDataFromFile"

    invoke-static {v7, v9, v10}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v7

    iget-object v9, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1700(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)I

    move-result v9

    iget-object v10, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget-object v10, v10, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->readArgs:[I

    invoke-virtual {v7, v0, v9, v10}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    .line 500
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 504
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget-object v7, v7, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->readArgs:[I

    const/4 v8, 0x0

    aget v6, v7, v8

    .line 505
    .local v6, "size":I
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 507
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    iget-object v7, v7, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->readArgs:[I

    const/4 v8, 0x2

    aget v3, v7, v8

    .line 509
    .local v3, "finished":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 510
    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 512
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 513
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1800(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/media/AudioTrack;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v6}, Landroid/media/AudioTrack;->write([BII)I

    .line 516
    :cond_4
    const/4 v7, 0x1

    if-ne v3, v7, :cond_7

    const/4 v4, 0x1

    .line 517
    .local v4, "isFinished":Z
    :goto_1
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7, v4}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$602(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Z)Z

    .line 518
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isFinished()"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    if-eqz v4, :cond_3

    .line 521
    iget v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mLeftFrames:I

    iget-object v8, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v8}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalPCMDuration()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 522
    iget v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mLeftFrames:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v8}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1800(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/media/AudioTrack;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x42400000    # 48.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 526
    .local v5, "leftTime":I
    :goto_2
    if-gtz v5, :cond_5

    .line 527
    const/4 v5, 0x1

    .line 529
    :cond_5
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v7}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1000(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mFinishedRunnable:Ljava/lang/Runnable;

    int-to-long v10, v5

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "postComplete,leftTime:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 538
    .end local v3    # "finished":I
    .end local v4    # "isFinished":Z
    .end local v5    # "leftTime":I
    .end local v6    # "size":I
    :cond_6
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    const-string/jumbo v9, "readAudioDataFromFile() finally"

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "readAudioDataFromFile exception:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 538
    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v8, "NewOpusPlayer"

    const-string/jumbo v9, "readAudioDataFromFile() finally"

    invoke-static {v7, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "finished":I
    .restart local v6    # "size":I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 524
    .restart local v4    # "isFinished":Z
    :cond_8
    :try_start_6
    iget v7, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mLeftFrames:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v8}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1800(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/media/AudioTrack;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x42400000    # 48.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1900()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v8

    add-int v5, v7, v8

    .restart local v5    # "leftTime":I
    goto/16 :goto_2

    .line 538
    .end local v3    # "finished":I
    .end local v4    # "isFinished":Z
    .end local v5    # "leftTime":I
    .end local v6    # "size":I
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v9, "NewOpusPlayer"

    const-string/jumbo v10, "readAudioDataFromFile() finally"

    invoke-static {v8, v9, v10}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->readAudioDataFromFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const-string/jumbo v2, "NewOpusPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "makePlayRunnable failed. filePath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v4}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$300(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    const/16 v2, 0x3eb

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1500(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;II)V

    goto :goto_0
.end method

.method public stopRunning()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mIsStop:Z

    .line 447
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->this$0:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->access$1000(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->mFinishedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method
