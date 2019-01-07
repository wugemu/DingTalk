.class final Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;
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

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:I

.field final synthetic e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    .prologue
    .line 722
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->c:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 725
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 728
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Lfk;

    invoke-virtual {v2, v0}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$b;-><init>()V

    .line 731
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Ljava/lang/String;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    .line 732
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->c:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->b:Landroid/os/Bundle;

    .line 733
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    .line 735
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    .line 736
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a()Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    .line 739
    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-nez v2, :cond_0

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No root for client "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 741
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$e;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v2

    const-string/jumbo v2, "MBServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 750
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Lfk;

    invoke-virtual {v2, v0, v1}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 756
    :catch_1
    move-exception v2

    const-string/jumbo v2, "MBServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Calling onConnect() failed. Dropping client. pkg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Lfk;

    invoke-virtual {v2, v0}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
