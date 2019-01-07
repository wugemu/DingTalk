.class public Lcom/ta/audid/store/RSContentSqliteStore;
.super Ljava/lang/Object;
.source "RSContentSqliteStore.java"


# static fields
.field private static mInstance:Lcom/ta/audid/store/RSContentSqliteStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method private clearOldLogByCount(I)I
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/ta/audid/store/RSContent;

    invoke-virtual {v1, v2}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v1

    const-class v2, Lcom/ta/audid/store/RSContent;

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
    .line 38
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->count(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/ta/audid/store/RSContentSqliteStore;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcom/ta/audid/store/RSContentSqliteStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/ta/audid/store/RSContentSqliteStore;

    invoke-direct {v0}, Lcom/ta/audid/store/RSContentSqliteStore;-><init>()V

    sput-object v0, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;

    .line 18
    :cond_0
    sget-object v0, Lcom/ta/audid/store/RSContentSqliteStore;->mInstance:Lcom/ta/audid/store/RSContentSqliteStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
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
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    invoke-virtual {v0, v1}, Lcom/ta/audid/db/DBMgr;->clear(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized find(Ljava/lang/String;)I
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ta/audid/Variables;->getInstance()Lcom/ta/audid/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/audid/Variables;->getDbMgr()Lcom/ta/audid/db/DBMgr;

    move-result-object v0

    const-class v1, Lcom/ta/audid/store/RSContent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ta/audid/db/DBMgr;->count(Ljava/lang/Class;Ljava/lang/String;)I
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

.method public declared-synchronized insertStringList(Ljava/util/List;)V
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 26
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/ta/audid/store/RSContentSqliteStore;->count()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_2

    .line 27
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/ta/audid/store/RSContentSqliteStore;->clearOldLogByCount(I)I

    .line 30
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "rsContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/RSContent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "log":Ljava/lang/String;
    new-instance v3, Lcom/ta/audid/store/RSContent;

    invoke-direct {v3, v0}, Lcom/ta/audid/store/RSContent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 22
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "rsContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/RSContent;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 34
    .restart local v1    # "rsContents":Ljava/util/List;, "Ljava/util/List<Lcom/ta/audid/store/RSContent;>;"
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
