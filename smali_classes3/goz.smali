.class final Lgoz;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"


# instance fields
.field final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgpf;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgpf;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgpf;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lgpf$b;

.field final e:I

.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(ILgpf$b;ILjava/lang/String;)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "uuidGen"    # Lgpf$b;
    .param p3, "taskTypeFlag"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgoz;->a:Ljava/util/LinkedList;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgoz;->b:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgoz;->c:Ljava/util/Map;

    .line 67
    iput p1, p0, Lgoz;->f:I

    .line 68
    iput-object p2, p0, Lgoz;->d:Lgpf$b;

    .line 69
    iput p3, p0, Lgoz;->e:I

    .line 70
    iput-object p4, p0, Lgoz;->g:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic a(Lgoz;Ljava/lang/String;)Lgpf;
    .locals 1
    .param p0, "x0"    # Lgoz;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    .line 3160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3161
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3163
    :cond_0
    iget-object v0, p0, Lgoz;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpf;

    goto :goto_0
.end method

.method static synthetic a(Lgoz;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V
    .locals 2
    .param p0, "x0"    # Lgoz;
    .param p1, "x1"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .prologue
    .line 50
    .line 1444
    if-eqz p1, :cond_0

    .line 1447
    const-string/jumbo v0, ", controller: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgoz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1448
    const-string/jumbo v0, ", flag: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v1, p0, Lgoz;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1449
    const-string/jumbo v0, ", maxRunCnt: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget v1, p0, Lgoz;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1450
    const-string/jumbo v0, ", runCnt: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lgoz;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1451
    const-string/jumbo v0, ", waitCnt: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lgoz;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1452
    const-string/jumbo v0, ", taskCnt: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 2149
    iget-object v1, p0, Lgoz;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 1452
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic a(Lgoz;Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "x0"    # Lgoz;
    .param p1, "x1"    # Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 50
    .line 2434
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 2435
    .end local p2    # "x2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 2437
    .restart local p2    # "x2":Ljava/lang/Object;
    :cond_1
    check-cast p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2438
    .end local p2    # "x2":Ljava/lang/Object;
    const-string/jumbo v0, ", id: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2439
    const-string/jumbo v0, ", spaceId: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2440
    const-string/jumbo v0, ", fileId: "

    invoke-virtual {p1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lgoz;Lgpd;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lgoz;
    .param p1, "x1"    # Lgpd;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 50
    .line 2294
    if-eqz p1, :cond_0

    .line 2297
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v0, Lgoz$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lgoz$2;-><init>(Lgoz;Lgpd;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_0
    return-void
.end method

.method static c()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 430
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CSpaceTaskControllerThread"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0, v3, v1}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lgoz;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lgoz;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()Lgpf;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lgoz;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lgoz;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpf;

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 123
    iget-object v1, p0, Lgoz;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lgoz;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgoz;->f()I

    move-result v1

    iget v2, p0, Lgoz;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_1

    .line 326
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    .line 318
    .local v0, "task":Lgpf;
    :goto_1
    if-nez v0, :cond_2

    :try_start_1
    invoke-direct {p0}, Lgoz;->d()I

    move-result v1

    if-lez v1, :cond_2

    .line 319
    invoke-direct {p0}, Lgoz;->e()Lgpf;

    move-result-object v0

    goto :goto_1

    .line 322
    :cond_2
    if-eqz v0, :cond_0

    .line 1129
    if-eqz v0, :cond_3

    .line 1132
    iget-object v2, p0, Lgoz;->b:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    :try_start_2
    iget-object v1, p0, Lgoz;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1134
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lgpf;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 313
    .end local v0    # "task":Lgpf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1134
    .restart local v0    # "task":Lgpf;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method final a(Landroid/content/Context;Lgpa;Lgpd;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lgpa;
    .param p3, "progressObserver"    # Lgpd;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 182
    invoke-static {}, Lgoz;->c()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgoz$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lgoz$1;-><init>(Lgoz;Lgpa;Lgpd;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 356
    invoke-static {}, Lgoz;->c()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgoz$4;

    invoke-direct {v1, p0, p1}, Lgoz$4;-><init>(Lgoz;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 405
    invoke-static {}, Lgoz;->c()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgoz$5;

    invoke-direct {v1, p0}, Lgoz$5;-><init>(Lgoz;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method
