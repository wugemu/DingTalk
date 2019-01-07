.class public final Lcom/taobao/gcanvas/audio/GAudioPlayer;
.super Ljava/lang/Object;
.source "GAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;,
        Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I


# instance fields
.field private k:Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;

.field private l:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

.field private m:F

.field private n:Landroid/media/MediaPlayer;

.field private o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 41
    sput v1, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a:I

    .line 42
    sput v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->b:I

    .line 43
    sput v3, Lcom/taobao/gcanvas/audio/GAudioPlayer;->c:I

    .line 44
    sput v4, Lcom/taobao/gcanvas/audio/GAudioPlayer;->d:I

    .line 45
    const/16 v0, 0x9

    sput v0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->e:I

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->f:I

    .line 49
    sput v1, Lcom/taobao/gcanvas/audio/GAudioPlayer;->g:I

    .line 50
    sput v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->h:I

    .line 51
    sput v3, Lcom/taobao/gcanvas/audio/GAudioPlayer;->i:I

    .line 52
    sput v4, Lcom/taobao/gcanvas/audio/GAudioPlayer;->j:I

    return-void
.end method

.method private a()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private a(Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;)V
    .locals 2
    .param p1, "state"    # Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 389
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->l:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    if-eq v0, p1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->l:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    .line 393
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 453
    .line 1433
    sget-object v2, Lcom/taobao/gcanvas/audio/GAudioPlayer$1;->a:[I

    iget-object v3, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->k:Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v2, v1

    .line 453
    :goto_1
    if-eqz v2, :cond_0

    .line 454
    sget-object v2, Lcom/taobao/gcanvas/audio/GAudioPlayer$1;->b:[I

    iget-object v3, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->l:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_0
    :goto_2
    return v0

    .line 1435
    :pswitch_1
    sget-object v2, Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;->PLAY:Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;

    .line 2371
    iput-object v2, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->k:Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;

    goto :goto_0

    .line 1440
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Media.onStatus(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/taobao/gcanvas/audio/GAudioPlayer;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/taobao/gcanvas/audio/GAudioPlayer;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    .line 1441
    goto :goto_1

    .line 456
    :pswitch_3
    iget-object v1, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 457
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    .line 460
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 462
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 467
    :pswitch_4
    iput-boolean v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->o:Z

    goto :goto_2

    :pswitch_5
    move v0, v1

    .line 472
    goto :goto_2

    .line 475
    :pswitch_6
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 478
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    move v0, v1

    .line 479
    goto/16 :goto_2

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 484
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 486
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1433
    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    .line 3272
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3273
    :cond_0
    const/4 v0, 0x1

    .line 507
    :goto_0
    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 511
    sget-object v0, Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;->PLAY:Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;

    .line 3371
    iput-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->k:Lcom/taobao/gcanvas/audio/GAudioPlayer$MODE;

    .line 512
    sget-object v0, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a(Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;)V

    .line 513
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 514
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 539
    :goto_1
    return-void

    .line 3275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    :cond_2
    const-string/jumbo v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 517
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 4074
    .local v6, "f":Ljava/lang/String;
    const/4 v0, 0x0

    .line 518
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 519
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 532
    .end local v6    # "f":Ljava/lang/String;
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_2
    sget-object v0, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a(Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;)V

    .line 533
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 534
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 537
    invoke-direct {p0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a()F

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->m:F

    goto :goto_1

    .line 521
    :cond_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v9, "fp":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 524
    .local v8, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 525
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 528
    .end local v8    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 246
    sget-object v0, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->MEDIA_STOPPED:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a(Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;)V

    .line 247
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 358
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', { \"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 318
    iget v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->p:I

    .line 1200
    invoke-direct {p0, v3}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Media.onStatus(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/gcanvas/audio/GAudioPlayer;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->o:Z

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 323
    sget-object v0, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->MEDIA_RUNNING:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a(Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;)V

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->p:I

    .line 330
    :goto_1
    invoke-direct {p0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a()F

    move-result v0

    iput v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->m:F

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->o:Z

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Media.onStatus(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/audio/GAudioPlayer;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    return-void

    .line 1204
    :cond_0
    iput v0, p0, Lcom/taobao/gcanvas/audio/GAudioPlayer;->p:I

    goto :goto_0

    .line 326
    :cond_1
    sget-object v0, Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;->MEDIA_STARTING:Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;

    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/audio/GAudioPlayer;->a(Lcom/taobao/gcanvas/audio/GAudioPlayer$STATE;)V

    goto :goto_1
.end method
