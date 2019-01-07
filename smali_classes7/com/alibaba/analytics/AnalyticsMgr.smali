.class public final Lcom/alibaba/analytics/AnalyticsMgr;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/AnalyticsMgr$b;,
        Lcom/alibaba/analytics/AnalyticsMgr$c;,
        Lcom/alibaba/analytics/AnalyticsMgr$RunMode;,
        Lcom/alibaba/analytics/AnalyticsMgr$a;,
        Lcom/alibaba/analytics/AnalyticsMgr$d;
    }
.end annotation


# static fields
.field public static a:Lajt;

.field public static b:Lcom/alibaba/analytics/AnalyticsMgr$d;

.field public static volatile c:Z

.field public static d:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

.field public static e:Z

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/analytics/AnalyticsMgr$a;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/app/Application;

.field private static h:Landroid/os/HandlerThread;

.field private static final i:Ljava/lang/Object;

.field private static final j:Ljava/lang/Object;

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Z

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Z

.field private static t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Z

.field private static w:Z

.field private static x:Ljava/lang/String;

.field private static y:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    .line 35
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->h:Landroid/os/HandlerThread;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->i:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->j:Ljava/lang/Object;

    .line 40
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    .line 41
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Service:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->d:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    .line 42
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->k:Z

    .line 45
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->l:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->m:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->n:Ljava/lang/String;

    .line 48
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->o:Z

    .line 49
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->p:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->q:Ljava/lang/String;

    .line 51
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->r:Ljava/lang/String;

    .line 52
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    .line 53
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->s:Z

    .line 54
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->t:Ljava/util/Map;

    .line 55
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->u:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->f:Ljava/util/List;

    .line 58
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->v:Z

    .line 59
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->w:Z

    .line 60
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->x:Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$1;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$1;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->y:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    .line 1356
    new-instance v1, Lcom/alibaba/analytics/AnalyticsMgr$8;

    invoke-direct {v1}, Lcom/alibaba/analytics/AnalyticsMgr$8;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->s:Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .locals 10
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    const/4 v9, 0x3

    .line 64
    const-class v5, Lcom/alibaba/analytics/AnalyticsMgr;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    if-nez v4, :cond_0

    .line 65
    const-string/jumbo v4, "AnalyticsMgr[init] start"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "sdk_version"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    .line 68
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v6, "Analytics_Client"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->h:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "looper":Landroid/os/Looper;
    :try_start_1
    sget-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->h:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_1

    .line 77
    :try_start_2
    sget-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->h:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 78
    if-nez v2, :cond_1

    .line 82
    const-wide/16 v6, 0xa

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 73
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 101
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "5"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_3
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isInit"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-boolean v8, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "sdk_version"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 105
    monitor-exit v5

    return-void

    .line 83
    .restart local v1    # "i":I
    .restart local v2    # "looper":Landroid/os/Looper;
    :catch_2
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_6
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "2"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 88
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 89
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "3"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-direct {v4, v2}, Lcom/alibaba/analytics/AnalyticsMgr$d;-><init>(Landroid/os/Looper;)V

    sput-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 94
    :try_start_8
    sget-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    new-instance v6, Lcom/alibaba/analytics/AnalyticsMgr$c;

    invoke-direct {v6}, Lcom/alibaba/analytics/AnalyticsMgr$c;-><init>()V

    invoke-virtual {v4, v6}, Lcom/alibaba/analytics/AnalyticsMgr$d;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 98
    :goto_4
    const/4 v4, 0x1

    :try_start_9
    sput-boolean v4, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    .line 99
    const-string/jumbo v4, "\u5916\u9762init\u5b8c\u6210"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 64
    .end local v1    # "i":I
    .end local v2    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 95
    .restart local v1    # "i":I
    .restart local v2    # "looper":Landroid/os/Looper;
    :catch_4
    move-exception v3

    .line 96
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    :try_start_a
    const-string/jumbo v4, "AnalyticsMgr"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "4"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 12
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 501
    const-string/jumbo v0, ""

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 502
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_4

    .line 2300
    const-string/jumbo v0, "[restart]"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    :try_start_0
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->k:Z

    if-eqz v0, :cond_4

    .line 2303
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->k:Z

    .line 2305
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->m()V

    .line 2306
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->n()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2307
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->o:Z

    sget-boolean v1, Lcom/alibaba/analytics/AnalyticsMgr;->w:Z

    sget-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->l:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/analytics/AnalyticsMgr;->b(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2309
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->d(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2310
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->e(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2311
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->q:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->r:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/analytics/AnalyticsMgr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2312
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->t:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->d(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2313
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    if-eqz v0, :cond_0

    .line 2314
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->o()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2316
    :cond_0
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->s:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->u:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2317
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->u:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/analytics/AnalyticsMgr;->e(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2322
    :cond_1
    :goto_0
    sget-object v8, Lcom/alibaba/analytics/AnalyticsMgr;->f:Ljava/util/List;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 2323
    :goto_1
    :try_start_1
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 2324
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/analytics/AnalyticsMgr$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    if-eqz v0, :cond_2

    .line 2327
    :try_start_2
    iget-object v1, v0, Lcom/alibaba/analytics/AnalyticsMgr$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/analytics/AnalyticsMgr$a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/analytics/AnalyticsMgr$a;->c:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v4, v0, Lcom/alibaba/analytics/AnalyticsMgr$a;->d:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v5, v0, Lcom/alibaba/analytics/AnalyticsMgr$a;->e:Z

    .line 2401
    const-string/jumbo v0, ""

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2402
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$11;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/analytics/AnalyticsMgr$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 2327
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2323
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 2318
    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->s:Z

    if-eqz v0, :cond_1

    .line 2356
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$8;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$8;-><init>()V

    .line 2319
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    const-string/jumbo v1, "AnalyticsMgr"

    new-array v2, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "[restart]"

    aput-object v3, v2, v7

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2338
    :cond_4
    :goto_3
    return-void

    .line 2329
    :catch_1
    move-exception v0

    .line 2330
    :try_start_4
    const-string/jumbo v1, "AnalyticsMgr"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[RegisterTask.run]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2334
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->d(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 127
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "aUsernick"    # Ljava/lang/String;
    .param p1, "aUserid"    # Ljava/lang/String;
    .param p2, "aOpenid"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string/jumbo v0, ""

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Usernick"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "Userid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "openid"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {p0, p1, p2}, Lcom/alibaba/analytics/AnalyticsMgr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 185
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->q:Ljava/lang/String;

    .line 186
    sput-object p1, Lcom/alibaba/analytics/AnalyticsMgr;->r:Ljava/lang/String;

    .line 187
    sput-object p2, Lcom/alibaba/analytics/AnalyticsMgr;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    .line 1342
    new-instance v1, Lcom/alibaba/analytics/AnalyticsMgr$7;

    invoke-direct {v1, p0}, Lcom/alibaba/analytics/AnalyticsMgr$7;-><init>(Ljava/util/Map;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 147
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->u:Ljava/util/Map;

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->s:Z

    goto :goto_0
.end method

.method public static a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "isSecurity"    # Z
    .param p1, "isEncode"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/analytics/AnalyticsMgr;->b(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 136
    sput-boolean p0, Lcom/alibaba/analytics/AnalyticsMgr;->o:Z

    .line 137
    sput-object p2, Lcom/alibaba/analytics/AnalyticsMgr;->l:Ljava/lang/String;

    .line 138
    sput-object p3, Lcom/alibaba/analytics/AnalyticsMgr;->n:Ljava/lang/String;

    .line 139
    sput-boolean p1, Lcom/alibaba/analytics/AnalyticsMgr;->w:Z

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->k:Z

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "aUsernick"    # Ljava/lang/String;
    .param p1, "aUserid"    # Ljava/lang/String;
    .param p2, "aOpenid"    # Ljava/lang/String;

    .prologue
    .line 445
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/analytics/AnalyticsMgr$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static b(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "isSecurity"    # Z
    .param p1, "isEncode"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/analytics/AnalyticsMgr$9;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    const-string/jumbo v0, "turnOnDebug"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->o()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 175
    sput-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    .line 176
    invoke-static {v2}, Lamu;->a(Z)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .param p0, "aAppVersion"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "aAppVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->e(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 166
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->d(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    .line 196
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->t:Ljava/util/Map;

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/alibaba/analytics/AnalyticsMgr;->v:Z

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "aKey"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    if-nez v1, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 205
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    invoke-interface {v1, p0}, Lajt;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    .line 1473
    new-instance v1, Lcom/alibaba/analytics/AnalyticsMgr$4;

    invoke-direct {v1}, Lcom/alibaba/analytics/AnalyticsMgr$4;-><init>()V

    .line 250
    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->b:Lcom/alibaba/analytics/AnalyticsMgr$d;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->e(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic d()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->y:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$10;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$10;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static d(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$3;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$3;-><init>(Ljava/util/Map;)V

    .line 469
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$12;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$12;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static e(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$5;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$5;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->m()V

    return-void
.end method

.method static synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->p()I

    move-result v0

    return v0
.end method

.method static synthetic i()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 3233
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 3234
    :goto_0
    return v0

    .line 3236
    :cond_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/analytics/AnalyticsService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->y:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 3239
    if-nez v1, :cond_1

    .line 3240
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->m()V

    .line 3242
    :cond_1
    const-string/jumbo v2, "AnalyticsMgr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "bindsuccess"

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 31
    goto :goto_0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->v:Z

    return v0
.end method

.method static synthetic k()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->n()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private static l()Z
    .locals 2

    .prologue
    .line 220
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v0, "Please call init() before call other method"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_0
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->c:Z

    return v0
.end method

.method private static m()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Local:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->d:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    .line 228
    new-instance v0, Lajs;

    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    invoke-direct {v0, v1}, Lajs;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    .line 229
    const-string/jumbo v0, "Start AppMonitor Service failed,AppMonitor run in local Mode..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private static n()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$6;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$6;-><init>()V

    .line 296
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static o()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$13;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$13;-><init>()V

    .line 441
    .local v0, "task":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static p()I
    .locals 5

    .prologue
    .line 595
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->g:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "UTANALYTICS_REMOTE_SERVICE_DELAY_SECOND"

    invoke-static {v3, v4}, Laml;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "delaySecondStr":Ljava/lang/String;
    const/16 v1, 0xa

    .line 598
    .local v1, "delaySecond":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 600
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 601
    .local v0, "delayS":I
    if-ltz v0, :cond_0

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    .line 602
    move v1, v0

    .line 608
    .end local v0    # "delayS":I
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method
