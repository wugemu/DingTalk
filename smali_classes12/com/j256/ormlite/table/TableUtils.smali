.class public Lcom/j256/ormlite/table/TableUtils;
.super Ljava/lang/Object;
.source "TableUtils.java"


# static fields
.field private static a:Lcom/j256/ormlite/logger/Logger;

.field private static final b:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/j256/ormlite/table/TableUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/table/TableUtils;->b:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I
    .locals 6
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    sget-object v1, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "dropping table \'{}\'"

    .line 3121
    iget-object v4, p2, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 271
    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2, v2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;)V

    .line 3367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3372
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3373
    const-string/jumbo v5, "DROP TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4121
    iget-object v5, p2, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 3374
    invoke-interface {p0, v4, v5}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3375
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3376
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3377
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3378
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 277
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    const-string/jumbo v1, "drop"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 280
    return v1

    :catchall_0
    move-exception v1

    throw v1
.end method

.method private static a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I
    .locals 9
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v6

    .line 393
    .local v6, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    sget-object v1, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "creating table \'{}\'"

    .line 8121
    iget-object v4, p1, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 393
    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v7, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6, p1, v2, v7, p2}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;Z)V

    .line 397
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 399
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    const-string/jumbo v1, "create"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6}, Lcom/j256/ormlite/db/DatabaseType;->c()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I

    move-result v8

    .line 401
    .local v8, "stmtC":I
    invoke-static {v0, v7}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v8, v1

    .line 404
    return v8

    .end local v8    # "stmtC":I
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 6
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 54
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 1382
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    instance-of v1, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_0

    .line 1383
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->h()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .end local v0    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->g()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v1

    :goto_0
    return v1

    .line 1385
    .restart local v0    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    :cond_0
    new-instance v1, Lcom/j256/ormlite/table/TableInfo;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->h()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->d()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    .line 1386
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->h()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    invoke-static {v2, v1, v5}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v1

    goto :goto_0
.end method

.method public static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    .locals 7
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "ignoreErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 165
    .local v0, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    const/4 v1, 0x1

    .line 2176
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->h()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    .line 2177
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->d()Ljava/lang/Class;

    move-result-object v3

    .line 2178
    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v4

    .line 2179
    instance-of v5, v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v5, :cond_0

    .line 2180
    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .end local v0    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-virtual {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->g()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v3

    invoke-static {v4, v2, v3, v1}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v1

    :goto_0
    return v1

    .line 2182
    .restart local v0    # "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    :cond_0
    new-instance v5, Lcom/j256/ormlite/table/TableInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v3}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    .line 2183
    invoke-static {v4, v2, v5, v1}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/TableInfo;Z)I

    move-result v1

    goto :goto_0
.end method

.method private static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I
    .locals 7
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    .line 248
    .local v2, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "DELETE FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v2, v3, p1}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "statement":Ljava/lang/String;
    sget-object v5, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "clearing table \'{}\' with \'{}"

    invoke-virtual {v5, v6, p1, v4}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 260
    .local v1, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const/4 v6, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 264
    const-string/jumbo v6, "compiled statement"

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 265
    return v5

    .line 264
    :catchall_0
    move-exception v5

    const-string/jumbo v6, "compiled statement"

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 265
    throw v5
.end method

