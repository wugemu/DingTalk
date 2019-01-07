.class public Llie;
.super Llgv$a;
.source "NewThreadWorker.java"

# interfaces
.implements Llgz;


# static fields
.field private static final a:Z

.field public static final d:I

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/lang/Object;

.field private static final h:Ljava/lang/Object;


# instance fields
.field final b:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Llie;->h:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Llie;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v2, Llie;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    const-string/jumbo v2, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Llie;->d:I

    .line 66
    const-string/jumbo v2, "rx.scheduler.jdk6.purge-force"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 68
    .local v1, "purgeForce":Z
    invoke-static {}, Llim;->b()I

    move-result v0

    .line 72
    .local v0, "androidApiVersion":I
    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Llie;->a:Z

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 10
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    const/4 v3, 0x1

    .line 210
    invoke-direct {p0}, Llgv$a;-><init>()V

    .line 211
    invoke-static {v3, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 213
    .local v8, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v8}, Llie;->a(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v7

    .line 214
    .local v7, "cancelSupported":Z
    if-nez v7, :cond_1

    instance-of v0, v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_1

    move-object v9, v8

    .line 215
    check-cast v9, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1082
    :goto_0
    sget-object v0, Llie;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 1083
    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxSchedulerPurge-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 1087
    sget-object v1, Llie;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1088
    new-instance v1, Llie$1;

    invoke-direct {v1}, Llie$1;-><init>()V

    sget v2, Llie;->d:I

    int-to-long v2, v2

    sget v4, Llie;->d:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1101
    :cond_0
    sget-object v0, Llie;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v9, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    iput-object v8, p0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 218
    return-void

    .line 1097
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method static a()V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    sget-object v2, Llie;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 121
    .local v0, "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :catch_0
    move-exception v3

    .line 128
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Llhe;->a(Ljava/lang/Throwable;)V

    .line 129
    invoke-static {v3}, Llkm;->a(Ljava/lang/Throwable;)V

    .line 131
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 124
    .restart local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 10
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 142
    sget-boolean v5, Llie;->a:Z

    if-eqz v5, :cond_4

    .line 143
    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 147
    .local v1, "isInstanceOfScheduledThreadPoolExecutor":Z
    if-eqz v1, :cond_3

    .line 148
    sget-object v2, Llie;->g:Ljava/lang/Object;

    .line 150
    .local v2, "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    sget-object v5, Llie;->h:Ljava/lang/Object;

    if-ne v2, v5, :cond_0

    move v5, v6

    .line 183
    .end local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    :goto_0
    return v5

    .line 154
    .restart local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .restart local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_2

    .line 155
    invoke-static {p0}, Llie;->b(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 157
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    move-object v5, v3

    :goto_1
    sput-object v5, Llie;->g:Ljava/lang/Object;

    .line 161
    move-object v4, v3

    .line 169
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .local v4, "methodToCall":Ljava/lang/reflect/Method;
    :goto_2
    if-eqz v4, :cond_4

    .line 171
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move v5, v7

    .line 172
    goto :goto_0

    .line 157
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    .restart local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    sget-object v5, Llie;->h:Ljava/lang/Object;

    goto :goto_1

    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    move-object v4, v2

    .line 163
    check-cast v4, Ljava/lang/reflect/Method;

    .line 165
    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 166
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_3
    invoke-static {p0}, Llie;->b(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v4

    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_4
    :goto_3
    move v5, v6

    .line 183
    goto :goto_0

    .line 175
    .restart local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 177
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Llkm;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static b(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 197
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "setRemoveOnCancelPolicy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 200
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v6, v1, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    .line 206
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v0

    .line 196
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Llhf;)Llgz;
    .locals 3
    .param p1, "action"    # Llhf;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 222
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Llie;->a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Llhf;JLjava/util/concurrent/TimeUnit;)Llgz;
    .locals 2
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 227
    iget-boolean v0, p0, Llie;->c:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Llkz;->b()Llgz;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Llie;->b(Llhf;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Llhf;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Llhf;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 242
    invoke-static {p1}, Llkm;->a(Llhf;)Llhf;

    move-result-object v0

    .line 243
    .local v0, "decoratedAction":Llhf;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Llhf;)V

    .line 245
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 246
    iget-object v3, p0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 250
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 252
    return-object v2

    .line 248
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Llie;->c:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Llie;->c:Z

    .line 289
    iget-object v0, p0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 290
    iget-object v0, p0, Llie;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1109
    sget-object v1, Llie;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method
