.class final Ljow$6;
.super Ljava/lang/Object;
.source "NormalVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


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
    .line 92
    iput-object p1, p0, Ljow$6;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # J
    .param p4, "l1"    # J
    .param p6, "l2"    # J
    .param p8, "o"    # Ljava/lang/Object;

    .prologue
    .line 95
    long-to-int v0, p2

    sparse-switch v0, :sswitch_data_0

    .line 112
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 97
    :sswitch_0
    iget-object v0, p0, Ljow$6;->a:Ljow;

    .line 1017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ljow$6;->a:Ljow;

    .line 2017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 98
    invoke-interface {v0}, Ljov$a;->c()V

    goto :goto_0

    .line 102
    :sswitch_1
    iget-object v0, p0, Ljow$6;->a:Ljow;

    .line 3017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ljow$6;->a:Ljow;

    .line 4017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 103
    invoke-interface {v0}, Ljov$a;->e()V

    goto :goto_0

    .line 107
    :sswitch_2
    iget-object v0, p0, Ljow$6;->a:Ljow;

    .line 5017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ljow$6;->a:Ljow;

    .line 6017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 108
    invoke-interface {v0}, Ljov$a;->g()V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x2bd -> :sswitch_0
        0x2be -> :sswitch_1
    .end sparse-switch
.end method
