.class public Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
.super Ljava/lang/Object;
.source "VoipRinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;,
        Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;,
        Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;
    }
.end annotation


# static fields
.field private static a:Landroid/media/AudioManager;

.field private static l:I


# instance fields
.field private b:Landroid/os/Vibrator;

.field private c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

.field private d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

.field private e:Landroid/media/AudioManager;

.field private f:Landroid/media/MediaPlayer;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->h:Z

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->i:Z

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->j:Z

    .line 47
    iput-object v2, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->k:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;

    .line 1077
    iput-object p1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b:Landroid/os/Vibrator;

    .line 1079
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    .line 1080
    iput-object v2, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;)Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    .param p1, "x1"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 55
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    sget v1, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->l:I

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a:Landroid/media/AudioManager;

    sget v1, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->l:I

    const/4 v2, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 70
    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "isPlayFinished"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->k:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;

    if-eqz v0, :cond_0

    .line 314
    const-string/jumbo v0, "VoipRinger"

    const-string/jumbo v1, "-onMediaPlayComplete"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->k:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;->a(Z)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->k:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const-string/jumbo v0, "VoipRinger"

    const-string/jumbo v1, "-stopRinger"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    .line 325
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->interrupt()V

    .line 329
    iput-object v2, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    .line 332
    :cond_3
    iput-boolean v3, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->h:Z

    .line 333
    iput-boolean v3, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->i:Z

    .line 334
    return-void

    .line 325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->l:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->j:Z

    return v0
.end method


