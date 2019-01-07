.class public Lcom/laiwang/update/base/DefaultDownloader;
.super Ljava/lang/Object;
.source "DefaultDownloader.java"

# interfaces
.implements Ljau;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/update/base/DefaultDownloader$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private c:Ljau$a;

.field private d:Landroid/content/Context;

.field private e:Lcom/laiwang/update/base/DefaultDownloader$a;

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x2000

    iput v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->a:I

    .line 34
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->b:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->f:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->g:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->d:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/laiwang/update/base/DefaultDownloader;)Z
    .locals 5
    .param p0, "x0"    # Lcom/laiwang/update/base/DefaultDownloader;

    .prologue
    const/4 v1, 0x0

    .line 31
    .line 1347
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->d:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1349
    if-eqz v0, :cond_1

    .line 1352
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1353
    if-eqz v2, :cond_1

    move v0, v1

    .line 1354
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1355
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 1357
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1354
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/update/base/DefaultDownloader;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->c:Ljau$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    .line 1099
    iput-boolean v1, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->a:Z

    .line 1100
    invoke-virtual {v0, v1}, Lcom/laiwang/update/base/DefaultDownloader$a;->cancel(Z)Z

    .line 71
    :cond_0
    return-void
.end method

.method public final a(Ljau$a;)V
    .locals 0
    .param p1, "listener"    # Ljau$a;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/laiwang/update/base/DefaultDownloader;->c:Ljau$a;

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "size"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    invoke-virtual {v0, v2}, Lcom/laiwang/update/base/DefaultDownloader$a;->cancel(Z)Z

    .line 53
    :cond_0
    new-instance v0, Lcom/laiwang/update/base/DefaultDownloader$a;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/laiwang/update/base/DefaultDownloader$a;-><init>(Lcom/laiwang/update/base/DefaultDownloader;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/update/base/DefaultDownloader$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader;->e:Lcom/laiwang/update/base/DefaultDownloader$a;

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/laiwang/update/base/DefaultDownloader$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
