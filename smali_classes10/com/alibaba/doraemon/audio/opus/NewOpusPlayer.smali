.class public Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
.super Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;
.source "NewOpusPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;
    }
.end annotation


# static fields
.field private static final SAMPLE_RATE_IN_HZ:I = 0xbb80

.field private static SEEK_TO_DELAY:I = 0x0

.field private static final mMinBufferSize:I = 0x10000


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final OPEN_FAILED:I

.field private final TAG:Ljava/lang/String;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

.field private mFilePath:Ljava/lang/String;

.field private mIsLocalLogEnabled:Z

.field private volatile mIsOpusFileFinished:Z

.field private mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

.field private mReadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

.field private mUIHandler:Landroid/os/Handler;

.field public readArgs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x5

    sput v0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->SEEK_TO_DELAY:I

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "readExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/BaseOpusPlayer;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "NewOpusPlayer"

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->OPEN_FAILED:I

    .line 37
    iput v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->readArgs:[I

    .line 40
    iput-boolean v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mIsLocalLogEnabled:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mUIHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-direct {v0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    .line 49
    new-instance v0, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    const-string/jumbo v1, "opusPlayer"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    .line 50
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->doPlay(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handlePlayComplete()V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->postStop()V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    return v0
.end method

.method static synthetic access$1800(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->SEEK_TO_DELAY:I

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Lcom/alibaba/doraemon/audio/opus/OpusTool;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->seekToInner(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mIsOpusFileFinished:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mIsOpusFileFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->pauseInner()V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->resumeInner()V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->stopInner()V

    return-void
.end method

.method private canDetectFile()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/Utils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusFile(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doPlay(Ljava/lang/String;I)V
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x0

    const/16 v10, 0x3eb

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 71
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doPlay(filePath, milliseconds) filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",milliseconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/audio/opus/Utils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file not exists, filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, v10, v5}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V

    .line 147
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file is not opus file. filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v10, v4}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V

    goto :goto_0

    .line 93
    :cond_1
    new-array v8, v5, [I

    fill-array-data v8, :array_0

    .line 94
    .local v8, "ret":[I
    new-instance v9, Ljava/util/concurrent/Semaphore;

    invoke-direct {v9, v11}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 95
    .local v9, "semaphore":Ljava/util/concurrent/Semaphore;
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;

    invoke-direct {v1, p0, v8, v9}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$2;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;[ILjava/util/concurrent/Semaphore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 107
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    aget v0, v8, v11

    if-nez v0, :cond_2

    .line 113
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "opusTools openOpusFile failed. filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v10, v6}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 110
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doPlay semaphore.acquire failed,exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    aget v0, v8, v0

    if-ne v0, v4, :cond_3

    .line 121
    const/4 v3, 0x4

    .line 126
    .local v3, "trackChannel":I
    :goto_2
    const v0, 0xbb80

    const/4 v1, 0x2

    invoke-static {v0, v3, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    .line 127
    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    :goto_3
    iput v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    .line 129
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const v2, 0xbb80

    const/4 v4, 0x2

    iget v5, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mBufferSize:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 131
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 133
    if-lez p2, :cond_5

    .line 134
    invoke-direct {p0, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->seekToInner(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 141
    .end local v3    # "trackChannel":I
    :catch_1
    move-exception v7

    .line 142
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/alibaba/doraemon/audio/opus/Utils;->printE(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "do play failed. filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v10, v11}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V

    goto/16 :goto_0

    .line 123
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v3, 0xc

    .restart local v3    # "trackChannel":I
    goto :goto_2

    .line 127
    :cond_4
    const/high16 v0, 0x10000

    goto :goto_3

    .line 137
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handlePrepared()V

    .line 138
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->playInner()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 93
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private handleError(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 389
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleError() what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$9;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method private handlePlayComplete()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 410
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "handlePlayComplete()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$10;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method

.method private handlePrepared()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$3;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method private isValid()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 277
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 278
    .local v0, "isValid":Z
    :goto_0
    const-string/jumbo v1, "NewOpusPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isValid()?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-nez v0, :cond_0

    .line 281
    const-string/jumbo v2, "NewOpusPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "check isValid false, AudioTrack.getState:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    return v0

    .line 277
    .end local v0    # "isValid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    .restart local v0    # "isValid":Z
    :cond_2
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method private pauseInner()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "pauseInner()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 265
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "isPlaying need pause"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 267
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->stopRunning()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    .line 270
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "mPlayingThread stopRunning()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method private playInner()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v1, "NewOpusPlayer"

    const-string/jumbo v2, "playInner()"

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalPCMDuration()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getCurrentPCMOffset()I

    move-result v2

    sub-int v0, v1, v2

    .line 164
    .local v0, "leftFrames":I
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    if-nez v1, :cond_1

    .line 168
    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;I)V

    iput-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    .line 169
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    .end local v0    # "leftFrames":I
    :cond_1
    return-void
.end method

.method private popLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {p1, p2}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private postStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "postStop()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$11;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$11;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method private resumeInner()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "resumeInner()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->playInner()V

    .line 304
    :cond_0
    return-void
.end method

.method private seekOpusFile(F)V
    .locals 5
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    const-string/jumbo v2, "NewOpusPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "seekOpusFile(scale),"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 221
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$5;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;FLjava/util/concurrent/Semaphore;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 241
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 244
    const-string/jumbo v2, "NewOpusPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "seekOpusFile semaphore.acquire failed,exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/16 v2, 0x3eb

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->handleError(II)V

    goto :goto_0
.end method

.method private seekToImpl(I)V
    .locals 4
    .param p1, "msec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seekToImpl(msec),"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 211
    :cond_0
    if-ltz p1, :cond_1

    int-to-long v0, p1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 212
    :cond_1
    const/4 p1, 0x0

    .line 214
    :cond_2
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->seekOpusFile(F)V

    .line 215
    return-void
.end method

.method private seekToInner(I)V
    .locals 3
    .param p1, "milliseconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seekToInner(milliseconds)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->pauseInner()V

    .line 196
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->seekToImpl(I)V

    .line 197
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->playInner()V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showLocalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mIsLocalLogEnabled:Z

    if-eqz v0, :cond_0

    .line 551
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    return-void
.end method

.method private stopInner()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    const-string/jumbo v1, "NewOpusPlayer"

    const-string/jumbo v2, "stopInner()"

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 327
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 328
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :goto_2
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;->stopRunning()V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mReadRunnbleTask:Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$ReadRunnableTask;

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const-string/jumbo v1, "NewOpusPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopInner audioTrack error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NewOpusPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopInner audioTrack error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->popLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->canDetectFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getCurrentPosition()J

    move-result-wide v0

    .line 376
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->canDetectFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mOpusTools:Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalDuration()J

    move-result-wide v0

    .line 364
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPlayPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 384
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "pause()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$6;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$6;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "play(filePath) play path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->play(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const-string/jumbo v0, "NewOpusPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "play(filePath, milliseconds) filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",milliseconds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$1;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "resume()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$7;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$7;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "milliseconds"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "seekTo(milliseconds()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$4;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    const-string/jumbo v0, "NewOpusPlayer"

    const-string/jumbo v1, "stopRunning()"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->showLocalLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->mCmdExecutor:Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;

    new-instance v1, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$8;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer$8;-><init>(Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/audio/opus/DoraemonThreadExecutor;->postRunnable(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method
