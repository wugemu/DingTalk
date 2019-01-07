.class public Lctj;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lctj$b;,
        Lctj$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;

.field private static i:Lctj;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:F

.field public e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lctj$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lctj$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field private j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

.field private k:Lcom/alibaba/doraemon/audio/AudioMagician;

.field private l:Landroid/os/PowerManager;

.field private m:Landroid/os/PowerManager$WakeLock;

.field private n:Landroid/media/AudioManager;

.field private o:Lciu$b;

.field private p:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lctj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctj;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lctj;->d:F

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lctj;->e:Ljava/util/LinkedList;

    .line 320
    new-instance v0, Lctj$1;

    invoke-direct {v0, p0}, Lctj$1;-><init>(Lctj;)V

    iput-object v0, p0, Lctj;->o:Lciu$b;

    .line 374
    new-instance v0, Lctj$2;

    invoke-direct {v0, p0}, Lctj$2;-><init>(Lctj;)V

    iput-object v0, p0, Lctj;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lctj;->l:Landroid/os/PowerManager;

    .line 159
    :try_start_0
    iget-object v0, p0, Lctj;->l:Landroid/os/PowerManager;

    const v1, 0x2000000a

    sget-object v2, Lctj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lctj;->m:Landroid/os/PowerManager$WakeLock;

    .line 162
    iget-object v0, p0, Lctj;->m:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lctj;->n:Landroid/media/AudioManager;

    .line 167
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lctj;)I
    .locals 1
    .param p0, "x0"    # Lctj;

    .prologue
    .line 37
    iget v0, p0, Lctj;->c:I

    return v0
.end method

.method public static a()Lctj;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lctj;->i:Lctj;

    if-nez v0, :cond_1

    .line 171
    const-class v1, Lctj;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Lctj;->i:Lctj;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lctj;

    invoke-direct {v0}, Lctj;-><init>()V

    sput-object v0, Lctj;->i:Lctj;

    .line 175
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    sget-object v0, Lctj;->i:Lctj;

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v0, "freshIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "freshIntent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 651
    .line 2306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lctj;->g:Z

    .line 653
    :try_start_0
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 654
    .local v0, "listener":Lctj$a;
    invoke-interface {v0, p1}, Lctj$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 658
    .end local v0    # "listener":Lctj$a;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lctj;->f()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lctj;->f()V

    .line 659
    return-void
.end method