.method private static a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I
    .locals 9
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p1, "label"    # Ljava/lang/String;
    .param p3, "ignoreErrors"    # Z
    .param p4, "returnsNegative"    # Z
    .param p5, "expectingZero"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;ZZZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "statements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 411
    .local v5, "stmtC":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 412
    .local v4, "statement":Ljava/lang/String;
    const/4 v3, 0x0

    .line 413
    .local v3, "rowC":I
    const/4 v0, 0x0

    .line 415
    .local v0, "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v6, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const/4 v7, 0x0

    invoke-interface {p0, v4, v6, v7}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->b()I

    move-result v3

    .line 418
    sget-object v6, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v7, "executed {} table statement changed {} rows: {}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, p1, v8, v4}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    const-string/jumbo v6, "compiled statement"

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 429
    :goto_1
    if-gez v3, :cond_1

    .line 430
    if-nez p4, :cond_2

    .line 431
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SQL statement "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " updated "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " rows, we were expecting >= 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/sql/SQLException;
    if-eqz p3, :cond_0

    .line 421
    :try_start_1
    sget-object v6, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v7, "ignoring {} error \'{}\' for statement: {}"

    invoke-virtual {v6, v7, p1, v1, v4}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    const-string/jumbo v6, "compiled statement"

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SQL statement failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v6

    const-string/jumbo v7, "compiled statement"

    invoke-static {v0, v7}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v6

    .line 434
    :cond_1
    if-lez v3, :cond_2

    if-eqz p5, :cond_2

    .line 435
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SQL statement updated "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " rows, we were expecting == 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 437
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 438
    goto/16 :goto_0

    .line 439
    .end local v0    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    .end local v3    # "rowC":I
    .end local v4    # "statement":Ljava/lang/String;
    :cond_3
    return v5
.end method

