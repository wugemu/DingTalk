.class public final Liie;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liie$a;,
        Liie$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Z

.field private final h:Landroid/hardware/Camera;

.field private i:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private j:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    sput-object v0, Liie;->c:Ljava/util/Collection;

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Liie;->c:Ljava/util/Collection;

    const-string/jumbo v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Liie;->f:Z

    .line 51
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Liie;->a:J

    .line 55
    iput-object p2, p0, Liie;->h:Landroid/hardware/Camera;

    .line 57
    new-instance v1, Liie$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Liie$1;-><init>(Liie;Landroid/os/Looper;)V

    iput-object v1, p0, Liie;->b:Landroid/os/Handler;

    .line 63
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "currentFocusMode":Ljava/lang/String;
    sget-object v1, Liie;->c:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Liie;->g:Z

    .line 65
    const-string/jumbo v1, "AutoFocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Current focus mode \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'; use auto focus? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Liie;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Liie;)V
    .locals 0
    .param p0, "x0"    # Liie;

    .prologue
    .line 30
    invoke-direct {p0}, Liie;->d()V

    return-void
.end method

.method static synthetic a(Liie;Z)Z
    .locals 1
    .param p0, "x0"    # Liie;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Liie;->e:Z

    return v0
.end method

.method static synthetic b(Liie;)J
    .locals 2
    .param p0, "x0"    # Liie;

    .prologue
    .line 30
    iget-wide v0, p0, Liie;->a:J

    return-wide v0
.end method

.method static synthetic b(Liie;Z)Z
    .locals 1
    .param p0, "x0"    # Liie;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Liie;->f:Z

    return v0
.end method

.method private declared-synchronized c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Liie;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Liie;->i:Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    .line 77
    new-instance v0, Liie$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Liie$a;-><init>(Liie;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v0, "newTask":Liie$a;
    :try_start_1
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Liie$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    iput-object v0, p0, Liie;->i:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v0    # "newTask":Liie$a;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    .restart local v0    # "newTask":Liie$a;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ree":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    const-string/jumbo v2, "AutoFocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not request auto focus:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "newTask":Liie$a;
    .end local v1    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic c(Liie;)Z
    .locals 1
    .param p0, "x0"    # Liie;

    .prologue
    .line 30
    iget-boolean v0, p0, Liie;->f:Z

    return v0
.end method

.method static synthetic d(Liie;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Liie;

    .prologue
    .line 30
    iget-object v0, p0, Liie;->h:Landroid/hardware/Camera;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Liie;->g:Z

    if-eqz v1, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Liie;->i:Landroid/os/AsyncTask;

    .line 101
    iget-boolean v1, p0, Liie;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Liie;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 103
    :try_start_1
    const-string/jumbo v1, "AutoFocusManager"

    const-string/jumbo v2, "camera.autoFocus"

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Liie;->h:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Liie;->e:Z

    .line 106
    iget-boolean v1, p0, Liie;->f:Z

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Liie$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Liie$b;-><init>(Liie;B)V

    iput-object v1, p0, Liie;->j:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    iget-object v1, p0, Liie;->j:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_3
    const-string/jumbo v1, "AutoFocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CheckAutoFocusTask exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v1

    :try_start_4
    const-string/jumbo v1, "AutoFocusManager"

    const-string/jumbo v2, "Unexpected exception while focusing"

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Liie;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liie;->i:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Liie;->i:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Liie;->i:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Liie;->i:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Liie;->j:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Liie;->j:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Liie;->j:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Liie;->j:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Liie;->d:Z

    .line 92
    invoke-direct {p0}, Liie;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Liie;->d:Z

    .line 143
    iget-boolean v1, p0, Liie;->g:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Liie;->e()V

    .line 145
    invoke-direct {p0}, Liie;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    iget-object v1, p0, Liie;->h:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Liie;->e:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v1, "AutoFocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected exception while cancelling focusing:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "theCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Liie;->e:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Liie;->f:Z

    .line 72
    invoke-direct {p0}, Liie;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
