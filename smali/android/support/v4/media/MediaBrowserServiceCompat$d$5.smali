.class final Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/os/ResultReceiver;

.field final synthetic d:Landroid/support/v4/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    .prologue
    .line 828
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->c:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 831
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 833
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Lfk;

    invoke-virtual {v2, v0}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 834
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    if-nez v1, :cond_1

    .line 835
    const-string/jumbo v2, "MBServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMediaItem for callback that isn\'t registered id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    return-void

    .line 838
    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->b:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$5;->c:Landroid/support/v4/os/ResultReceiver;

    .line 2370
    new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$2;

    invoke-direct {v5, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V

    .line 2384
    iput-object v1, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 3100
    const/4 v4, 0x2

    .line 3665
    iput v4, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->h:I

    .line 3101
    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->b(Ljava/lang/Object;)V

    .line 2386
    iput-object v6, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 2388
    invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2389
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
