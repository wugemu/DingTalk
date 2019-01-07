.class public Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;
.super Ljava/lang/Object;
.source "MediaOperator.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/media/MediaService;


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->b:Z

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a:Landroid/content/Context;

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 22
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    .line 24
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;
    .param p1, "x1"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 31
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    .line 33
    :cond_0
    return-void
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->b:Z

    return v0
.end method

.method public play(I)I
    .locals 1
    .param p1, "rawID"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->play(ILcom/alipay/mobile/security/faceauth/model/media/MediaCallBack;)I

    move-result v0

    return v0
.end method

.method public play(ILcom/alipay/mobile/security/faceauth/model/media/MediaCallBack;)I
    .locals 7
    .param p1, "rawID"    # I
    .param p2, "callback"    # Lcom/alipay/mobile/security/faceauth/model/media/MediaCallBack;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, "playtime":I
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->b:Z

    if-eqz v0, :cond_1

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-interface {p2}, Lcom/alipay/mobile/security/faceauth/model/media/MediaCallBack;->onComplete()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 60
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->destroy()V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    .line 80
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->d:Landroid/content/res/AssetFileDescriptor;

    .line 81
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator$1;-><init>(Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "media time t:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    move v0, v6

    .line 111
    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public play(Ljava/lang/String;)I
    .locals 10
    .param p1, "assetPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    const/4 v9, 0x0

    .line 127
    .local v9, "playtime":I
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->b:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 133
    .local v7, "am":Landroid/content/res/AssetManager;
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 142
    :cond_2
    :try_start_0
    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 143
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 146
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 145
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    .line 152
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    move v0, v9

    .line 162
    goto :goto_0

    .line 153
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 154
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 156
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 157
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 159
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->b:Z

    .line 118
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->b:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->stop()V

    .line 121
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/media/MediaOperator;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 44
    :cond_1
    return-void
.end method
