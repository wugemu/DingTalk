.class public Larl;
.super Ljava/lang/Object;
.source "FolderManager.java"


# static fields
.field private static volatile j:Larl;


# instance fields
.field public a:Latn;

.field public b:Lasl;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lask;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasl;",
            ">;"
        }
    .end annotation
.end field

.field private f:Latu;

.field private g:Laty;

.field private h:Latz;

.field private i:Laud;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Larl;->c:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larl;->d:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Larl;->e:Ljava/util/Map;

    .line 64
    new-instance v0, Latn;

    invoke-direct {v0}, Latn;-><init>()V

    iput-object v0, p0, Larl;->a:Latn;

    .line 65
    new-instance v0, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/db/DataSourceCalendarImpl;-><init>()V

    iput-object v0, p0, Larl;->f:Latu;

    .line 66
    new-instance v0, Laub;

    invoke-direct {v0}, Laub;-><init>()V

    iput-object v0, p0, Larl;->g:Laty;

    .line 67
    new-instance v0, Laua;

    invoke-direct {v0}, Laua;-><init>()V

    iput-object v0, p0, Larl;->h:Latz;

    .line 68
    new-instance v0, Laue;

    invoke-direct {v0}, Laue;-><init>()V

    iput-object v0, p0, Larl;->i:Laud;

    .line 69
    return-void
.end method

.method public static a()Larl;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Larl;->j:Larl;

    if-nez v0, :cond_1

    .line 73
    const-class v1, Larl;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Larl;->j:Larl;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Larl;

    invoke-direct {v0}, Larl;-><init>()V

    sput-object v0, Larl;->j:Larl;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Larl;->j:Larl;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lask;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "folderGroupObjects":Ljava/util/List;, "Ljava/util/List<Lask;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v1, "folderObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lasl;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask;

    .line 502
    .local v0, "folderGroupObject":Lask;
    if-eqz v0, :cond_0

    .line 19108
    iget-object v3, v0, Lask;->c:Ljava/util/Map;

    .line 505
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 508
    .end local v0    # "folderGroupObject":Lask;
    :cond_1
    return-object v1
.end method

.method static synthetic a(Larl;)V
    .locals 0
    .param p0, "x0"    # Larl;

    .prologue
    .line 47
    invoke-direct {p0}, Larl;->e()V

    return-void
.end method

