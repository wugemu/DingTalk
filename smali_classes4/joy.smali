.class public final Ljoy;
.super Ljava/lang/Object;
.source "HotPatchDownloaderListener.java"

# interfaces
.implements Ljls;


# instance fields
.field a:Ljpc;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljpc;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "patchInfo"    # Ljpc;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dataSource"    # Ljava/lang/String;
    .param p4, "isTestMode"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Ljoy;->a:Ljpc;

    .line 29
    iput-object p2, p0, Ljoy;->b:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Ljoy;->c:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Ljoy;->d:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 40
    const-string/jumbo v1, "hotpatch_download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljoy;->a:Ljpc;

    iget v3, v3, Ljpc;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Ljmo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v1, "download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v3

    .line 1463
    iget-object v4, v3, Ljoz;->b:Ljava/lang/String;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljoy;->a:Ljpc;

    iget v5, v5, Ljpc;->f:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v1, "hotpatch_download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v3

    .line 2463
    iget-object v4, v3, Ljoz;->b:Ljava/lang/String;

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljoy;->a:Ljpc;

    iget v5, v5, Ljpc;->f:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Ljoy;->c:Ljava/lang/String;

    const-string/jumbo v2, "SafeMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "updateType"

    const-string/jumbo v2, "hotpatch"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "success"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const-string/jumbo v0, "errorMsg"

    invoke-virtual {v7, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Ljoy;->b:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v7}, Ldq;->a(Landroid/content/Intent;)Z

    .line 50
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 54
    const-string/jumbo v1, "hotpatch_download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljoy;->a:Ljpc;

    iget v3, v3, Ljpc;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljmo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "hotpatch_download"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v4

    .line 3463
    iget-object v4, v4, Ljoz;->b:Ljava/lang/String;

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljoy;->a:Ljpc;

    iget v6, v6, Ljpc;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "download"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v4

    .line 4463
    iget-object v4, v4, Ljoz;->b:Ljava/lang/String;

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljoy;->a:Ljpc;

    iget v6, v6, Ljpc;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v1, p0, Ljoy;->d:Z

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ljoy$1;

    invoke-direct {v2, p0}, Ljoy$1;-><init>(Ljoy;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 67
    new-instance v0, Ljoy$2;

    invoke-direct {v0, p0, p2}, Ljoy$2;-><init>(Ljoy;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljoy$2;->start()V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v1

    iget-object v2, p0, Ljoy;->a:Ljpc;

    invoke-virtual {v1, p2, v2}, Ljoz;->a(Ljava/lang/String;Ljpc;)V

    .line 81
    iget-object v1, p0, Ljoy;->c:Ljava/lang/String;

    const-string/jumbo v2, "SafeMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.update.UpdateBroadcast"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "updateType"

    const-string/jumbo v2, "hotpatch"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "success"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string/jumbo v0, "errorMsg"

    const-string/jumbo v1, ""

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Ljoy;->b:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v7}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