# virtual methods
.method public final a(IIZZZLcom/alibaba/wukong/openav/external/utils/VoipRinger$a;)V
    .locals 13
    .param p1, "source"    # I
    .param p2, "vibrateFlag"    # I
    .param p3, "isRingLoop"    # Z
    .param p4, "isModeRing"    # Z
    .param p5, "forcePlay"    # Z
    .param p6, "iRingCallback"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    if-eqz v10, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->k:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$a;

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->h:Z

    .line 192
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->i:Z

    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, "isVibrator":Z
    and-int/lit8 v10, p2, 0x2

    if-lez v10, :cond_2

    .line 195
    const/4 v4, 0x1

    .line 197
    :cond_2
    and-int/lit8 v10, p2, 0x4

    if-lez v10, :cond_3

    .line 198
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->j:Z

    .line 203
    :goto_1
    iget-boolean v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->i:Z

    if-eqz v10, :cond_4

    .line 204
    const/4 v10, 0x2

    sput v10, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->l:I

    .line 210
    :goto_2
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 211
    .local v7, "ringerMode":I
    if-nez v7, :cond_5

    .line 212
    const-string/jumbo v10, "VoipRinger"

    const-string/jumbo v11, "-skipping ring and vibrate because profile is Silent"

    invoke-static {v10, v11}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-nez p5, :cond_5

    .line 215
    monitor-exit p0

    goto :goto_0

    .line 274
    .end local v4    # "isVibrator":Z
    .end local v7    # "ringerMode":I
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 200
    .restart local v4    # "isVibrator":Z
    :cond_3
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->j:Z

    goto :goto_1

    .line 206
    :cond_4
    const/4 v10, 0x0

    sput v10, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->l:I

    goto :goto_2

    .line 220
    .restart local v7    # "ringerMode":I
    :cond_5
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    .line 222
    .local v9, "vibrateSetting":I
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    if-nez v10, :cond_b

    const/4 v5, 0x1

    .line 223
    .local v5, "isVolumeZero":Z
    :goto_3
    const/4 v10, 0x1

    if-ne v7, v10, :cond_c

    const/4 v2, 0x1

    .line 224
    .local v2, "isVibrateMode":Z
    :goto_4
    if-nez v2, :cond_12

    if-nez v5, :cond_12

    .line 225
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_e

    .line 226
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "vibrate_when_ringing"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 227
    .local v3, "isVibrateWhenRinging":I
    if-eqz v4, :cond_d

    const/4 v10, 0x1

    if-ne v3, v10, :cond_d

    const/4 v1, 0x1

    .line 235
    .end local v3    # "isVibrateWhenRinging":I
    .local v1, "isRealVibrate":Z
    :goto_5
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v11, "smartisan"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_8

    .line 237
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "volume_panel_mute_enable"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 238
    .local v8, "slientModeOn":I
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "telephony_vibration_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 240
    .local v6, "ringVibrateOn":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_6

    .line 241
    const/4 v7, 0x0

    .line 244
    :cond_6
    const/4 v10, 0x1

    if-ne v6, v10, :cond_7

    if-eqz v4, :cond_7

    .line 245
    const/4 v1, 0x1

    .line 248
    :cond_7
    if-nez v7, :cond_8

    if-eqz v1, :cond_8

    .line 249
    const/4 v2, 0x1

    .line 253
    .end local v6    # "ringVibrateOn":I
    .end local v8    # "slientModeOn":I
    :cond_8
    const-string/jumbo v10, "VoipRinger"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "v="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " rm="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz v1, :cond_9

    .line 255
    new-instance v10, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;B)V

    iput-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    .line 256
    const-string/jumbo v10, "VoipRinger"

    const-string/jumbo v11, "-Starting vibrator..."

    invoke-static {v10, v11}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    invoke-virtual {v10}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->start()V

    .line 260
    :cond_9
    if-nez v2, :cond_a

    const/4 v10, 0x2

    if-ne v7, v10, :cond_13

    if-eqz v5, :cond_13

    .line 261
    :cond_a
    const-string/jumbo v10, "VoipRinger"

    const-string/jumbo v11, "-skipping ring because profile is Vibrate OR because volume is zero"

    invoke-static {v10, v11}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-nez p5, :cond_13

    .line 264
    monitor-exit p0

    goto/16 :goto_0

    .line 222
    .end local v1    # "isRealVibrate":Z
    .end local v2    # "isVibrateMode":Z
    .end local v5    # "isVolumeZero":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 223
    .restart local v5    # "isVolumeZero":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 227
    .restart local v2    # "isVibrateMode":Z
    .restart local v3    # "isVibrateWhenRinging":I
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 229
    .end local v3    # "isVibrateWhenRinging":I
    :cond_e
    const/4 v10, 0x2

    if-ne v7, v10, :cond_f

    if-nez v5, :cond_10

    :cond_f
    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    :cond_10
    if-eqz v4, :cond_11

    const/4 v1, 0x1

    .restart local v1    # "isRealVibrate":Z
    :goto_6
    goto/16 :goto_5

    .end local v1    # "isRealVibrate":Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_6

    .line 232
    :cond_12
    move v1, v4

    .restart local v1    # "isRealVibrate":Z
    goto/16 :goto_5

    .line 268
    :cond_13
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    if-eqz v10, :cond_14

    .line 269
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    invoke-virtual {v10}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->interrupt()V

    .line 270
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    .line 272
    :cond_14
    new-instance v10, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    move/from16 v0, p5

    invoke-direct {v10, p0, p1, v7, v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;IIZ)V

    iput-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    .line 273
    iget-object v10, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;

    invoke-virtual {v10}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$b;->start()V

    .line 274
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 13
    .param p1, "isMiui"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x11

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 101
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    monitor-enter p0

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "isRealVibrate":Z
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->j:Z

    .line 110
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 111
    .local v4, "ringerMode":I
    if-nez v4, :cond_4

    .line 112
    const/4 v0, 0x1

    .line 156
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 157
    new-instance v7, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;B)V

    iput-object v7, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    .line 158
    const-string/jumbo v7, "VoipRinger"

    const-string/jumbo v8, "-Starting vibrator..."

    invoke-static {v7, v8}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    invoke-virtual {v7}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->start()V

    .line 162
    :cond_3
    monitor-exit p0

    goto :goto_0

    .end local v4    # "ringerMode":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 114
    .restart local v4    # "ringerMode":I
    :cond_4
    if-ne v4, v10, :cond_5

    .line 116
    :try_start_1
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v5

    .line 117
    .local v5, "vibrateSetting":I
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    if-nez v9, :cond_7

    move v3, v7

    .line 118
    .local v3, "isVolumeZero":Z
    :goto_2
    if-nez v3, :cond_b

    .line 119
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v12, :cond_9

    .line 120
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "vibrate_when_ringing"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 121
    .local v2, "isVibrateWhenRinging":I
    if-nez v2, :cond_8

    move v0, v7

    .line 131
    .end local v2    # "isVibrateWhenRinging":I
    .end local v3    # "isVolumeZero":Z
    .end local v5    # "vibrateSetting":I
    :cond_5
    :goto_3
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v10, "smartisan"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v12, :cond_6

    .line 133
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "telephony_vibration_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-ne v9, v7, :cond_c

    move v1, v7

    .line 135
    .local v1, "isRingVibrateOn":Z
    :goto_4
    if-nez v1, :cond_6

    .line 136
    const/4 v0, 0x1

    .line 140
    .end local v1    # "isRingVibrateOn":Z
    :cond_6
    if-eqz p1, :cond_2

    .line 143
    const/4 v0, 0x0

    .line 144
    :try_start_2
    iget-object v9, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "vibrate_in_normal"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-ne v9, v7, :cond_d

    move v6, v7

    .line 145
    .local v6, "vibrateWhenRing":Z
    :goto_5
    if-nez v6, :cond_2

    .line 146
    const/4 v0, 0x1

    goto/16 :goto_1

    .end local v6    # "vibrateWhenRing":Z
    .restart local v5    # "vibrateSetting":I
    :cond_7
    move v3, v8

    .line 117
    goto :goto_2

    .restart local v2    # "isVibrateWhenRinging":I
    .restart local v3    # "isVolumeZero":Z
    :cond_8
    move v0, v8

    .line 121
    goto :goto_3

    .line 123
    .end local v2    # "isVibrateWhenRinging":I
    :cond_9
    if-ne v5, v7, :cond_a

    move v0, v7

    :goto_6
    goto :goto_3

    :cond_a
    move v0, v8

    goto :goto_6

    .line 126
    :cond_b
    const/4 v0, 0x1

    goto :goto_3

    .end local v3    # "isVolumeZero":Z
    .end local v5    # "vibrateSetting":I
    :cond_c
    move v1, v8

    .line 133
    goto :goto_4

    :cond_d
    move v6, v8

    .line 144
    goto :goto_5

    .line 149
    :catch_0
    move-exception v7

    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->f:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    const-string/jumbo v0, "VoipRinger"

    const-string/jumbo v1, "-stopRing() called..."

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d()V

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Z)V

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b()V

    .line 299
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 300
    iput-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e:Landroid/media/AudioManager;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 303
    iput-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b:Landroid/os/Vibrator;

    .line 305
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    invoke-virtual {v0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->interrupt()V

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->c:Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->j:Z

    .line 349
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    goto :goto_0
.end method
