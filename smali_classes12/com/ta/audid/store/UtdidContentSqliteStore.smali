.class public Lcom/ta/audid/store/UtdidContentSqliteStore;
.super Ljava/lang/Object;
.source "UtdidContentSqliteStore.java"


# static fields
.field public static final MAX_LOG_COUNT:I = 0x4

.field private static mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private clearOldLogByCount(I)I
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v1, v2}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/ta/audid/store/UtdidContent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " _id in ( select _id from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ORDER BY _id ASC LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ta/audid/db/DBMgr;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private count()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/store/UtdidContentSqliteStore;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/ta/audid/store/UtdidContentSqliteStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/ta/audid/store/UtdidContentSqliteStore;

    invoke-direct {v0}, Lcom/ta/audid/store/UtdidContentSqliteStore;-><init>()V

    sput-object v0, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;

    .line 23
    :cond_0
    sget-object v0, Lcom/ta/audid/store/UtdidContentSqliteStore;->mInstance:Lcom/ta/audid/store/UtdidContentSqliteStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->clear(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ta/audid/store/UtdidContent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/UtdidContent;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/audid/db/DBMgr;->delete(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/util/List;
    .locals 4
    .param p1, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ta/audid/store/UtdidContent;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/UtdidContent;

    const/4 v2, 0x0

    const-string/jumbo v3, "priority DESC , time DESC "

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/ta/audid/db/DBMgr;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertStringList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 28
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 29
    :cond_0
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "logs is empty"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    monitor-exit p0

    return-void

    .line 32
    :cond_1
    :try_start_1
    const-string/jumbo v2, ""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "logs"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/ta/audid/store/UtdidContentSqliteStore;->count()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 36
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/ta/audid/store/UtdidContentSqliteStore;->clearOldLogByCount(I)I

    .line 39
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "utdidContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/UtdidContent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "log":Ljava/lang/String;
    new-instance v3, Lcom/ta/audid/store/UtdidContent;

    invoke-direct {v3, v0}, Lcom/ta/audid/store/UtdidContent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 27
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "utdidContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/UtdidContent;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 43
    .restart local v1    # "utdidContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/UtdidContent;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ta/audid/db/DBMgr;->insert(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