.method private a(Ljava/lang/Object;II)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p3, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 723
    .line 6306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lctj;->g:Z

    .line 725
    :try_start_0
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 726
    .local v0, "listener":Lctj$a;
    invoke-interface {v0, p1, p3}, Lctj$a;->b(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 730
    .end local v0    # "listener":Lctj$a;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lctj;->f()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lctj;->f()V

    .line 731
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    .line 3306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lctj;->g:Z

    .line 665
    :try_start_0
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 666
    .local v0, "listener":Lctj$a;
    invoke-interface {v0, p1}, Lctj$a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 670
    .end local v0    # "listener":Lctj$a;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lctj;->f()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lctj;->f()V

    .line 671
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 675
    .line 4306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lctj;->g:Z

    .line 677
    :try_start_0
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 678
    .local v0, "listener":Lctj$a;
    invoke-interface {v0, p1}, Lctj$a;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 682
    .end local v0    # "listener":Lctj$a;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lctj;->f()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lctj;->f()V

    .line 683
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    .line 5306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lctj;->g:Z

    .line 689
    :try_start_0
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 690
    .local v0, "listener":Lctj$a;
    invoke-interface {v0, p1}, Lctj$a;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 694
    .end local v0    # "listener":Lctj$a;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lctj;->f()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lctj;->f()V

    .line 695
    return-void
.end method

.method public static d()Z
    .locals 4

    .prologue
    .line 841
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "doraemon"

    const-string/jumbo v3, "_pref_voice_use_opus"

    .line 842
    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lctj;->h:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctj;->g:Z

    .line 314
    iget-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    iput-object v0, p0, Lctj;->e:Ljava/util/LinkedList;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    .line 318
    :cond_0
    return-void
.end method

.method private g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 343
    :try_start_0
    iget-object v1, p0, Lctj;->m:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 344
    iget-object v1, p0, Lctj;->n:Landroid/media/AudioManager;

    iget-object v2, p0, Lctj;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 345
    .local v0, "result":I
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v1

    new-instance v2, Lciu$a;

    sget-object v3, Lctj;->h:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lctj;->o:Lciu$b;

    invoke-direct {v2, v3, v4, v5, v6}, Lciu$a;-><init>(Ljava/lang/String;IILciu$b;)V

    invoke-virtual {v1, v2}, Lciu;->a(Lciu$a;)Z

    .line 346
    if-eq v0, v7, :cond_0

    .line 1354
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lctj;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1356
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string/jumbo v2, "input keyevent 86\n"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 1357
    .restart local v0    # "result":I
    :catch_0
    move-exception v1

    .line 1358
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "result":I
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lctj;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 368
    iget-object v0, p0, Lctj;->n:Landroid/media/AudioManager;

    iget-object v1, p0, Lctj;->p:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 369
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    sget-object v1, Lctj;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lciu;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v0, "AUDIOEX"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iput-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    .line 398
    :cond_0
    iget-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    if-nez v0, :cond_1

    .line 399
    const-string/jumbo v0, "AUDIO"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    iput-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 401
    :cond_1
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 503
    .line 1513
    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1514
    invoke-direct {p0}, Lctj;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1517
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lciu;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1520
    iget v0, p0, Lctj;->c:I

    if-eq v2, v0, :cond_0

    iget v0, p0, Lctj;->c:I

    if-ne v1, v0, :cond_2

    .line 1521
    :cond_0
    iget v0, p0, Lctj;->c:I

    if-ne v2, v0, :cond_1

    .line 1522
    invoke-direct {p0}, Lctj;->g()V

    .line 1523
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lctj;->b(Ljava/lang/Object;)V

    .line 1525
    :cond_1
    invoke-static {}, Lctj;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    move v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void

    .line 1528
    :cond_3
    iget-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    move v2, p1

    move-object v3, p0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/audio/AudioMagician;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Lctj$a;)V
    .locals 2
    .param p1, "listener"    # Lctj$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    if-eqz p1, :cond_1

    iget-object v0, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-boolean v0, p0, Lctj;->g:Z

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    .line 206
    :cond_0
    iget-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    iget-boolean v1, p0, Lctj;->g:Z

    if-eqz v1, :cond_5

    .line 246
    iget-object v1, p0, Lctj;->f:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lctj;->f:Ljava/util/LinkedList;

    .line 249
    :cond_0
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_1

    const-class v1, Lctj$a;

    if-ne p1, v1, :cond_3

    .line 250
    :cond_1
    iget-object v1, p0, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 270
    :cond_2
    :goto_0
    return-void

    .line 252
    :cond_3
    iget-object v1, p0, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 253
    iget-object v1, p0, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    iget-object v1, p0, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 252
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 259
    .end local v0    # "i":I
    :cond_5
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_6

    const-class v1, Lctj$a;

    if-ne p1, v1, :cond_7

    .line 260
    :cond_6
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    .line 262
    :cond_7
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 263
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 264
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 262
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, p1, p2, v0, v0}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 412
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;IILjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p5, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 548
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p4, :cond_0

    if-le p3, p4, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-direct {p0}, Lctj;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lciu;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    sget v0, Lcig$j;->audio_in_focues:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 558
    :cond_2
    if-gez p3, :cond_3

    .line 559
    const/4 p3, 0x0

    .line 561
    :cond_3
    int-to-float v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p4

    div-float v6, v0, v1

    .line 562
    .local v6, "progress":F
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 563
    iput v6, p0, Lctj;->d:F

    .line 564
    iget v0, p0, Lctj;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 565
    iput v2, p0, Lctj;->c:I

    .line 566
    invoke-direct {p0}, Lctj;->g()V

    .line 567
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lctj;->b(Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lctj;->a(Ljava/lang/Object;II)V

    .line 569
    invoke-virtual {p0, p3}, Lctj;->a(I)V

    goto :goto_0

    .line 570
    :cond_4
    iget v0, p0, Lctj;->c:I

    if-ne v0, v2, :cond_0

    .line 571
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lctj;->a(Ljava/lang/Object;II)V

    .line 572
    invoke-virtual {p0, p3}, Lctj;->a(I)V

    goto :goto_0

    .line 576
    :cond_5
    invoke-virtual {p0}, Lctj;->c()V

    .line 577
    iget v0, p0, Lctj;->c:I

    if-nez v0, :cond_0

    .line 578
    iput-object p1, p0, Lctj;->a:Ljava/lang/Object;

    .line 579
    iput-object p2, p0, Lctj;->b:Ljava/lang/String;

    .line 580
    iput v2, p0, Lctj;->c:I

    .line 581
    iput v6, p0, Lctj;->d:F

    .line 582
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lctj;->a(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lctj;->a(Ljava/lang/Object;II)V

    .line 586
    iget v0, p0, Lctj;->c:I

    if-ne v2, v0, :cond_0

    .line 587
    invoke-direct {p0}, Lctj;->g()V

    .line 588
    invoke-static {}, Lctj;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    move v2, p3

    move-object v3, p0

    move-object v4, p6

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 591
    :cond_6
    iget-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    move v2, p3

    move-object v3, p0

    move-object v4, p6

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/audio/AudioMagician;->seekTo(Ljava/lang/String;ILcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 423
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 424
    invoke-direct {p0}, Lctj;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lciu;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    sget v0, Lcig$j;->audio_in_focues:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 435
    iget v0, p0, Lctj;->c:I

    if-ne v2, v0, :cond_5

    .line 1473
    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1474
    invoke-direct {p0}, Lctj;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lciu;->a(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1478
    sget v0, Lcig$j;->audio_in_focues:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1482
    :cond_3
    iget v0, p0, Lctj;->c:I

    if-ne v2, v0, :cond_0

    .line 1483
    iput v1, p0, Lctj;->c:I

    .line 1484
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lctj;->b(Ljava/lang/Object;)V

    .line 1485
    iget v0, p0, Lctj;->c:I

    if-ne v1, v0, :cond_0

    .line 1486
    invoke-direct {p0}, Lctj;->g()V

    .line 1487
    invoke-static {}, Lctj;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1488
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->resume(Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    :cond_4
    iget-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->resume(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_5
    iget v0, p0, Lctj;->c:I

    if-eq v1, v0, :cond_0

    .line 446
    :cond_6
    invoke-virtual {p0}, Lctj;->c()V

    .line 450
    iget v0, p0, Lctj;->c:I

    if-nez v0, :cond_0

    .line 451
    iput-object p1, p0, Lctj;->a:Ljava/lang/Object;

    .line 452
    iput-object p2, p0, Lctj;->b:Ljava/lang/String;

    .line 453
    iput v1, p0, Lctj;->c:I

    .line 454
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lctj;->a(Ljava/lang/Object;)V

    .line 457
    iget v0, p0, Lctj;->c:I

    if-ne v1, v0, :cond_0

    .line 458
    invoke-direct {p0}, Lctj;->g()V

    .line 459
    invoke-static {}, Lctj;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p4, p3}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 462
    :cond_7
    iget-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p4, p3}, Lcom/alibaba/doraemon/audio/AudioMagician;->play(Ljava/lang/String;Lcom/alibaba/doraemon/audio/OnPlayListener;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 603
    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 604
    invoke-direct {p0}, Lctj;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lctj;->c:I

    if-ne v0, v1, :cond_0

    .line 608
    iput v2, p0, Lctj;->c:I

    .line 609
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lctj;->c(Ljava/lang/Object;)V

    .line 610
    iget v0, p0, Lctj;->c:I

    if-ne v2, v0, :cond_0

    .line 611
    invoke-direct {p0}, Lctj;->h()V

    .line 612
    invoke-static {}, Lctj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->pause(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->pause(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lctj$a;)V
    .locals 2
    .param p1, "listener"    # Lctj$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    if-eqz p1, :cond_1

    .line 215
    iget-boolean v0, p0, Lctj;->g:Z

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    .line 220
    :cond_0
    iget-object v0, p0, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 626
    iget-object v2, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 627
    invoke-direct {p0}, Lctj;->i()Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lctj;->c:I

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    iget v3, p0, Lctj;->c:I

    if-ne v2, v3, :cond_0

    .line 631
    :cond_2
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    .line 632
    .local v0, "oldId":Ljava/lang/Object;
    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    .line 633
    .local v1, "oldUrl":Ljava/lang/String;
    iput-object v4, p0, Lctj;->a:Ljava/lang/Object;

    .line 634
    iput-object v4, p0, Lctj;->b:Ljava/lang/String;

    .line 635
    const/4 v2, 0x0

    iput v2, p0, Lctj;->d:F

    .line 636
    const/4 v2, 0x0

    iput v2, p0, Lctj;->c:I

    .line 637
    invoke-direct {p0, v0}, Lctj;->d(Ljava/lang/Object;)V

    .line 638
    iget v2, p0, Lctj;->c:I

    if-nez v2, :cond_0

    .line 639
    invoke-direct {p0}, Lctj;->h()V

    .line 640
    invoke-static {}, Lctj;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 641
    iget-object v2, p0, Lctj;->j:Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_3
    iget-object v2, p0, Lctj;->k:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 820
    iget-object v2, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 821
    iget-object v2, p0, Lctj;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 823
    .local v0, "log":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "VoicePlayer"

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, " voice play error: "

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, " msg:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget v2, p0, Lctj;->c:I

    if-eqz v2, :cond_1

    .line 825
    iget-object v1, p0, Lctj;->a:Ljava/lang/Object;

    .line 826
    .local v1, "oldId":Ljava/lang/Object;
    iput-object v5, p0, Lctj;->a:Ljava/lang/Object;

    .line 827
    iput-object v5, p0, Lctj;->b:Ljava/lang/String;

    .line 828
    const/4 v2, 0x0

    iput v2, p0, Lctj;->d:F

    .line 829
    const/4 v2, 0x0

    iput v2, p0, Lctj;->c:I

    .line 8306
    const/4 v2, 0x1

    iput-boolean v2, p0, Lctj;->g:Z

    .line 7701
    :try_start_0
    iget-object v2, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lctj$a;

    .line 7702
    invoke-interface {v2, v1, p2}, Lctj$a;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7706
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lctj;->f()V

    throw v2

    :cond_0
    invoke-direct {p0}, Lctj;->f()V

    .line 831
    iget v2, p0, Lctj;->c:I

    if-nez v2, :cond_1

    .line 832
    invoke-direct {p0}, Lctj;->h()V

    .line 837
    .end local v0    # "log":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "oldId":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onPlayStateListener(Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 736
    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lctj;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    packed-switch p2, :pswitch_data_0

    .line 796
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 741
    :pswitch_1
    iget v1, p0, Lctj;->c:I

    if-eq v1, v4, :cond_0

    .line 742
    iput v4, p0, Lctj;->c:I

    .line 743
    iget-object v1, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lctj;->c(Ljava/lang/Object;)V

    .line 744
    iget v1, p0, Lctj;->c:I

    if-ne v1, v4, :cond_0

    .line 745
    invoke-direct {p0}, Lctj;->h()V

    goto :goto_0

    .line 750
    :pswitch_2
    iget v1, p0, Lctj;->c:I

    if-eq v1, v2, :cond_0

    .line 751
    iput v2, p0, Lctj;->c:I

    .line 752
    iget-object v1, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lctj;->b(Ljava/lang/Object;)V

    .line 753
    iget v1, p0, Lctj;->c:I

    if-ne v1, v2, :cond_0

    .line 754
    invoke-direct {p0}, Lctj;->g()V

    goto :goto_0

    .line 759
    :pswitch_3
    iget v1, p0, Lctj;->c:I

    if-eq v1, v2, :cond_0

    .line 760
    iput v2, p0, Lctj;->c:I

    .line 761
    iget-object v1, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lctj;->a(Ljava/lang/Object;)V

    .line 762
    iget v1, p0, Lctj;->c:I

    if-ne v1, v2, :cond_0

    .line 763
    invoke-direct {p0}, Lctj;->g()V

    goto :goto_0

    .line 768
    :pswitch_4
    iget v1, p0, Lctj;->c:I

    if-eqz v1, :cond_0

    .line 769
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    .line 770
    .local v0, "oldId":Ljava/lang/Object;
    iput-object v3, p0, Lctj;->a:Ljava/lang/Object;

    .line 771
    iput-object v3, p0, Lctj;->b:Ljava/lang/String;

    .line 772
    iput v5, p0, Lctj;->d:F

    .line 773
    iput v6, p0, Lctj;->c:I

    .line 7306
    iput-boolean v2, p0, Lctj;->g:Z

    .line 6713
    :try_start_0
    iget-object v1, p0, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lctj$a;

    .line 6714
    invoke-interface {v1, v0}, Lctj$a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6718
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lctj;->f()V

    throw v1

    :cond_1
    invoke-direct {p0}, Lctj;->f()V

    .line 775
    iget v1, p0, Lctj;->c:I

    if-nez v1, :cond_0

    .line 776
    invoke-direct {p0}, Lctj;->h()V

    goto :goto_0

    .line 781
    .end local v0    # "oldId":Ljava/lang/Object;
    :pswitch_5
    iget v1, p0, Lctj;->c:I

    if-eqz v1, :cond_0

    .line 782
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    .line 783
    .restart local v0    # "oldId":Ljava/lang/Object;
    iput-object v3, p0, Lctj;->a:Ljava/lang/Object;

    .line 784
    iput-object v3, p0, Lctj;->b:Ljava/lang/String;

    .line 785
    iput v5, p0, Lctj;->d:F

    .line 786
    iput v6, p0, Lctj;->c:I

    .line 787
    invoke-direct {p0, v0}, Lctj;->d(Ljava/lang/Object;)V

    .line 788
    iget v1, p0, Lctj;->c:I

    if-nez v1, :cond_0

    .line 789
    invoke-direct {p0}, Lctj;->h()V

    goto/16 :goto_0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onProgressListener(Ljava/lang/String;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 810
    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lctj;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lctj;->d:F

    .line 813
    iget-object v0, p0, Lctj;->a:Ljava/lang/Object;

    invoke-direct {p0, v0, p2, p3}, Lctj;->a(Ljava/lang/Object;II)V

    .line 816
    :cond_0
    return-void
.end method

.method public onRequestFinsh(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 805
    const-string/jumbo v0, "VoicePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " voice play request finished!  downloadSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 800
    const-string/jumbo v0, "VoicePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " voice play request start!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void
.end method
