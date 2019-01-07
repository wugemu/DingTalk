.class public final Lml;
.super Ljava/lang/Object;
.source "RepeatProcessor.java"


# static fields
.field private static final a:[Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 15
    new-array v1, v3, [Ljava/util/concurrent/ExecutorService;

    sput-object v1, Lml;->a:[Ljava/util/concurrent/ExecutorService;

    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lml;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 20
    sget-object v1, Lml;->a:[Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lml$1;

    invoke-direct {v2}, Lml$1;-><init>()V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lml;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static a(ILjava/lang/Runnable;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    rem-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 32
    .local v0, "num":I
    sget-object v1, Lml;->a:[Ljava/util/concurrent/ExecutorService;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    return-void
.end method
