.class public final Llkt;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Llkt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Llgv;

.field private final b:Llgv;

.field private final c:Llgv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Llkt;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->f()Llkq;

    .line 78
    invoke-static {}, Llkq;->d()Llgv;

    .line 82
    invoke-static {}, Llkq;->a()Llgv;

    move-result-object v0

    iput-object v0, p0, Llkt;->a:Llgv;

    .line 85
    invoke-static {}, Llkq;->e()Llgv;

    .line 89
    invoke-static {}, Llkq;->b()Llgv;

    move-result-object v0

    iput-object v0, p0, Llkt;->b:Llgv;

    .line 92
    invoke-static {}, Llkq;->f()Llgv;

    .line 96
    invoke-static {}, Llkq;->c()Llgv;

    move-result-object v0

    iput-object v0, p0, Llkt;->c:Llgv;

    .line 98
    return-void
.end method

.method public static a()Llgv;
    .locals 3

    .prologue
    .line 1061
    :goto_0
    sget-object v0, Llkt;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkt;

    .line 1062
    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v0, v0, Llkt;->b:Llgv;

    invoke-static {v0}, Llkm;->a(Llgv;)Llgv;

    move-result-object v0

    return-object v0

    .line 1065
    :cond_1
    new-instance v0, Llkt;

    invoke-direct {v0}, Llkt;-><init>()V

    .line 1066
    sget-object v1, Llkt;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    invoke-direct {v0}, Llkt;->b()V

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llkt;->a:Llgv;

    instance-of v0, v0, Llif;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Llkt;->a:Llgv;

    check-cast v0, Llif;

    invoke-interface {v0}, Llif;->b()V

    .line 244
    :cond_0
    iget-object v0, p0, Llkt;->b:Llgv;

    instance-of v0, v0, Llif;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Llkt;->b:Llgv;

    check-cast v0, Llif;

    invoke-interface {v0}, Llif;->b()V

    .line 247
    :cond_1
    iget-object v0, p0, Llkt;->c:Llgv;

    instance-of v0, v0, Llif;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Llkt;->c:Llgv;

    check-cast v0, Llif;

    invoke-interface {v0}, Llif;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_2
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
