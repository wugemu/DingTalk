.class public Lcom/alibaba/bee/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/bee/DBManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static mDebuggable:Z


# instance fields
.field private mAdapter:Lcom/alibaba/bee/impl/DBAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/bee/DBManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/bee/DBManager$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/bee/DBManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized enableDebuggable(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 94
    const-class v0, Lcom/alibaba/bee/DBManager;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lcom/alibaba/bee/DBManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alibaba/bee/DBManager$InstanceHolder;->sInstance:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method public static declared-synchronized isDebuggable()Z
    .locals 2

    .prologue
    .line 101
    const-class v0, Lcom/alibaba/bee/DBManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public beginTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 296
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 297
    invoke-static {p1, v2, v2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/alibaba/bee/impl/DebugTools;->throwDoNotEndTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1}, Lcom/alibaba/bee/impl/DBAdapter;->beginTransaction(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/bee/SQLiteStatement;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    iget-object v2, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/alibaba/bee/impl/DBAdapter;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 268
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    sget-boolean v2, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v2, :cond_0

    .line 269
    const/4 v2, 0x0

    invoke-static {p1, v2, p3}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 271
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/alibaba/bee/impl/DebugTools;->throwSQLiteStatementNotClosed(Lcom/alibaba/bee/SQLiteStatement;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public createTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;
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
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 333
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 337
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/bee/impl/DBAdapter;->createTableIfNotExist(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 221
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 225
    .end local v6    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/impl/DBAdapter;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteDatabase(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 356
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTrigger(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/bee/impl/DBAdapter;->enableTrigger(Ljava/lang/String;Z)V

    .line 415
    return-void
.end method

.method public endTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 322
    invoke-static {p1, v2, v2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 324
    invoke-static {p1}, Lcom/alibaba/bee/impl/DebugTools;->endTransaction(Ljava/lang/String;)V

    .line 326
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1}, Lcom/alibaba/bee/impl/DBAdapter;->endTransaction(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "transactionListener"    # Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 284
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 285
    invoke-static {p1, v2, v2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 288
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/bee/impl/DBAdapter;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    move-result v1

    return v1
.end method

.method public execRaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 242
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 246
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/bee/impl/DBAdapter;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public execRaw(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 253
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 254
    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 257
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/bee/impl/DBAdapter;->execRaw(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public executeWriteTask(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "databaseTask"    # Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/bee/impl/DBAdapter;->executeWriteTask(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I

    move-result v0

    return v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSqliteHandler(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getSqliteHandler(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alibaba/bee/impl/DBAdapter;

    invoke-direct {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 156
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 157
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 160
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/alibaba/bee/impl/DBAdapter;->insert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 7
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "conflictAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I)J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 171
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "msg":Ljava/lang/String;
    invoke-static {v6}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 175
    .end local v6    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/impl/DBAdapter;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCryptEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0}, Lcom/alibaba/bee/impl/DBAdapter;->isSafe()Z

    move-result v0

    return v0
.end method

.method public query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 110
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/impl/DBAdapter;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    .local v9, "cursor":Landroid/database/Cursor;
    sget-boolean v0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "msg":Ljava/lang/String;
    invoke-static {v10}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v10, v0}, Lcom/alibaba/bee/impl/DebugTools;->throwCursorNotClosed(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v10    # "msg":Ljava/lang/String;
    :cond_0
    return-object v9
.end method

.method public query(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "distinct"    # Z
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columns"    # [Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "selectionArgs"    # [Ljava/lang/String;
    .param p8, "groupBy"    # Ljava/lang/String;
    .param p9, "having"    # Ljava/lang/String;
    .param p10, "orderBy"    # Ljava/lang/String;
    .param p11, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 126
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/alibaba/bee/impl/DBAdapter;->query(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 128
    .local v14, "cursor":Landroid/database/Cursor;
    sget-boolean v2, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 130
    .local v15, "msg":Ljava/lang/String;
    invoke-static {v15}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 131
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v14, v15, v2}, Lcom/alibaba/bee/impl/DebugTools;->throwCursorNotClosed(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v15    # "msg":Ljava/lang/String;
    :cond_0
    return-object v14
.end method

.method public queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    iget-object v2, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/alibaba/bee/impl/DBAdapter;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, "cursor":Landroid/database/Cursor;
    sget-boolean v2, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v2, :cond_0

    .line 143
    const/4 v2, 0x0

    invoke-static {p1, v2, p3}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alibaba/bee/impl/DebugTools;->throwCursorNotClosed(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public registerDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/bee/DataManipulationListener;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/bee/impl/DBAdapter;->addDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V

    .line 398
    return-void
.end method

.method public registerStatusListener(Lcom/alibaba/bee/DBStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBStatusListener;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->addStatusListener(Lcom/alibaba/bee/DBStatusListener;)V

    .line 381
    return-void
.end method

.method public registerTableListener(Lcom/alibaba/bee/DBTableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBTableListener;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->addTableListener(Lcom/alibaba/bee/DBTableListener;)V

    .line 365
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 188
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/alibaba/bee/impl/DBAdapter;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public setCryptEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/bee/DBManager;->setCryptEnabled(ZLcom/alibaba/bee/CipherGenerator;)V

    .line 72
    return-void
.end method

.method public setCryptEnabled(ZLcom/alibaba/bee/CipherGenerator;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "generator"    # Lcom/alibaba/bee/CipherGenerator;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/bee/impl/DBAdapter;->setCryptEnabled(ZLcom/alibaba/bee/CipherGenerator;)V

    .line 80
    return-void
.end method

.method public setTransactionSuccessful(Ljava/lang/String;)V
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 309
    sget-boolean v1, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v1, :cond_0

    .line 310
    invoke-static {p1, v2, v2}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 313
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v1, p1}, Lcom/alibaba/bee/impl/DBAdapter;->setTransactionSuccessful(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public unregisterDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/bee/DataManipulationListener;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/bee/impl/DBAdapter;->removeDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V

    .line 407
    return-void
.end method

.method public unregisterStatusListener(Lcom/alibaba/bee/DBStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBStatusListener;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->removeStatusListener(Lcom/alibaba/bee/DBStatusListener;)V

    .line 389
    return-void
.end method

.method public unregisterTableListener(Lcom/alibaba/bee/DBTableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBTableListener;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->removeTableListener(Lcom/alibaba/bee/DBTableListener;)V

    .line 373
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "whereClause"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 196
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "msg":Ljava/lang/String;
    invoke-static {v7}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 200
    .end local v7    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/impl/DBAdapter;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 9
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "whereClause"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .param p7, "conflictAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 209
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    sget-boolean v0, Lcom/alibaba/bee/DBManager;->mDebuggable:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DebugTools;->appendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "msg":Ljava/lang/String;
    invoke-static {v8}, Lcom/alibaba/bee/impl/DebugTools;->throwMainThreadOperation(Ljava/lang/String;)V

    .line 213
    .end local v8    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/bee/DBManager;->mAdapter:Lcom/alibaba/bee/impl/DBAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/bee/impl/DBAdapter;->updateWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
