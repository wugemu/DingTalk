.class public Lcom/alibaba/doraemon/audio/opus/OpusRecorder;
.super Ljava/lang/Object;
.source "OpusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;,
        Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;,
        Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;
    }
.end annotation


# static fields
.field private static final EXECUTOR_GROUPNAME:Ljava/lang/String; = "DORAEMON_OPUS_RECORDER"

.field private static final LOG_TAG:Ljava/lang/String; = "OpusRecorder"

.field private static final RECORDER_AUDIO_ENCODING:I = 0x2

.field private static final RECORDER_CHANNELS:I = 0x10

.field private static final RECORDER_SAMPLERATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBufferSize:I

.field private mErrorOnStop:Z

.field private mFileBuffer:Ljava/nio/ByteBuffer;

.field private mFilePath:Ljava/lang/String;

.field private mLastMaxValue:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOnCompletedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

.field private mOnErrorListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;

.field private mOnPreparedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;

.field private mRealStarted:Z

.field private mRecorder:Landroid/media/AudioRecord;

.field private mStartTime:J

.field private mStartTrace:Ljava/lang/String;

.field private mThreadExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

.field private mUIHandler:Landroid/os/Handler;

.field private opusTool:Lcom/alibaba/doraemon/audio/opus/OpusTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 32
    new-instance v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-direct {v0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->opusTool:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    .line 33
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    .line 34
    iput-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFilePath:Ljava/lang/String;

    .line 35
    const/16 v0, 0x780

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    .line 39
    iput-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnCompletedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

    .line 43
    iput-boolean v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mErrorOnStop:Z

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mLastMaxValue:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mUIHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    const-string/jumbo v1, "DORAEMON_OPUS_RECORDER"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mThreadExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->writeAudioDataToFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->opusTool:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnPreparedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRealStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->doFailure()V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->startRecordingInner(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->stopRecordingInner()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnErrorListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnCompletedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

    return-object v0
.end method

.method private convertToAmplitude(I)I
    .locals 8
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 363
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    int-to-double v2, p1

    mul-double/2addr v2, v6

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private convertToAudioAmplitude(I)I
    .locals 8
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 370
    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->convertToAmplitude(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 483
    .local v0, "downloadThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 484
    sget-object v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 486
    return-object v0
.end method

.method private doFailure()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    const/16 v0, 0x7d3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postError(II)V

    .line 327
    return-void
.end method

.method private getBufferMax(Ljava/nio/ByteBuffer;I)V
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 334
    .local v0, "array":[B
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    add-int/lit8 v6, p2, -0x2

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x5

    if-gt v2, v6, :cond_1

    .line 335
    const-wide/16 v4, 0x0

    .line 336
    .local v4, "perValue":D
    move v3, v2

    .local v3, "innerIndex":I
    :goto_1
    add-int/lit8 v6, v2, 0x6

    if-ge v3, v6, :cond_0

    .line 337
    mul-int/lit8 v6, v2, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, v0, v7

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 338
    .local v1, "curentValue":I
    mul-int v6, v1, v1

    int-to-double v6, v6

    add-double/2addr v4, v6

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 340
    .end local v1    # "curentValue":I
    :cond_0
    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 342
    iget-object v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mLastMaxValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mLastMaxValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    double-to-int v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 334
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 345
    .end local v3    # "innerIndex":I
    .end local v4    # "perValue":D
    :cond_1
    return-void
.end method

.method private isAudioRecordValid()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 422
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 423
    .local v0, "isAudioRecordValid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 424
    const-string/jumbo v2, "OpusRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAudioRecordValid: falseMediaRecord.getState()="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    return v0

    .line 422
    .end local v0    # "isAudioRecordValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 424
    .restart local v0    # "isAudioRecordValid":Z
    :cond_2
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public static popLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string/jumbo v0, "OpusRecorder"

    invoke-static {v0, p0}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private popLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-static {p1, p2}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private postCompleted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$6;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$6;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method private postError(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$4;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method private postPrepared()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 471
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$7;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$7;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method

.method private postStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$5;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$5;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    :cond_0
    return-void
.end method

.method private startRecordingInner(Ljava/lang/String;I)V
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "audioSource"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x3e80

    const/16 v9, 0x7d3

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v8, 0x1

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRealStarted:Z

    .line 115
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 116
    .local v7, "minBufferSize":I
    div-int/lit16 v0, v7, 0x780

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x780

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    .line 117
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFilePath:Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    move v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string/jumbo v0, "OpusRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "opusTool, startRecord error: filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startRecording check is Recording fail after MediaRecord start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v9, v8}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postError(II)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v6

    .line 126
    .local v6, "exception":Ljava/lang/Exception;
    const-string/jumbo v0, "OpusRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "opusTool, startRecord error: filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",MediaRecorder.startRecord exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v9, v8}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postError(II)V

    goto :goto_0

    .line 139
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private stopRecordingInner()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :cond_0
    :goto_1
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "OpusRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mediaRecorder stop exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-boolean v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mErrorOnStop:Z

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "OpusRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mediaRecorder release exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput-boolean v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mErrorOnStop:Z

    goto :goto_1

    .line 393
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const-string/jumbo v1, "stopRecordingInner() error onStop"

    invoke-static {v1}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;)V

    .line 394
    iput-boolean v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mErrorOnStop:Z

    .line 395
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isAudioRecordValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 398
    :catch_2
    move-exception v0

    .line 399
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "OpusRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mediaRecorder stopRecordingInner not recording release exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iput-boolean v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mErrorOnStop:Z

    goto :goto_1
.end method

.method private writeAudioDataToFile()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 234
    const/4 v3, 0x1

    .line 236
    .local v3, "success":Z
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    const-string/jumbo v5, "OpusRecorder"

    const-string/jumbo v6, "writeAudioDataToFile isRecording false"

    invoke-direct {p0, v5, v6}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    return v4

    .line 241
    :cond_1
    iget v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mErrorOnStop:Z

    if-nez v6, :cond_5

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 249
    iget-object v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    iget v7, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    invoke-virtual {v6, v0, v7}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 251
    .local v2, "len":I
    iget v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    invoke-direct {p0, v0, v6}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->getBufferMax(Ljava/nio/ByteBuffer;I)V

    .line 253
    if-lez v2, :cond_7

    .line 255
    :try_start_0
    iget-boolean v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRealStarted:Z

    if-nez v6, :cond_4

    .line 256
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->writeFileHeader()Z

    move-result v3

    .line 257
    if-nez v3, :cond_3

    .line 258
    const-string/jumbo v4, "writeFileHeader failed"

    invoke-static {v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;)V

    move v4, v5

    .line 259
    goto :goto_0

    .line 261
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRealStarted:Z

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->postPrepared()V

    .line 269
    :cond_4
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->writeAudioDataToOpus(Ljava/nio/ByteBuffer;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 271
    if-nez v3, :cond_2

    .line 292
    .end local v2    # "len":I
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRealStarted:Z

    if-eqz v4, :cond_6

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 297
    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    iget v5, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    invoke-virtual {v4, v0, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 298
    iget v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mBufferSize:I

    invoke-direct {p0, v0, v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->getBufferMax(Ljava/nio/ByteBuffer;I)V

    .line 302
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v0, v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->writeAudioDataToOpus(Ljava/nio/ByteBuffer;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 310
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move v4, v3

    .line 312
    goto :goto_0

    .line 276
    .restart local v2    # "len":I
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "OpusRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "writeAudioDataToOpus exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v3, 0x0

    .line 279
    goto :goto_1

    .line 282
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isRecording()Z

    move-result v4

    if-nez v4, :cond_8

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readData length not  valid: length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;)V

    move v4, v3

    .line 284
    goto/16 :goto_0

    .line 286
    :cond_8
    const-string/jumbo v4, "OpusRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MediaRecord read buffer length invalid: length:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x0

    .line 288
    goto :goto_1

    .line 303
    .end local v2    # "len":I
    :catch_1
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "OpusRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "write last buffer exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private writeAudioDataToOpus(Ljava/nio/ByteBuffer;Z)Z
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "flush"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    const/4 v1, 0x1

    .line 190
    .local v1, "ret":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_7

    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 194
    :cond_1
    const/4 v0, -0x1

    .line 196
    .local v0, "oldLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 201
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-eq v3, v4, :cond_4

    if-eqz p2, :cond_5

    .line 207
    :cond_4
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 209
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->opusTool:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 211
    .local v2, "rst":I
    if-lez v2, :cond_6

    .line 212
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 224
    .end local v2    # "rst":I
    :cond_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 225
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 214
    .restart local v2    # "rst":I
    :cond_6
    const/4 v1, 0x0

    .line 215
    const-string/jumbo v3, "OpusRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "opusTool writeFrame error: return value:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v0    # "oldLimit":I
    .end local v2    # "rst":I
    :cond_7
    return v1
.end method

.method private writeFileHeader()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 317
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->opusTool:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->startRecord(Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, "rst":I
    if-eq v0, v1, :cond_0

    .line 319
    const-string/jumbo v2, "OpusRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "opusTool, startRecord error: filePath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",return value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->opusTool:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->closeOpusFile()V

    .line 322
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mLastMaxValue:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 357
    .local v0, "currentValue":I
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mLastMaxValue:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 358
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->convertToAudioAmplitude(I)I

    move-result v1

    return v1
.end method

.method public isRecording()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->isAudioRecordValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnCompletedListener(Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;)V
    .locals 0
    .param p1, "onCompletedListener"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnCompletedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnCompletedListener;

    .line 105
    return-void
.end method

.method public setOnErrorListener(Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnErrorListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnErrorListener;

    .line 101
    return-void
.end method

.method public setOnPreparedListener(Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;)V
    .locals 0
    .param p1, "onPreparedListener"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mOnPreparedListener:Lcom/alibaba/doraemon/audio/opus/OpusRecorder$OnPreparedListener;

    .line 91
    return-void
.end method

.method public startRecording(Ljava/lang/String;I)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "audioSource"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mStartTime:J

    .line 178
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mThreadExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$2;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public stopRecording()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->mThreadExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$3;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$3;-><init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method
