.class final Ljow$7;
.super Ljava/lang/Object;
.source "NormalVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljow;-><init>(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljow;


# direct methods
.method constructor <init>(Ljow;)V
    .locals 0
    .param p1, "this$0"    # Ljow;

    .prologue
    .line 116
    iput-object p1, p0, Ljow$7;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 119
    iget-object v0, p0, Ljow$7;->a:Ljow;

    .line 1017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Ljow$7;->a:Ljow;

    .line 2017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 120
    invoke-interface {v0}, Ljov$a;->f()V

    .line 122
    :cond_0
    return-void
.end method