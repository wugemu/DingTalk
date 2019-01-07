.class public Lcom/alibaba/bee/impl/DBChecker;
.super Ljava/lang/Object;
.source "DBChecker.java"


# static fields
.field private static final CHECKED_EXIST:I = 0x1

.field private static final CHECKED_NOT_EXIST:I = 0x0

.field private static final CHECKED_STRUCT:I = 0x2

.field private static final MASTER_SQL:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\'"

.field private static final SQL_ONE_PREFIX:Ljava/lang/String; = "SELECT * FROM "

.field private static final SQL_ONE_SUFFIX:Ljava/lang/String; = " LIMIT 0, 1"

.field private static final TAG:Ljava/lang/String; = "DBChecker"


# instance fields
.field private dbCheckMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

.field private tableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/bee/impl/DBAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/alibaba/bee/impl/DBAdapter;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/bee/impl/DBChecker;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 162
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/bee/impl/DBChecker;->dbCheckMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    iput-object p1, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    .line 35
    return-void
.end method

.method private checkColumn(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 11
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v10, 0x0

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "check table column "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {p2}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v7

    .line 91
    .local v7, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-static {p3}, Lcom/alibaba/bee/impl/DBChecker;->getFirstSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v10, v9, v10}, Lcom/alibaba/bee/impl/DBAdapter;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    .local v0, "c":Landroid/database/Cursor;
    const/4 v5, 0x1

    .line 94
    .local v5, "ret":I
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "oldColumns":[Ljava/lang/String;
    invoke-virtual {v7}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v3

    .line 97
    .local v3, "newColumns":[Lcom/alibaba/bee/impl/table/ColumnType;
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    array-length v8, v3

    array-length v9, v4

    if-le v8, v9, :cond_2

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "exec add table column "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v8, p1}, Lcom/alibaba/bee/impl/DBAdapter;->beginTransaction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 102
    array-length v2, v4

    .local v2, "i":I
    :goto_0
    array-length v8, v3

    if-ge v2, v8, :cond_1

    .line 103
    aget-object v8, v3, v2

    invoke-static {p3, v8}, Lcom/alibaba/bee/DatabaseUtils;->getAddColumnStatement(Ljava/lang/String;Lcom/alibaba/bee/impl/table/ColumnType;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "statement":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 105
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v8, p1, v6}, Lcom/alibaba/bee/impl/DBAdapter;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    .end local v6    # "statement":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    .line 110
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v8, p1}, Lcom/alibaba/bee/impl/DBAdapter;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v8, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V

    .line 117
    :goto_1
    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 118
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v8, p1, p3}, Lcom/alibaba/bee/impl/DBAdapter;->onAlter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v3    # "newColumns":[Lcom/alibaba/bee/impl/table/ColumnType;
    .end local v4    # "oldColumns":[Ljava/lang/String;
    :cond_3
    :goto_2
    return v5

    .line 111
    .restart local v3    # "newColumns":[Lcom/alibaba/bee/impl/table/ColumnType;
    .restart local v4    # "oldColumns":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "DBChecker"

    const-string/jumbo v9, "exec add table column failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    const/4 v5, 0x0

    .line 115
    :try_start_4
    iget-object v8, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v8, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "newColumns":[Lcom/alibaba/bee/impl/table/ColumnType;
    .end local v4    # "oldColumns":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v8, "DBChecker"

    const-string/jumbo v9, "exec add table column, query table failed"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    const/4 v5, 0x0

    .line 126
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "newColumns":[Lcom/alibaba/bee/impl/table/ColumnType;
    .restart local v4    # "oldColumns":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_6
    iget-object v9, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v9, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 126
    .end local v3    # "newColumns":[Lcom/alibaba/bee/impl/table/ColumnType;
    .end local v4    # "oldColumns":[Ljava/lang/String;
    :catchall_1
    move-exception v8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8
.end method

.method private createTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 7
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p2, p3}, Lcom/alibaba/bee/DatabaseUtils;->getCreateTableStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p2, p3}, Lcom/alibaba/bee/DatabaseUtils;->getCreateIndexStatements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 134
    .local v4, "stmts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 135
    .local v1, "ret":Z
    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v5, p1}, Lcom/alibaba/bee/impl/DBAdapter;->beginTransaction(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_2

    .line 138
    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v5, p1, v2}, Lcom/alibaba/bee/impl/DBAdapter;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    .local v3, "stat":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v6, p1, v3}, Lcom/alibaba/bee/impl/DBAdapter;->execRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v3    # "stat":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "DBChecker"

    const-string/jumbo v6, "exec create table failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/4 v1, 0x0

    .line 150
    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v5, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_0

    .line 153
    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v5, p1, p3}, Lcom/alibaba/bee/impl/DBAdapter;->onCreate(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return v1

    .line 142
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "create table success "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v5, 0x2

    invoke-virtual {p4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 145
    :cond_2
    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v5, p1}, Lcom/alibaba/bee/impl/DBAdapter;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v5, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v6, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V

    throw v5
.end method

.method private static getFirstSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIMIT 0, 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTableKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTableStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 10
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 165
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBChecker;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 166
    .local v2, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ltz v4, :cond_0

    move-object v3, v2

    .line 190
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v3, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_0
    return-object v3

    .line 169
    .end local v3    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v2    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBChecker;->dbCheckMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 171
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    const-string/jumbo v5, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    invoke-virtual {v4, p1, v6, v5, v6}, Lcom/alibaba/bee/impl/DBAdapter;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    .local v0, "c":Landroid/database/Cursor;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "check sqlite master "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    if-eqz v0, :cond_2

    .line 175
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBChecker;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/alibaba/bee/impl/DBChecker;->getTableKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/alibaba/bee/impl/DBChecker;->dbCheckMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBChecker;->dbCheckMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 187
    .local v1, "s":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBChecker;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .restart local v2    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v2, :cond_4

    .line 188
    move-object v2, v1

    :cond_4
    move-object v3, v2

    .line 190
    .end local v2    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v3    # "status":Ljava/util/concurrent/atomic/AtomicInteger;
    goto :goto_0
.end method


# virtual methods
.method checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check table failed, param is empty "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 64
    :cond_1
    :goto_0
    return v2

    .line 49
    :cond_2
    invoke-static {p3, p1}, Lcom/alibaba/bee/impl/DBChecker;->getTableKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "tableKey":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/alibaba/bee/impl/DBChecker;->getTableStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 51
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 54
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/bee/impl/DBChecker;->checkColumn(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_4

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/bee/impl/DBChecker;->createTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method checkDropTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 198
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "prefixSql":Ljava/lang/String;
    const-string/jumbo v3, "DRO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-static {p2}, Lcom/alibaba/bee/DatabaseUtils;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "tableName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-static {v2, p1}, Lcom/alibaba/bee/impl/DBChecker;->getTableKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "tableKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/bee/impl/DBChecker;->tableMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v3, p0, Lcom/alibaba/bee/impl/DBChecker;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/alibaba/bee/impl/DBAdapter;->onDrop(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method queryCheckTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "check table failed, param is empty "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 85
    :cond_1
    :goto_0
    return v2

    .line 72
    :cond_2
    invoke-static {p3, p1}, Lcom/alibaba/bee/impl/DBChecker;->getTableKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "tableKey":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/alibaba/bee/impl/DBChecker;->getTableStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 74
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 77
    if-eqz p2, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/bee/impl/DBChecker;->checkColumn(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v4

    if-lez v4, :cond_3

    .line 80
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 85
    goto :goto_0
.end method
