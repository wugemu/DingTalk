.class Landroid/support/v4/media/MediaBrowserCompat$f;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$b$a;
.implements Landroid/support/v4/media/MediaBrowserCompat$e;
.implements Landroid/support/v4/media/MediaBrowserCompat$j;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field protected final b:Ljava/lang/Object;

.field protected final c:Landroid/os/Bundle;

.field protected final d:Landroid/support/v4/media/MediaBrowserCompat$a;

.field protected e:Landroid/support/v4/media/MediaBrowserCompat$l;

.field protected f:Landroid/os/Messenger;

.field private final g:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$m;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$b;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    .line 1584
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->g:Lfk;

    .line 1592
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->a:Landroid/content/Context;

    .line 1593
    if-nez p4, :cond_0

    .line 1594
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "rootHints":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 1596
    .restart local p4    # "rootHints":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "extra_client_version"

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1597
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->c:Landroid/os/Bundle;

    .line 2631
    iput-object p0, p3, Landroid/support/v4/media/MediaBrowserCompat$b;->b:Landroid/support/v4/media/MediaBrowserCompat$b$a;

    .line 1599
    iget-object v0, p3, Landroid/support/v4/media/MediaBrowserCompat$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->c:Landroid/os/Bundle;

    .line 3039
    new-instance v2, Landroid/media/browse/MediaBrowser;

    check-cast v0, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    .line 1599
    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->b:Ljava/lang/Object;

    .line 1601
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 1851
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->b:Ljava/lang/Object;

    .line 5065
    check-cast v3, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1852
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    const-string/jumbo v3, "extra_messenger"

    invoke-static {v0, v3}, Lci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1856
    .local v1, "serviceBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 1857
    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->c:Landroid/os/Bundle;

    invoke-direct {v3, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$l;-><init>(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->e:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 1858
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    .line 1859
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 1861
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->e:Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    .line 5136
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5137
    const-string/jumbo v6, "data_root_hints"

    iget-object v7, v3, Landroid/support/v4/media/MediaBrowserCompat$l;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5138
    const/4 v6, 0x6

    invoke-virtual {v3, v6, v5, v4}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    :cond_2
    :goto_1
    const-string/jumbo v3, "extra_session_binder"

    .line 1867
    invoke-static {v0, v3}, Lci;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1866
    invoke-static {v3}, Les$a;->a(Landroid/os/IBinder;)Les;

    move-result-object v2

    .line 1868
    .local v2, "sessionToken":Les;
    if-eqz v2, :cond_0

    .line 1869
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->b:Ljava/lang/Object;

    .line 6069
    check-cast v3, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 1869
    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Les;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    goto :goto_0

    .end local v2    # "sessionToken":Les;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public final a(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 1896
    return-void
.end method

.method public final a(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 1891
    return-void
.end method

.method public final a(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1901
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    if-eq v1, p1, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->g:Lfk;

    invoke-virtual {v1, p2}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 1907
    .local v0, "subscription":Landroid/support/v4/media/MediaBrowserCompat$m;
    if-nez v0, :cond_2

    .line 1908
    sget-boolean v1, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz v1, :cond_0

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadChildren for id that isn\'t subscribed id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1915
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p4}, Landroid/support/v4/media/MediaBrowserCompat$m;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$n;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1876
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->e:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 1877
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    .line 1878
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1879
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->d:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 1880
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->b:Ljava/lang/Object;

    .line 3044
    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 1606
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->e:Landroid/support/v4/media/MediaBrowserCompat$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 1612
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->e:Landroid/support/v4/media/MediaBrowserCompat$l;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->f:Landroid/os/Messenger;

    .line 3142
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->b:Ljava/lang/Object;

    .line 4048
    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 1618
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1645
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_0

    .line 1646
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->b:Ljava/lang/Object;

    .line 4069
    check-cast v0, Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 1646
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1649
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$f;->h:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method