.method static synthetic a(Larl;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 47
    .line 23225
    invoke-direct {p0}, Larl;->e()V

    .line 23226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Larl;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22449
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22450
    const/4 v0, 0x0

    .line 22434
    :goto_0
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 22435
    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v2, "[FolderManager]removeLocalFoldersIfNecessary foldersToRemove.size="

    aput-object v2, v1, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 22436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 22437
    if-eqz v0, :cond_0

    .line 31042
    iget-object v0, v0, Lasl;->a:Ljava/lang/String;

    .line 31610
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Larl$8;

    invoke-direct {v3, p0, v0}, Larl$8;-><init>(Larl;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Latf;->b(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 22453
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22454
    invoke-static {p1}, Larl;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 22455
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22456
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "[FolderManager]getFoldersToRemove remove all local folders."

    aput-object v3, v1, v7

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 22457
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move-object v0, v2

    .line 22495
    goto :goto_0

    .line 22459
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 22460
    if-eqz v0, :cond_4

    .line 24042
    iget-object v1, v0, Lasl;->a:Ljava/lang/String;

    .line 22464
    invoke-virtual {p0, v1}, Larl;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25042
    iget-object v1, v0, Lasl;->a:Ljava/lang/String;

    .line 22468
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasl;

    .line 22469
    if-nez v1, :cond_5

    .line 22471
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22472
    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[FolderManager]getFoldersToRemove remove localFolderObject="

    aput-object v5, v1, v7

    invoke-virtual {v0}, Lasl;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 25066
    :cond_5
    iget-object v5, v1, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 22474
    sget-object v6, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v5, v6, :cond_6

    .line 22476
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[FolderManager]getFoldersToRemove privilege is unknown. remoteFolderObject="

    aput-object v5, v0, v7

    .line 22477
    invoke-virtual {v1}, Lasl;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 22476
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 26066
    :cond_6
    iget-object v5, v1, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 27066
    iget-object v6, v0, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 22478
    if-eq v5, v6, :cond_7

    .line 22480
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22481
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[FolderManager]getFoldersToRemove privilege changed remoteFolderObject="

    aput-object v6, v5, v7

    .line 22482
    invoke-virtual {v1}, Lasl;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    const-string/jumbo v1, ", localFolderObject="

    aput-object v1, v5, v9

    const/4 v1, 0x3

    invoke-virtual {v0}, Lasl;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 22481
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 28066
    :cond_7
    iget-object v5, v1, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 29066
    iget-object v6, v0, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 22483
    if-ne v5, v6, :cond_4

    .line 30066
    iget-object v5, v1, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 22484
    sget-object v6, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->NO_PERMISSION:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v5, v6, :cond_4

    .line 30090
    iget-boolean v5, v0, Lasl;->g:Z

    .line 22485
    if-eqz v5, :cond_4

    .line 22487
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22488
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[FolderManager]getFoldersToRemove privilege is no permission remoteFolderObject="

    aput-object v5, v0, v7

    .line 22489
    invoke-virtual {v1}, Lasl;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 22488
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 22443
    :cond_8
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "[FolderManager]removeLocalFoldersIfNecessary no need remove local folder"

    aput-object v1, v0, v7

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 22441
    :cond_9
    return-void
.end method

.method static synthetic a(Larl;Z)Z
    .locals 1
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Larl;->c:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 84
    const-string/jumbo v0, "[FolderManager]getMyScheduleFolderId failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "openId < 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Larl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 47
    iget-object v0, p0, Larl;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Larl;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    .line 32374
    if-nez p1, :cond_0

    .line 32375
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[FolderManager]save, folderGroupList is empty"

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 32376
    :goto_0
    return-void

    .line 32379
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 32380
    iget-object v1, p0, Larl;->g:Laty;

    invoke-interface {v1, p1}, Laty;->a(Ljava/util/List;)I

    move-result v1

    .line 32381
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[FolderManager]save totalSize:"

    aput-object v3, v2, v4

    .line 32382
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string/jumbo v3, ", saveSize:"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 32384
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 32381
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "folderGroupObjects":Ljava/util/List;, "Ljava/util/List<Lask;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 585
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v2, "[FolderManager]traceShareFolders size:"

    aput-object v2, v3, v6

    if-nez p0, :cond_1

    const-string/jumbo v2, "0"

    .line 586
    :goto_0
    aput-object v2, v3, v7

    .line 585
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 588
    if-nez p0, :cond_2

    .line 604
    :cond_0
    return-void

    .line 586
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 592
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask;

    .line 593
    .local v0, "folderGroupObject":Lask;
    if-eqz v0, :cond_3

    .line 20059
    iget-object v3, v0, Lask;->b:Ljava/util/List;

    .line 593
    if-eqz v3, :cond_3

    .line 21059
    iget-object v3, v0, Lask;->b:Ljava/util/List;

    .line 593
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 597
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "[FolderManager]traceShareFolders, group:"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lask;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 22059
    iget-object v3, v0, Lask;->b:Ljava/util/List;

    .line 598
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasl;

    .line 599
    .local v1, "folderObject":Lasl;
    if-eqz v1, :cond_4

    .line 600
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[FolderManager]traceShareFolders, folder:"

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lasl;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Larl;)Laud;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 47
    iget-object v0, p0, Larl;->i:Laud;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 91
    const-string/jumbo v0, "[FolderManager]getMyTaskFolderId failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "openId < 0"

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    const-string/jumbo v0, "%s_task"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Larl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-static {p1}, Larl;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Larl;)Latz;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 47
    iget-object v0, p0, Larl;->h:Latz;

    return-object v0
.end method

.method static synthetic e(Larl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 47
    iget-object v0, p0, Larl;->d:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 272
    iget-boolean v0, p0, Larl;->c:Z

    if-eqz v0, :cond_a

    .line 1283
    invoke-virtual {p0}, Larl;->d()Ljava/util/List;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Larl;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1285
    if-eqz v0, :cond_0

    .line 1286
    iget-object v1, p0, Larl;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1288
    :cond_0
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v0, "[FolderManager]load from cache or db, size:"

    aput-object v0, v1, v6

    iget-object v0, p0, Larl;->d:Ljava/util/List;

    if-nez v0, :cond_4

    const-string/jumbo v0, "0"

    .line 1289
    :goto_0
    aput-object v0, v1, v5

    .line 1288
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Larl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1300
    new-instance v1, Lask;

    invoke-direct {v1}, Lask;-><init>()V

    .line 1301
    sget v2, Laow$f;->dt_calendar_from_dingding:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2055
    iput-object v0, v1, Lask;->a:Ljava/lang/String;

    .line 1302
    const-wide/16 v2, 0x1

    .line 2088
    iput-wide v2, v1, Lask;->d:J

    .line 2096
    iput-boolean v5, v1, Lask;->e:Z

    .line 2104
    iput-boolean v6, v1, Lask;->f:Z

    .line 1306
    new-instance v0, Lasl;

    invoke-direct {v0}, Lasl;-><init>()V

    .line 1307
    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v2

    .line 3046
    iput-object v2, v0, Lasl;->a:Ljava/lang/String;

    .line 3086
    iput-boolean v5, v0, Lasl;->f:Z

    .line 1309
    const-string/jumbo v2, "#15BC83"

    .line 4078
    iput-object v2, v0, Lasl;->e:Ljava/lang/String;

    .line 1310
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laow$f;->dt_ding_calendar_setting_my_schedule:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5054
    iput-object v2, v0, Lasl;->b:Ljava/lang/String;

    .line 5110
    iput-boolean v5, v0, Lasl;->i:Z

    .line 1313
    new-instance v2, Lasl;

    invoke-direct {v2}, Lasl;-><init>()V

    .line 6086
    iput-boolean v6, v2, Lasl;->f:Z

    .line 1315
    const-string/jumbo v3, "#FF943E"

    .line 7078
    iput-object v3, v2, Lasl;->e:Ljava/lang/String;

    .line 1316
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laow$f;->dt_ding_calendar_setting_my_task:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8054
    iput-object v3, v2, Lasl;->b:Ljava/lang/String;

    .line 8110
    iput-boolean v5, v2, Lasl;->i:Z

    .line 1318
    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v3

    .line 9046
    iput-object v3, v2, Lasl;->a:Ljava/lang/String;

    .line 1320
    invoke-virtual {v1, v0}, Lask;->a(Lasl;)V

    .line 1321
    invoke-virtual {v1, v2}, Lask;->a(Lasl;)V

    .line 1322
    iget-object v0, p0, Larl;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9327
    :cond_1
    iget-object v0, p0, Larl;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9328
    iget-object v0, p0, Larl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask;

    .line 9329
    if-eqz v0, :cond_2

    .line 10059
    iget-object v2, v0, Lask;->b:Ljava/util/List;

    .line 9329
    if-eqz v2, :cond_2

    .line 11059
    iget-object v2, v0, Lask;->b:Ljava/util/List;

    .line 9329
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12059
    iget-object v0, v0, Lask;->b:Ljava/util/List;

    .line 9333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 9334
    if-eqz v0, :cond_3

    .line 9335
    iget-object v3, p0, Larl;->e:Ljava/util/Map;

    .line 13042
    iget-object v4, v0, Lasl;->a:Ljava/lang/String;

    .line 9335
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1288
    :cond_4
    iget-object v0, p0, Larl;->d:Ljava/util/List;

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 13342
    :cond_5
    iget-object v0, p0, Larl;->i:Laud;

    invoke-interface {v0}, Laud;->a()Ljava/util/List;

    move-result-object v2

    .line 13345
    iget-object v0, p0, Larl;->e:Ljava/util/Map;

    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 13346
    iget-object v1, p0, Larl;->e:Ljava/util/Map;

    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasl;

    .line 13347
    if-eqz v0, :cond_6

    .line 14110
    iput-boolean v5, v0, Lasl;->i:Z

    .line 13349
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "[FolderManager]fillSelectStatus folderId="

    aput-object v4, v3, v6

    .line 15042
    iget-object v0, v0, Lasl;->a:Ljava/lang/String;

    .line 13349
    aput-object v0, v3, v5

    const-string/jumbo v0, ", isSelected="

    aput-object v0, v3, v7

    const-string/jumbo v0, "true"

    .line 13350
    aput-object v0, v3, v8

    .line 13349
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 13352
    :cond_6
    if-eqz v1, :cond_7

    .line 15110
    iput-boolean v5, v1, Lasl;->i:Z

    .line 13354
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v3, "[FolderManager]fillSelectStatus folderId="

    aput-object v3, v0, v6

    .line 16042
    iget-object v1, v1, Lasl;->a:Ljava/lang/String;

    .line 13354
    aput-object v1, v0, v5

    const-string/jumbo v1, ", isSelected="

    aput-object v1, v0, v7

    const-string/jumbo v1, "true"

    .line 13355
    aput-object v1, v0, v8

    .line 13354
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 13359
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    .line 13360
    if-eqz v0, :cond_8

    .line 13363
    iget-object v1, p0, Larl;->e:Ljava/util/Map;

    .line 17014
    iget-object v3, v0, Lasm;->a:Ljava/lang/String;

    .line 13363
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lasl;

    .line 13364
    if-eqz v1, :cond_8

    .line 17022
    iget-boolean v3, v0, Lasm;->b:Z

    .line 17110
    iput-boolean v3, v1, Lasl;->i:Z

    .line 13368
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v3, "[FolderManager]fillSelectStatus "

    aput-object v3, v1, v6

    invoke-virtual {v0}, Lasm;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_9
    iget-object v0, p0, Larl;->d:Ljava/util/List;

    invoke-static {v0}, Larl;->b(Ljava/util/List;)V

    .line 278
    iput-boolean v6, p0, Larl;->c:Z

    .line 280
    :cond_a
    return-void
.end method

.method static synthetic f(Larl;)Latu;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 47
    iget-object v0, p0, Larl;->f:Latu;

    return-object v0
.end method


# virtual methods
.method public final a(JLapv;)V
    .locals 3
    .param p1, "ownerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lapv",
            "<",
            "Ljava/util/List",
            "<",
            "Lasl;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, "listCallback":Lapv;, "Lapv<Ljava/util/List<Lasl;>;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lapv;->a(Ljava/lang/Object;)V

    .line 222
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Larl$14;

    invoke-direct {v1, p0, p1, p2, p3}, Larl$14;-><init>(Larl;JLapv;)V

    invoke-virtual {v0, v1}, Latf;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lapv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasl;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 182
    .local p1, "mapCallback":Lapv;, "Lapv<Ljava/util/Map<Ljava/lang/String;Lasl;>;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Larl$13;

    invoke-direct {v1, p0, p1}, Larl$13;-><init>(Larl;Lapv;)V

    invoke-virtual {v0, v1}, Latf;->b(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lask;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 398
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lask;>;>;"
    iget-object v0, p0, Larl;->a:Latn;

    new-instance v1, Larl$3;

    invoke-direct {v1, p0, p1}, Larl$3;-><init>(Larl;Lcom/alibaba/wukong/Callback;)V

    .line 17327
    new-instance v2, Latn$7;

    invoke-direct {v2, v0, v1}, Latn$7;-><init>(Latn;Lcma;)V

    .line 17355
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarDataSourceRemote] listMyFolders."

    aput-object v4, v1, v3

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 17356
    invoke-static {}, Latp;->a()Latp;

    move-result-object v1

    new-instance v3, Latn$8;

    invoke-direct {v3, v0, v2}, Latn$8;-><init>(Latn;Lcmi;)V

    .line 18110
    invoke-static {}, Latp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Latp;->a(Ljava/lang/String;)V

    .line 18111
    iget-object v0, v1, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-interface {v0, v3}, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;->listMyFolders(Liyv;)V

    .line 430
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Larl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Larl;->g:Laty;

    invoke-interface {v0}, Laty;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
