.class final Landroid/support/v4/media/MediaBrowserCompat$i$1;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/MediaBrowserCompat$i;

    .prologue
    .line 1009
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1013
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-nez v2, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1018
    sget-boolean v2, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    if-eqz v2, :cond_2

    .line 1020
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mServiceConnection should be null. Instead it is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1024
    :cond_2
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    if-eqz v2, :cond_3

    .line 1025
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mServiceBinderWrapper should be null. Instead it is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1028
    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    if-eqz v2, :cond_4

    .line 1029
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mCallbacksMessenger should be null. Instead it is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1033
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.browse.MediaBrowserService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1036
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$i$a;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$i$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .local v0, "bound":Z
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1045
    :goto_1
    if-nez v0, :cond_5

    .line 1047
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat$i;->a()V

    .line 1048
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat$b;->c()V

    .line 1051
    :cond_5
    sget-boolean v2, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v2, :cond_0

    .line 1053
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat$i;->b()V

    goto/16 :goto_0

    .line 1042
    :catch_0
    move-exception v2

    const-string/jumbo v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed binding to service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserCompat$i;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
