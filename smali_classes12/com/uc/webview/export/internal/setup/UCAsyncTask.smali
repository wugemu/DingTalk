.class public Lcom/uc/webview/export/internal/setup/UCAsyncTask;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;,
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;,
        Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
        "CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field protected static final EVENT_COST:Ljava/lang/String; = "cost"

.field protected static final EVENT_DIE:Ljava/lang/String; = "die"

.field protected static final EVENT_EXCEPTION:Ljava/lang/String; = "exception"

.field protected static final EVENT_GONE:Ljava/lang/String; = "gone"

.field protected static final EVENT_PAUSE:Ljava/lang/String; = "pause"

.field protected static final EVENT_PROGRESS:Ljava/lang/String; = "progress"

.field protected static final EVENT_RESUME:Ljava/lang/String; = "resume"

.field protected static final EVENT_START:Ljava/lang/String; = "start"

.field protected static final EVENT_STOP:Ljava/lang/String; = "stop"

.field protected static final EVENT_SUCCESS:Ljava/lang/String; = "success"

.field public static final cleanThread:I = 0x2718

.field public static final clearSubTasks:I = 0x271c

.field public static final getBlankString:I = 0x271b

.field public static final getCallback:I = 0x2717

.field public static final getCosts:I = 0x2716

.field public static final getEvent:I = 0x2719

.field public static final getParent:I = 0x2715

.field public static final getParentCnt:I = 0x271a

.field public static final getPercent:I = 0x2721

.field public static final getPriority:I = 0x271d

.field public static final getRootTask:I = 0x271f

.field public static final getTaskCount:I = 0x271e

.field public static final inThread:I = 0x2720

.field public static final isPaused:I = 0x2722

.field private static final n:Ljava/lang/Boolean;

.field public static final post:I = 0x2714

.field public static final setCallbacks:I = 0x2712

.field public static final setParent:I = 0x2711

.field public static final setPriority:I = 0x2713


# instance fields
.field private a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Integer;

.field private f:Z

.field private g:Z

.field private final h:Lcom/uc/webview/export/internal/setup/bt;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/Runnable;

.field protected mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<TCA",
            "LLBACK_TYPE;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field protected mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field protected mHasStarted:Z

.field protected mPercent:I

.field private o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    .line 83
    const/16 v0, 0x2711

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    .line 39
    iput-boolean v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    .line 40
    iput-boolean v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 41
    new-instance v0, Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bt;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    .line 51
    iput-boolean v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    .line 55
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    .line 71
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    .line 72
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;)V

    .line 77
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/bt;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    return-object v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    return v0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    return-wide v0
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    return-wide v0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    return v0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-object v0
.end method

