.class public final Lhbq;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhbq$b;,
        Lhbq$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/util/Collection;
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

.field public c:Lhbq$b;

.field private f:Z

.field private g:Z

.field private final h:Z

.field private final i:Landroid/hardware/Camera;

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
    .line 18
    const-class v0, Lhbq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhbq;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    sput-object v0, Lhbq;->e:Ljava/util/Collection;

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lhbq;->e:Ljava/util/Collection;

    const-string/jumbo v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lhbq;->a:J

    .line 38
    const/4 v3, 0x0

    iput-object v3, p0, Lhbq;->c:Lhbq$b;

    .line 41
    iput-object p2, p0, Lhbq;->i:Landroid/hardware/Camera;

    .line 43
    new-instance v3, Lhbq$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lhbq$1;-><init>(Lhbq;Landroid/os/Looper;)V

    iput-object v3, p0, Lhbq;->b:Landroid/os/Handler;

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "currentFocusMode":Ljava/lang/String;
    const-string/jumbo v3, "preferences_auto_focus"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lhbq;->e:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v2, p0, Lhbq;->h:Z

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Current focus mode \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'; use auto focus? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lhbq;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    return-void

    .line 52
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lhbq;)V
    .locals 0
    .param p0, "x0"    # Lhbq;

    .prologue
    .line 16
    invoke-direct {p0}, Lhbq;->c()V

    return-void
.end method

.method static synthetic b(Lhbq;)J
    .locals 2
    .param p0, "x0"    # Lhbq;

    .prologue
    .line 16
    iget-wide v0, p0, Lhbq;->a:J

    return-wide v0
.end method

.method private declared-synchronized b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lhbq;->f:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lhbq;->j:Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    .line 70
    new-instance v0, Lhbq$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lhbq$a;-><init>(Lhbq;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v0, "newTask":Lhbq$a;
    :try_start_1
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lhbq$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    iput-object v0, p0, Lhbq;->j:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v0    # "newTask":Lhbq$a;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    .restart local v0    # "newTask":Lhbq$a;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ree":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    sget-object v2, Lhbq;->d:Ljava/lang/String;

    const-string/jumbo v3, "Could not request auto focus"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "newTask":Lhbq$a;
    .end local v1    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lhbq;->h:Z

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lhbq;->j:Landroid/os/AsyncTask;

    .line 94
    iget-boolean v1, p0, Lhbq;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lhbq;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 96
    :try_start_1
    iget-object v1, p0, Lhbq;->i:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhbq;->g:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lhbq;->d:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    invoke-direct {p0}, Lhbq;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhbq;->j:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lhbq;->j:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lhbq;->j:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lhbq;->j:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 118
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lhbq;->f:Z

    .line 119
    iget-object v1, p0, Lhbq;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lhbq;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    :cond_0
    iget-boolean v1, p0, Lhbq;->h:Z

    if-eqz v1, :cond_1

    .line 123
    invoke-direct {p0}, Lhbq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object v1, p0, Lhbq;->i:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v1, Lhbq;->d:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
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
    .line 59
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lhbq;->g:Z

    .line 61
    iget-object v0, p0, Lhbq;->c:Lhbq$b;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lhbq;->c:Lhbq$b;

    invoke-interface {v0}, Lhbq$b;->a()V

    .line 65
    :cond_0
    invoke-direct {p0}, Lhbq;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
