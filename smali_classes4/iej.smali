.class public final Liej;
.super Ljava/lang/Object;
.source "AudioRegulator.java"


# static fields
.field private static d:Liej;


# instance fields
.field public a:Landroid/media/AudioManager;

.field public b:Liek$c;

.field public c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Liej;->a:Landroid/media/AudioManager;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Liej;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v1, Liej;

    monitor-enter v1

    :try_start_0
    sget-object v0, Liej;->d:Liej;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Liej;

    invoke-direct {v0, p0}, Liej;-><init>(Landroid/content/Context;)V

    sput-object v0, Liej;->d:Liej;

    .line 25
    :cond_0
    sget-object v0, Liej;->d:Liej;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Liej;->b:Liek$c;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Liej;->b:Liek$c;

    iget-object v1, p0, Liej;->a:Landroid/media/AudioManager;

    invoke-interface {v0, v1}, Liek$c;->b(Landroid/media/AudioManager;)V

    .line 82
    :cond_0
    iget-object v0, p0, Liej;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 83
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Liej;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Liej;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    goto :goto_0
.end method