.method private static a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/List;)I
    .locals 11
    .param p0, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 446
    .local v7, "stmtC":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 447
    .local v4, "query":Ljava/lang/String;
    const/4 v0, 0x0

    .line 449
    .local v0, "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v8, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    const/4 v9, 0x0

    invoke-interface {p0, v4, v8, v9}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 452
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Lcom/j256/ormlite/support/CompiledStatement;->a(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v5

    .line 453
    .local v5, "results":Lcom/j256/ormlite/support/DatabaseResults;
    const/4 v6, 0x0

    .line 455
    .local v6, "rowC":I
    invoke-interface {v5}, Lcom/j256/ormlite/support/DatabaseResults;->b()Z

    move-result v3

    .local v3, "isThereMore":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 456
    add-int/lit8 v6, v6, 0x1

    .line 455
    invoke-interface {v5}, Lcom/j256/ormlite/support/DatabaseResults;->c()Z

    move-result v3

    goto :goto_1

    .line 458
    :cond_0
    sget-object v8, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v9, "executing create table after-query got {} results: {}"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v4}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    const-string/jumbo v8, "compiled statement"

    invoke-static {v0, v8}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 466
    add-int/lit8 v7, v7, 0x1

    .line 467
    goto :goto_0

    .line 459
    .end local v3    # "isThereMore":Z
    .end local v5    # "results":Lcom/j256/ormlite/support/DatabaseResults;
    .end local v6    # "rowC":I
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "executing create table after-query failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v8

    const-string/jumbo v9, "compiled statement"

    invoke-static {v0, v9}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v8

    .line 468
    .end local v0    # "compiledStmt":Lcom/j256/ormlite/support/CompiledStatement;
    .end local v4    # "query":Ljava/lang/String;
    :cond_1
    return v7
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;)V
    .locals 11
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4128
    .local v4, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 288
    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v0, v2

    .line 289
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->f()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "indexName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 291
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->g()Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "uniqueIndexName":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 295
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v3    # "indexName":Ljava/lang/String;
    .end local v7    # "uniqueIndexName":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x30

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .restart local v3    # "indexName":Ljava/lang/String;
    sget-object v8, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v9, "dropping index \'{}\' for table \'{}"

    .line 5121
    iget-object v10, p1, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 301
    invoke-virtual {v8, v9, v3, v10}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    const-string/jumbo v8, "DROP INDEX "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-interface {p0, v6, v3}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 307
    .end local v3    # "indexName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;Ljava/util/List;Z)V
    .locals 18
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p4, "ifNotExists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "CREATE TABLE "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    if-eqz p4, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/j256/ormlite/db/DatabaseType;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    const-string/jumbo v4, "IF NOT EXISTS "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9121
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 489
    move-object/from16 v0, p0

    invoke-interface {v0, v6, v4}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 490
    const-string/jumbo v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v8, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v9, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v10, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 9128
    .local v15, "first":Z
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 496
    .local v13, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v7, v13, v16

    .line 498
    .local v7, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v7}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v4

    if-nez v4, :cond_1

    .line 500
    if-eqz v15, :cond_2

    .line 501
    const/4 v15, 0x0

    .line 9881
    :goto_1
    iget-object v4, v7, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 10460
    iget-object v14, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->C:Ljava/lang/String;

    .line 506
    .local v14, "columnDefinition":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 11121
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v11, p3

    .line 508
    invoke-interface/range {v4 .. v11}, Lcom/j256/ormlite/db/DatabaseType;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 496
    .end local v14    # "columnDefinition":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 503
    :cond_2
    const-string/jumbo v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11455
    .restart local v14    # "columnDefinition":Ljava/lang/String;
    :cond_3
    iget-object v4, v7, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 512
    move-object/from16 v0, p0

    invoke-interface {v0, v6, v4}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 513
    const/16 v4, 0x20

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12128
    .end local v7    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v14    # "columnDefinition":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 517
    move-object/from16 v0, p0

    invoke-interface {v0, v4, v8}, Lcom/j256/ormlite/db/DatabaseType;->a([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 13128
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 520
    move-object/from16 v0, p0

    invoke-interface {v0, v4, v8}, Lcom/j256/ormlite/db/DatabaseType;->b([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 522
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 524
    .local v12, "arg":Ljava/lang/String;
    const-string/jumbo v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 526
    .end local v12    # "arg":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, ") "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 529
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;ZZ)V

    .line 532
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;ZZ)V

    .line 533
    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Ljava/util/List;ZZ)V
    .locals 17
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p3, "ifNotExists"    # Z
    .param p4, "unique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 5128
    .local v9, "indexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 313
    .local v1, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v11, v1

    .local v11, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v11, :cond_3

    aget-object v4, v1, v6

    .line 315
    .local v4, "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-eqz p4, :cond_2

    .line 316
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->g()Ljava/lang/String;

    move-result-object v10

    .line 320
    .local v10, "indexName":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_1

    .line 324
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 325
    .local v2, "columnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "columnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .restart local v2    # "columnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5455
    :cond_0
    iget-object v13, v4, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 329
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v2    # "columnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 318
    .end local v10    # "indexName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->f()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "indexName":Ljava/lang/String;
    goto :goto_1

    .line 332
    .end local v4    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v10    # "indexName":Ljava/lang/String;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":I
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 334
    .local v8, "indexEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v13, Lcom/j256/ormlite/table/TableUtils;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v14, "creating index \'{}\' for table \'{}"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 6121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 334
    invoke-virtual/range {v13 .. v16}, Lcom/j256/ormlite/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    const-string/jumbo v13, "CREATE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    if-eqz p4, :cond_4

    .line 337
    const-string/jumbo v13, "UNIQUE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_4
    const-string/jumbo v13, "INDEX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    if-eqz p3, :cond_5

    invoke-interface/range {p0 .. p0}, Lcom/j256/ormlite/db/DatabaseType;->g()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 341
    const-string/jumbo v13, "IF NOT EXISTS "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_5
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v12, v13}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v13, " ON "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7121
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p0

    invoke-interface {v0, v12, v13}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v13, " ( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/4 v5, 0x1

    .line 348
    .local v5, "first":Z
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .local v3, "columnName":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 350
    const/4 v5, 0x0

    .line 354
    :goto_4
    move-object/from16 v0, p0

    invoke-interface {v0, v12, v3}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    .line 352
    :cond_6
    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 356
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    .line 360
    .end local v5    # "first":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "indexEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8
    return-void
.end method

.method public static b(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 2
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/j256/ormlite/table/TableUtils;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
