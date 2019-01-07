.class Lcom/amap/api/mapcore/util/ax$2;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ax;->a(Lcom/amap/api/mapcore/util/aw;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/aw;

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/util/ax;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ax;Lcom/amap/api/mapcore/util/aw;Z)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/ax$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->c()Lcom/amap/api/mapcore/util/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aw;->a:Lcom/amap/api/mapcore/util/ca;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ax$a;->c(Lcom/amap/api/mapcore/util/aw;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    .line 547
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/aw;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ax;->g:Lcom/amap/api/mapcore/util/bd;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bd;->a(Lcom/amap/api/mapcore/util/aw;)V

    .line 551
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ax$2;->b:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ax$a;->c(Lcom/amap/api/mapcore/util/aw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    const-string/jumbo v1, "requestDelete"

    const-string/jumbo v2, "removeExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ax;->g:Lcom/amap/api/mapcore/util/bd;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bd;->a(Lcom/amap/api/mapcore/util/aw;)V

    .line 560
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ax$2;->c:Lcom/amap/api/mapcore/util/ax;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ax;->d(Lcom/amap/api/mapcore/util/ax;)Lcom/amap/api/mapcore/util/ax$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ax$2;->a:Lcom/amap/api/mapcore/util/aw;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ax$a;->c(Lcom/amap/api/mapcore/util/aw;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
