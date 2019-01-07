.class final Landroid/support/customtabs/CustomTabsService$1;
.super Lm$a;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/customtabs/CustomTabsService;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Lm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "callback"    # Ll;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Lk;

    invoke-direct {v1, p1}, Lk;-><init>(Ll;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->g()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->d()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .param p1, "flags"    # J

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->a()Z

    move-result v0

    return v0
.end method

.method public final a(Ll;)Z
    .locals 6
    .param p1, "callback"    # Ll;

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v1, Lk;

    invoke-direct {v1, p1}, Lk;-><init>(Ll;)V

    .line 94
    .local v1, "sessionToken":Lk;
    :try_start_0
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v0, p0, v1}, Landroid/support/customtabs/CustomTabsService$1$1;-><init>(Landroid/support/customtabs/CustomTabsService$1;Lk;)V

    .line 100
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-interface {p1}, Ll;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 102
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->a(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Ll;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v3}, Landroid/support/customtabs/CustomTabsService;->b()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 106
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    return v2

    .line 103
    .restart local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 106
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final a(Ll;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "callback"    # Ll;
    .param p2, "postMessageOrigin"    # Landroid/net/Uri;

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Lk;

    invoke-direct {v1, p1}, Lk;-><init>(Ll;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->f()Z

    move-result v0

    return v0
.end method

.method public final a(Ll;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .param p1, "callback"    # Ll;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Lk;

    invoke-direct {v1, p1}, Lk;-><init>(Ll;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->c()Z

    move-result v0

    return v0
.end method

.method public final a(Ll;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callback"    # Ll;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->a:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Lk;

    invoke-direct {v1, p1}, Lk;-><init>(Ll;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->e()Z

    move-result v0

    return v0
.end method
