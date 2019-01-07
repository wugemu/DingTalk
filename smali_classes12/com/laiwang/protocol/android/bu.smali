.class public abstract Lcom/laiwang/protocol/android/bu;
.super Ljava/lang/Object;
.source "IOExecutor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bu$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/android/bu;->a:Ljava/util/List;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/bu;
    .param p1, "x1"    # Lcom/laiwang/protocol/android/bu$a;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/bu;->d(Lcom/laiwang/protocol/android/bu$a;)V

    return-void
.end method

.method private d(Lcom/laiwang/protocol/android/bu$a;)V
    .locals 3
    .param p1, "task"    # Lcom/laiwang/protocol/android/bu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-boolean v1, p1, Lcom/laiwang/protocol/android/bu$a;->stop:Z

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/android/bu$a;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[IO] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/laiwang/protocol/android/bu$a;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Lcom/laiwang/protocol/android/bu$a;)V
    .locals 4
    .param p1, "task"    # Lcom/laiwang/protocol/android/bu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-wide v0, p1, Lcom/laiwang/protocol/android/bu$a;->delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 31
    iget-wide v0, p1, Lcom/laiwang/protocol/android/bu$a;->delay:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;J)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Runnable;)V
.end method

.method protected abstract a(Ljava/lang/Runnable;J)V
.end method

.method protected abstract b()V
.end method

.method public b(Lcom/laiwang/protocol/android/bu$a;)V
    .locals 4
    .param p1, "task"    # Lcom/laiwang/protocol/android/bu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p1, Lcom/laiwang/protocol/android/bu$a;->delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 39
    new-instance v0, Lcom/laiwang/protocol/android/bu$1;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/android/bu$1;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V

    iget-wide v2, p1, Lcom/laiwang/protocol/android/bu$a;->delay:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;J)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public abstract b(Ljava/lang/Runnable;)V
.end method

.method public c(Lcom/laiwang/protocol/android/bu$a;)V
    .locals 4
    .param p1, "task"    # Lcom/laiwang/protocol/android/bu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-wide v0, p1, Lcom/laiwang/protocol/android/bu$a;->firstDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 57
    new-instance v0, Lcom/laiwang/protocol/android/bu$2;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/android/bu$2;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V

    iget-wide v2, p1, Lcom/laiwang/protocol/android/bu$a;->firstDelay:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;J)V

    .line 77
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/android/bu$3;

    invoke-direct {v0, p0, p1}, Lcom/laiwang/protocol/android/bu$3;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/bu$a;)V

    invoke-virtual {p0, v0}, Lcom/laiwang/protocol/android/bu;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/laiwang/protocol/android/bu;->b:Z

    .line 92
    iget-object v1, p0, Lcom/laiwang/protocol/android/bu;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 93
    .local v0, "task":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 95
    .end local v0    # "task":Landroid/os/Handler;
    :cond_0
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bu;->b()V

    .line 96
    return-void
.end method
