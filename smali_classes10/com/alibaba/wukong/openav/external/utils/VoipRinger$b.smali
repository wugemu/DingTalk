.class final Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;
.super Ljava/lang/Thread;
.source "VoipRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;IIZ)V
    .locals 1
    .param p2, "source"    # I
    .param p3, "ringerMode"    # I
    .param p4, "forcePlay"    # Z

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 353
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->b:I

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->c:Z

    .line 358
    iput p2, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->d:I

    .line 359
    iput p3, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->b:I

    .line 360
    iput-boolean p4, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->c:Z

    .line 361
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    :try_start_0
    iget v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->c:Z

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 370
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_2

    .line 371
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 373
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 374
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 375
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 376
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 377
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 379
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$1;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$1;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$2;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$2;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$3;

    invoke-direct {v1, p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b$3;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 408
    :cond_3
    const-string/jumbo v0, "VoipRinger"

    const-string/jumbo v1, "-preparing..."

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 410
    const-string/jumbo v0, "VoipRinger"

    const-string/jumbo v1, "-starting..."

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    :try_start_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 421
    :catch_0
    move-exception v7

    .line 422
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 412
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 413
    .local v8, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v0, "VoipRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 415
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "VoipRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 416
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v8

    .line 417
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v0, "VoipRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
