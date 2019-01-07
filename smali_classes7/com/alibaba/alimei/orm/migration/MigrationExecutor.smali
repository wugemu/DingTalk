.class public Lcom/alibaba/alimei/orm/migration/MigrationExecutor;
.super Ljava/lang/Object;
.source "MigrationExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addColumn(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)V
    .locals 4
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "column"    # Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string/jumbo v2, "Column can not be null"

    invoke-static {p1, v2}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "Table can not be null"

    invoke-static {p2, v2}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {p1, p2}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->addColumnStatement(Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "query":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-void

    .line 66
    .end local v1    # "query":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to alter table "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and add column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static addIndex(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteIndex;)V
    .locals 4
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "index"    # Lcom/alibaba/alimei/sqlite/SQLiteIndex;

    .prologue
    .line 78
    const-string/jumbo v2, "Index can not be null"

    invoke-static {p1, v2}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createIndexStatement(Lcom/alibaba/alimei/sqlite/SQLiteIndex;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "query":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 83
    .end local v1    # "query":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to add index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createTable(Lcom/alibaba/alimei/orm/IDatabase;Lcom/alibaba/alimei/sqlite/SQLiteTable;)V
    .locals 4
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "table"    # Lcom/alibaba/alimei/sqlite/SQLiteTable;

    .prologue
    .line 42
    const-string/jumbo v2, "Table can not be null"

    invoke-static {p1, v2}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createTableStatement(Lcom/alibaba/alimei/sqlite/SQLiteTable;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "query":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to create table "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/alimei/sqlite/SQLiteTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createTable(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/Class;)V
    .locals 1
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/IDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "tableClassModel":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->createTable(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method public static createTable(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/IDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "tableClassModel":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-static {p0, p1, p2}, Lcom/alibaba/alimei/orm/internal/DBCreator;->executeCreateTableAndRelationIndex(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method public static execute(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)V
    .locals 4
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to execute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs execute(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to execute with parameters "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)V
    .locals 0
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-interface {p0, p1}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private static varargs executeStatement(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "database"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p0, p1, p2}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method
