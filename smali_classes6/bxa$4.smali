.class final Lbxa$4;
.super Ljava/lang/Object;
.source "PlayerListeners.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxa;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxa;


# direct methods
.method constructor <init>(Lbxa;)V
    .locals 0
    .param p1, "this$0"    # Lbxa;

    .prologue
    .line 119
    iput-object p1, p0, Lbxa$4;->a:Lbxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z
    .locals 6
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # J
    .param p4, "extra"    # J
    .param p6, "l2"    # J
    .param p8, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Lbxa$4;->a:Lbxa;

    .line 1023
    iput-boolean v4, v1, Lbxa;->j:Z

    .line 123
    iget-object v1, p0, Lbxa$4;->a:Lbxa;

    .line 2023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 123
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxa$4;->a:Lbxa;

    .line 3023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 124
    iget-object v1, p0, Lbxa$4;->a:Lbxa;

    .line 4023
    iget-object v1, v1, Lbxa;->h:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwz;

    .line 125
    .local v0, "listener":Lbwz;
    long-to-int v2, p2

    long-to-int v3, p4

    invoke-interface {v0, p1, v2, v3, p8}, Lbwz;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer;IILjava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v0    # "listener":Lbwz;
    :cond_0
    return v4
.end method