.method static synthetic k(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method protected callback(Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 301
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Ljava/lang/String;

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v3

    .line 306
    const-string/jumbo v0, "stat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const-string/jumbo v0, "d"

    const-string/jumbo v1, "UCAsyncTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_0

    .line 309
    const-string/jumbo v0, "cost"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callback: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x271b

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v1, 0x271a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " cost:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%5s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v1, v6, v7

    .line 313
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " cost_cpu:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%5s"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v1, v6, v7

    .line 314
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " task:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 321
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 319
    invoke-virtual {v2, v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 327
    :cond_0
    const-string/jumbo v0, "exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 328
    const-string/jumbo v0, "w"

    const-string/jumbo v1, "UCAsyncTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    const-string/jumbo v1, "callback: exception: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 331
    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v3, v1, :cond_1

    .line 332
    const-string/jumbo v1, "callback: rootCause: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    :cond_1
    :goto_1
    const/16 v0, 0x2717

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p1, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 342
    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 344
    :cond_2
    instance-of v1, v0, Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_3

    .line 345
    check-cast v0, Landroid/webkit/ValueCallback;

    .line 346
    :try_start_1
    invoke-interface {v0, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :cond_3
    :goto_2
    return-void

    .line 319
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "callback: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x271b

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v0, 0x271a

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v7}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "progress"

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2721

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v0, "exception"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3

    .line 321
    :cond_6
    const-string/jumbo v0, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public getException()Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method public getExtraException()Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method public final varargs invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object p0
.end method

.method public final varargs invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x2715

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v0, v2

    .line 246
    :goto_1
    return-object v0

    .line 130
    :pswitch_0
    aget-object v0, p2, v1

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 131
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto :goto_0

    .line 135
    :pswitch_1
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto :goto_2

    .line 143
    :pswitch_2
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 148
    :pswitch_3
    aget-object v0, p2, v1

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 149
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eq v1, p0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please use \"new UCAsyncTask(parentTask).start()\" instead of \"post(new UCAsyncTask())\" to add sub task."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_2

    .line 155
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :pswitch_4
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 163
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j:Landroid/os/Handler;

    .line 164
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 165
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    .line 166
    const-string/jumbo v0, "UCAsyncTask"

    const-string/jumbo v1, "cleanThread"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :pswitch_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 172
    :cond_3
    const-string/jumbo v0, "UCAsyncTask"

    const-string/jumbo v1, "clearSubTasks"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto/16 :goto_1

    .line 181
    :pswitch_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o:Ljava/util/Vector;

    goto/16 :goto_1

    .line 185
    :pswitch_8
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_4

    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    goto/16 :goto_1

    .line 190
    :pswitch_9
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 194
    :pswitch_a
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-object v3, v0

    move v0, v1

    .line 196
    :goto_3
    if-eqz v3, :cond_5

    .line 197
    add-int/lit8 v2, v0, 0x1

    .line 198
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-object v3, v0

    move v0, v2

    goto :goto_3

    .line 200
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 204
    :pswitch_b
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    .line 208
    const-string/jumbo v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_4

    .line 210
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 214
    :pswitch_c
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    goto/16 :goto_1

    .line 218
    :pswitch_d
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_7

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c:I

    add-int/2addr v0, v1

    goto :goto_5

    .line 223
    :goto_6
    :pswitch_e
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 224
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-object p0, v0

    goto :goto_6

    :cond_8
    move-object v0, p0

    .line 226
    goto/16 :goto_1

    .line 230
    :pswitch_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    if-ne v2, v3, :cond_9

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_7

    .line 234
    :pswitch_10
    iget v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mPercent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 238
    :pswitch_11
    const/16 v0, 0x271f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 239
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    monitor-enter v1

    .line 240
    :try_start_1
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto/16 :goto_1

    .line 241
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<TCA",
            "LLBACK_TYPE;",
            ">;)TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 626
    if-eqz p1, :cond_2

    .line 627
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 632
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_1
    if-nez p2, :cond_3

    .line 635
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_2
    :goto_0
    return-object p0

    .line 632
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pause()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 583
    const/16 v0, 0x271f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 584
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    monitor-enter v1

    .line 585
    :try_start_0
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    if-nez v2, :cond_0

    .line 586
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    .line 587
    :cond_0
    monitor-exit v1

    .line 588
    return-object p0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 607
    const/16 v0, 0x271f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 608
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    monitor-enter v1

    .line 609
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f:Z

    .line 611
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    if-eqz v2, :cond_0

    .line 612
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(ILjava/lang/Object;)V

    .line 614
    :cond_0
    monitor-exit v1

    .line 616
    return-object p0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 623
    :cond_0
    return-void
.end method

.method public setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 650
    return-void
.end method

.method public setExtraException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mExtraException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    .line 659
    return-void
.end method

.method public start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 552
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 554
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mHasStarted:Z

    .line 556
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v2, 0x2714

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 562
    :cond_1
    :goto_0
    monitor-exit v1

    .line 564
    return-object p0

    .line 559
    :cond_2
    new-instance v0, Lcom/uc/webview/export/internal/setup/bu;

    const-class v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/uc/webview/export/internal/setup/bu;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TRETURN_TYPE;"
        }
    .end annotation

    .prologue
    .line 568
    iput-wide p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l:J

    .line 569
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h:Lcom/uc/webview/export/internal/setup/bt;

    monitor-enter v1

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g:Z

    .line 577
    monitor-exit v1

    .line 578
    return-object p0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
