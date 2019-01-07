.class public final Lox;
.super Ljava/lang/Object;
.source "MediaAudioControl.java"


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field b:Ljava/lang/String;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lox;->c:Z

    .line 29
    iput-boolean v0, p0, Lox;->d:Z

    .line 32
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lox;->a:Landroid/media/MediaPlayer;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lox;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lox;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 50
    :cond_0
    return-void
.end method
