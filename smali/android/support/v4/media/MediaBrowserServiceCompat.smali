.class public abstract Landroid/support/v4/media/MediaBrowserServiceCompat;
.super Landroid/app/Service;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompat$a;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$f;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$e;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$d;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$c;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$b;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$g;,
        Landroid/support/v4/media/MediaBrowserServiceCompat$ResultFlags;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/support/v4/media/MediaBrowserServiceCompat$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

.field final d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

.field e:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v0, "MBServiceCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 159
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->b:Lfk;

    .line 161
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$g;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    .line 1456
    return-void
.end method

.method static a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v5, -0x1

    .line 1349
    if-nez p0, :cond_1

    .line 1350
    const/4 p0, 0x0

    .line 1365
    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 1352
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    :cond_1
    const-string/jumbo v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1353
    .local v1, "page":I
    const-string/jumbo v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1354
    .local v2, "pageSize":I
    if-ne v1, v5, :cond_2

    if-eq v2, v5, :cond_0

    .line 1357
    :cond_2
    mul-int v0, v2, v1

    .line 1358
    .local v0, "fromIndex":I
    add-int v3, v0, v2

    .line 1359
    .local v3, "toIndex":I
    if-ltz v1, :cond_3

    if-lez v2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 1360
    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 1362
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 1363
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1365
    :cond_5
    invoke-interface {p0, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;)Z
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1281
    if-nez p2, :cond_2

    .line 1282
    iget-object v3, p1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1298
    :cond_0
    :goto_0
    return v2

    .line 1282
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1284
    :cond_2
    const/4 v2, 0x0

    .line 1285
    .local v2, "removed":Z
    iget-object v3, p1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1286
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v0, :cond_0

    .line 1287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1288
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lft;

    iget-object v3, v3, Lft;->a:Ljava/lang/Object;

    if-ne p2, v3, :cond_3

    .line 1290
    const/4 v2, 0x1

    .line 1291
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1294
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1295
    iget-object v3, p1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/support/v4/media/MediaBrowserServiceCompat$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method final a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1261
    iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1262
    .local v7, "callbackList":Ljava/util/List;, "Ljava/util/List<Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-nez v7, :cond_0

    .line 1263
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .restart local v7    # "callbackList":Ljava/util/List;, "Ljava/util/List<Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lft;

    .line 1266
    .local v6, "callback":Lft;, "Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v0, v6, Lft;->a:Ljava/lang/Object;

    if-ne p3, v0, :cond_1

    iget-object v0, v6, Lft;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1267
    invoke-static {p4, v0}, Lep;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    .end local v6    # "callback":Lft;, "Lft<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    :cond_2
    return-void

    .line 1271
    :cond_3
    new-instance v0, Lft;

    invoke-direct {v0, p3, p4}, Lft;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v0, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2333
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 2334
    if-eqz p4, :cond_4

    .line 3077
    const/4 v1, 0x1

    .line 3665
    iput v1, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->h:I

    .line 2339
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 2341
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2342
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
