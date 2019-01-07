.class public Lcom/ali/user/enterprise/base/coordinator/Coordinator;
.super Ljava/lang/Object;
.source "Coordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/enterprise/base/coordinator/Coordinator$StandaloneTask;,
        Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;,
        Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordinatorRejectHandler;,
        Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator;,
        Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityQueue;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x8

.field private static final KEEP_ALIVE:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field public static final QUEUE_PRIORITY_NORMAL:I = 0x1e

.field protected static final TAG:Ljava/lang/String; = "Coordinator"

.field protected static final mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field static sThreadPoolExecutor:Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x64

    new-instance v2, Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator;

    invoke-direct {v2}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$PriorityComparator;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 42
    new-instance v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator$1;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$1;-><init>()V

    sput-object v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 49
    new-instance v1, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;

    const/16 v2, 0x8

    const/16 v3, 0x80

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordinatorRejectHandler;

    invoke-direct {v9}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordinatorRejectHandler;-><init>()V

    invoke-direct/range {v1 .. v9}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadPoolExecutor:Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    sget-object v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadPoolExecutor:Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;->execute(Ljava/lang/Runnable;I)V

    .line 79
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;I)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "queuePriority"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadPoolExecutor:Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;

    invoke-virtual {v0, p0, p1}, Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;->execute(Ljava/lang/Runnable;I)V

    .line 83
    return-void
.end method

.method public static getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/ali/user/enterprise/base/coordinator/Coordinator;->sThreadPoolExecutor:Lcom/ali/user/enterprise/base/coordinator/Coordinator$CoordThreadPoolExecutor;

    return-object v0
.end method

.method protected static getOuterClass(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "inner"    # Ljava/lang/Object;

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "this$0"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 146
    .local v2, "outer":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    .line 156
    .end local v2    # "outer":Ljava/lang/reflect/Field;
    :goto_0
    return-object p0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e1":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1    # "e1":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static runWithTiming(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 93
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    throw v1
.end method
