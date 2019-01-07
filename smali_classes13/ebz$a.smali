.class final Lebz$a;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lebz;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lebz;


# direct methods
.method public constructor <init>(Lebz;Lebz;)V
    .locals 1
    .param p2, "mp"    # Lebz;

    .prologue
    .line 271
    iput-object p1, p0, Lebz$a;->b:Lebz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    .line 273
    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 300
    iget-object v1, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebz;

    .line 301
    .local v0, "self":Lebz;
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 4074
    iget-object v2, v1, Leby;->c:Leca$a;

    if-eqz v2, :cond_0

    .line 4075
    iget-object v1, v1, Leby;->c:Leca$a;

    invoke-interface {v1, p2}, Leca$a;->a(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    iget-object v1, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebz;

    .line 308
    .local v0, "self":Lebz;
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 5067
    iget-object v2, v1, Leby;->b:Leca$b;

    if-eqz v2, :cond_0

    .line 5068
    iget-object v1, v1, Leby;->b:Leca$b;

    invoke-interface {v1}, Leca$b;->a()V

    .line 311
    :cond_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v3, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebz;

    .line 282
    .local v0, "self":Lebz;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lebz$a;->b:Lebz;

    .line 2095
    iget-object v4, v3, Leby;->f:Leca$c;

    if-eqz v4, :cond_0

    iget-object v3, v3, Leby;->f:Leca$c;

    invoke-interface {v3, p2, p3}, Leca$c;->a(II)Z

    move v3, v1

    .line 282
    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v3, v2

    .line 2095
    goto :goto_0

    :cond_1
    move v1, v2

    .line 282
    goto :goto_1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    iget-object v3, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebz;

    .line 277
    .local v0, "self":Lebz;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lebz$a;->b:Lebz;

    .line 1099
    iget-object v4, v3, Leby;->g:Leca$d;

    if-eqz v4, :cond_0

    iget-object v3, v3, Leby;->g:Leca$d;

    invoke-interface {v3, p2}, Leca$d;->a(I)Z

    move v3, v1

    .line 277
    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v3, v2

    .line 1099
    goto :goto_0

    :cond_1
    move v1, v2

    .line 277
    goto :goto_1
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    iget-object v1, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebz;

    .line 315
    .local v0, "self":Lebz;
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 6024
    const/4 v2, 0x0

    iput-boolean v2, v1, Lebz;->h:Z

    .line 317
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 7024
    iget-boolean v1, v1, Lebz;->i:Z

    .line 317
    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 8024
    invoke-virtual {v1}, Lebz;->g()V

    .line 320
    :cond_0
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 8060
    iget-object v2, v1, Leby;->a:Leca$e;

    if-eqz v2, :cond_1

    .line 8061
    iget-object v1, v1, Leby;->a:Leca$e;

    invoke-interface {v1}, Leca$e;->a()V

    .line 322
    :cond_1
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 293
    iget-object v0, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    iget-object v1, p0, Lebz$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebz;

    .line 287
    .local v0, "self":Lebz;
    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lebz$a;->b:Lebz;

    .line 3088
    iget-object v2, v1, Leby;->e:Leca$g;

    if-eqz v2, :cond_0

    .line 3089
    iget-object v1, v1, Leby;->e:Leca$g;

    invoke-interface {v1, p2, p3}, Leca$g;->a(II)V

    .line 290
    :cond_0
    return-void
.end method
