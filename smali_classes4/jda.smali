.class public final Ljda;
.super Ljava/lang/Object;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljda$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:Ljava/lang/String;

.field d:Ljava/util/Timer;

.field e:Ljava/util/TimerTask;

.field f:I

.field public g:Z

.field public h:Ljdj;

.field public i:Ljdc;

.field public j:Landroid/net/ConnectivityManager;

.field public k:J

.field public l:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljda;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Ljda;->b:Z

    const-string/jumbo v0, "com.data.carrier_v4.CollectorManager"

    iput-object v0, p0, Ljda;->c:Ljava/lang/String;

    iput-object v2, p0, Ljda;->d:Ljava/util/Timer;

    iput-object v2, p0, Ljda;->e:Ljava/util/TimerTask;

    iput v1, p0, Ljda;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljda;->g:Z

    iput-object v2, p0, Ljda;->h:Ljdj;

    iput-object v2, p0, Ljda;->i:Ljdc;

    iput-object v2, p0, Ljda;->j:Landroid/net/ConnectivityManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljda;->k:J

    iput-object v2, p0, Ljda;->l:Landroid/content/Context;

    return-void
.end method

.method private h()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Ljda;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljda;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljda;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljda;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ljda;->h()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CollectionManager"

    const-string/jumbo v3, "collStarted"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    iget-object v0, p0, Ljda;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljda;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Ljda;->e:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Ljda;->d:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljda;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Ljda;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Ljda;->d:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ljda;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v2, "getLeftUploadNum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Ljda;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljda;->e()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ljda;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v2, "getInnerString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "version"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CollectionManager"

    const-string/jumbo v3, "getCollVer"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
