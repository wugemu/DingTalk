.class public Lind;
.super Ljava/lang/Object;
.source "StandardPipeline.java"


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Limz;",
            ">;"
        }
    .end annotation
.end field

.field final b:Linf;

.field volatile c:Limz;

.field protected volatile d:Z

.field private e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lind;-><init>(Ljava/util/concurrent/Executor;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Line;

    invoke-direct {v0, p0}, Line;-><init>(Lind;)V

    iput-object v0, p0, Lind;->b:Linf;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lind;->d:Z

    .line 65
    iput-object p1, p0, Lind;->e:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method static synthetic a(Lind;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lind;->c()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lind;->c:Limz;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lind;->c()V

    .line 128
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 134
    iget-object v1, p0, Lind;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limz;

    iput-object v0, p0, Lind;->c:Limz;

    .line 141
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lind;->c:Limz;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lind;->e:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lind;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lind;->c:Limz;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lind;->c:Limz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lind;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "StandardPipeline start failed : The StandardPipeline\'s Execturo is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lind;->d:Z

    .line 116
    invoke-direct {p0}, Lind;->b()V

    .line 117
    return-void
.end method

.method public final a(Limz;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline has already stopped."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lind;->b:Linf;

    .line 1117
    iput-object v0, p1, Limz;->d:Linf;

    .line 90
    iget-object v3, p0, Lind;->a:Ljava/util/ArrayList;

    monitor-enter v3

    .line 92
    :try_start_0
    iget-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 94
    iget v4, p1, Limz;->e:I

    iget-object v0, p0, Lind;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limz;

    iget v0, v0, Limz;->e:I

    if-gt v4, v0, :cond_3

    .line 95
    add-int/lit8 v0, v2, 0x1

    .line 99
    :goto_1
    if-gez v0, :cond_1

    move v0, v1

    .line 101
    :cond_1
    :goto_2
    iget-object v1, p0, Lind;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-boolean v0, p0, Lind;->d:Z

    if-eqz v0, :cond_2

    .line 105
    invoke-direct {p0}, Lind;->b()V

    .line 107
    :cond_2
    return-void

    .line 93
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
