.class public final Lgwu;
.super Ljava/lang/Object;
.source "ARServiceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgwu$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:F

.field d:Z

.field e:Lgwu$a;

.field f:Z

.field g:Ljava/lang/String;

.field public h:Lcom/alibaba/dt/ar/core/ArJniWrapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lgwu;->a:Z

    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lgwu;->c:F

    .line 23
    iput-boolean v1, p0, Lgwu;->d:Z

    .line 24
    iput-object v2, p0, Lgwu;->e:Lgwu$a;

    .line 25
    iput-boolean v1, p0, Lgwu;->f:Z

    .line 29
    iput-object v2, p0, Lgwu;->g:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 37
    new-instance v0, Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-direct {v0}, Lcom/alibaba/dt/ar/core/ArJniWrapper;-><init>()V

    iput-object v0, p0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 38
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgwu;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgwu$2;

    invoke-direct {v1, p0}, Lgwu$2;-><init>(Lgwu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;)V
    .locals 2
    .param p1, "view"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgwu;->f:Z

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lgwu$a;

    invoke-direct {v0, p0}, Lgwu$a;-><init>(Lgwu;)V

    iput-object v0, p0, Lgwu;->e:Lgwu$a;

    .line 54
    iget-object v0, p0, Lgwu;->e:Lgwu$a;

    invoke-virtual {p1, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->a(Landroid/os/Handler;)V

    .line 56
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgwu;->g:Ljava/lang/String;

    .line 63
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgwu$1;

    invoke-direct {v1, p0}, Lgwu$1;-><init>(Lgwu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgwu;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    monitor-exit p0

    return-void

    .line 60
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/JavaCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgwu;->g:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
