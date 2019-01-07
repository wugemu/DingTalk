.class public final Lhmo;
.super Ljava/lang/Object;
.source "MiniAppBackgroundAudioManager.java"


# static fields
.field private static h:Lhmo;


# instance fields
.field a:Landroid/media/MediaPlayer;

.field public b:Lcom/alibaba/doraemon/audio/OnPlayListener;

.field public c:Ljava/lang/String;

.field d:I

.field public e:Z

.field public f:Z

.field g:Z

.field private i:Landroid/media/AudioManager;

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/TimerTask;

.field private l:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lhmo$1;

    invoke-direct {v0, p0}, Lhmo$1;-><init>(Lhmo;)V

    iput-object v0, p0, Lhmo;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1089
    const/4 v0, 0x2

    iput v0, p0, Lhmo;->d:I

    .line 1090
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lhmo;->i:Landroid/media/AudioManager;

    .line 86
    return-void
.end method

.method public static declared-synchronized a()Lhmo;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lhmo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmo;->h:Lhmo;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lhmo;

    invoke-direct {v0}, Lhmo;-><init>()V

    sput-object v0, Lhmo;->h:Lhmo;

    .line 81
    :cond_0
    sget-object v0, Lhmo;->h:Lhmo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lhmo;)V
    .locals 0
    .param p0, "x0"    # Lhmo;

    .prologue
    .line 23
    invoke-virtual {p0}, Lhmo;->h()V

    return-void
.end method

.method static synthetic b(Lhmo;)V
    .locals 0
    .param p0, "x0"    # Lhmo;

    .prologue
    .line 23
    invoke-virtual {p0}, Lhmo;->j()V

    return-void
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 219
    iget-object v1, p0, Lhmo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 223
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lhmo;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lhmo;->b(I)V

    .line 226
    :cond_1
    invoke-virtual {p0}, Lhmo;->j()V

    .line 227
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 228
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 229
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lhmo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 231
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Lhmo;->f:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 232
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 234
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    new-instance v2, Lhmo$2;

    invoke-direct {v2, p0}, Lhmo$2;-><init>(Lhmo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 254
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    new-instance v2, Lhmo$3;

    invoke-direct {v2, p0}, Lhmo$3;-><init>(Lhmo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 264
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    new-instance v2, Lhmo$4;

    invoke-direct {v2, p0}, Lhmo$4;-><init>(Lhmo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 294
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    new-instance v2, Lhmo$5;

    invoke-direct {v2, p0}, Lhmo$5;-><init>(Lhmo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 302
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    new-instance v2, Lhmo$6;

    invoke-direct {v2, p0}, Lhmo$6;-><init>(Lhmo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 344
    const-string/jumbo v0, "BackgroundAudioManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stopProgress"

    aput-object v3, v1, v2

    .line 5098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lhmo;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lhmo;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 347
    iput-object v4, p0, Lhmo;->j:Ljava/util/Timer;

    .line 350
    :cond_0
    iget-object v0, p0, Lhmo;->k:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lhmo;->k:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 352
    iput-object v4, p0, Lhmo;->k:Ljava/util/TimerTask;

    .line 354
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .param p1, "msec"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 146
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 149
    .local v0, "duration":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-le p1, v0, :cond_1

    .line 150
    iget-object v1, p0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    iget-object v2, p0, Lhmo;->c:Ljava/lang/String;

    const/16 v3, 0x2715

    const-string/jumbo v4, "seek time larger than duration"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    .end local v0    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v0    # "duration":I
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lhmo;->b(I)V

    .line 157
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;)V
    .locals 1
    .param p1, "curUrl"    # Ljava/lang/String;
    .param p2, "onPlayListener"    # Lcom/alibaba/doraemon/audio/OnPlayListener;

    .prologue
    .line 121
    iput-object p1, p0, Lhmo;->c:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmo;->g:Z

    .line 124
    invoke-direct {p0}, Lhmo;->k()V

    .line 125
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lhmo;->f:Z

    .line 103
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    iget-object v1, p0, Lhmo;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onPlayStateListener(Ljava/lang/String;I)V

    .line 380
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhmo;->g:Z

    .line 176
    invoke-virtual {p0}, Lhmo;->j()V

    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lhmo;->b(I)V

    .line 178
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lhmo;->i:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lhmo;->i:Landroid/media/AudioManager;

    iget-object v1, p0, Lhmo;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 183
    const-string/jumbo v0, "BackgroundAudioManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "abandonAudioFocus when pause"

    aput-object v3, v1, v2

    .line 1098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lhmo;->f()V

    .line 186
    return-void
.end method

.method f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 189
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lhmo;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 191
    iput v2, p0, Lhmo;->d:I

    .line 192
    invoke-direct {p0}, Lhmo;->l()V

    .line 193
    invoke-virtual {p0, v2}, Lhmo;->b(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 198
    iget v0, p0, Lhmo;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lhmo;->d:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 199
    :cond_0
    invoke-virtual {p0}, Lhmo;->h()V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    iget v0, p0, Lhmo;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 201
    invoke-direct {p0}, Lhmo;->k()V

    goto :goto_0
.end method

.method h()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 206
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhmo;->i:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lhmo;->i:Landroid/media/AudioManager;

    iget-object v1, p0, Lhmo;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v6

    .line 208
    .local v6, "requestAudioFocus":I
    if-ne v6, v7, :cond_0

    .line 209
    const-string/jumbo v0, "BackgroundAudioManager"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "requestAudioFocus granted when resume"

    aput-object v2, v1, v3

    .line 2098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 211
    iput v7, p0, Lhmo;->d:I

    .line 2357
    const-string/jumbo v0, "BackgroundAudioManager"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "showProgress"

    aput-object v2, v1, v3

    .line 3098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2358
    new-instance v0, Lhmo$7;

    invoke-direct {v0, p0}, Lhmo$7;-><init>(Lhmo;)V

    iput-object v0, p0, Lhmo;->k:Ljava/util/TimerTask;

    .line 2372
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "BackgroundAudioManager"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhmo;->j:Ljava/util/Timer;

    .line 2373
    iget-object v0, p0, Lhmo;->j:Ljava/util/Timer;

    iget-object v1, p0, Lhmo;->k:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 213
    invoke-virtual {p0, v7}, Lhmo;->b(I)V

    .line 216
    .end local v6    # "requestAudioFocus":I
    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 322
    iget v1, p0, Lhmo;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 326
    iget-object v1, p0, Lhmo;->i:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lhmo;->i:Landroid/media/AudioManager;

    iget-object v2, p0, Lhmo;->l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 328
    const-string/jumbo v1, "BackgroundAudioManager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "abandonAudioFocus when release player"

    aput-object v4, v2, v3

    .line 4098
    const-string/jumbo v3, "mini_api"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_0
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 332
    :try_start_0
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 333
    const/4 v1, 0x2

    iput v1, p0, Lhmo;->d:I

    .line 334
    iget-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    invoke-direct {p0}, Lhmo;->l()V

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 341
    :cond_1
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
