.class public final Lcom/alibaba/alimei/orm/internal/DBCreator;
.super Ljava/lang/Object;
.source "DBCreator.java"


# instance fields
.field private final mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

.field private final mDatabaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/orm/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/alibaba/alimei/orm/Configuration;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mDatabaseName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 41
    return-void
.end method

.method public static final executeCreateTableAndRelationIndex(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 10
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
    .line 130
    .local p2, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-static {p2}, Lcom/alibaba/alimei/orm/internal/d;->c(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v5

    .line 133
    .local v5, "table":Lcom/alibaba/alimei/orm/internal/TableInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 134
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getDefaultTableName()Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_1
    invoke-static {p1, v5}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteTable(Ljava/lang/String;Lcom/alibaba/alimei/orm/internal/TableInfo;)Landroid/util/Pair;

    move-result-object v3

    .line 138
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/alibaba/alimei/sqlite/SQLiteTable;Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/alimei/sqlite/SQLiteTable;

    invoke-static {v7}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createTableStatement(Lcom/alibaba/alimei/sqlite/SQLiteTable;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "sql":Ljava/lang/String;
    :try_start_0
    invoke-interface {p0, v4}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 151
    .local v2, "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;

    .line 153
    .local v0, "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    invoke-static {v0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createIndexStatement(Lcom/alibaba/alimei/sqlite/SQLiteIndex;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "indexSql":Ljava/lang/String;
    :try_start_1
    invoke-interface {p0, v1}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v6

    .line 157
    .local v6, "tr":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "executeCreateTableIndex  errror index name:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    new-instance v7, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "create view-->>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 143
    .end local v0    # "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    .end local v1    # "indexSql":Ljava/lang/String;
    .end local v2    # "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    .end local v6    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 144
    .restart local v6    # "tr":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "executeCreateTable tableName error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    new-instance v7, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v7, v6}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 162
    .end local v6    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    :cond_2
    return-void
.end method

.method private final executeCreateTableAndRelationIndex(Lcom/alibaba/alimei/orm/internal/c;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 10
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/internal/c;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    .local p3, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-static {p3}, Lcom/alibaba/alimei/orm/internal/d;->c(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v5

    .line 94
    .local v5, "table":Lcom/alibaba/alimei/orm/internal/TableInfo;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 95
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getDefaultTableName()Ljava/lang/String;

    move-result-object p2

    .line 98
    :cond_1
    invoke-static {p2, v5}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteTable(Ljava/lang/String;Lcom/alibaba/alimei/orm/internal/TableInfo;)Landroid/util/Pair;

    move-result-object v3

    .line 99
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/alibaba/alimei/sqlite/SQLiteTable;Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/alimei/sqlite/SQLiteTable;

    invoke-static {v7}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createTableStatement(Lcom/alibaba/alimei/sqlite/SQLiteTable;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "sql":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v4}, Lcom/alibaba/alimei/orm/internal/c;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 113
    .local v2, "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sqlite/SQLiteIndex;

    .line 115
    .local v0, "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    invoke-static {v0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createIndexStatement(Lcom/alibaba/alimei/sqlite/SQLiteIndex;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "indexSql":Ljava/lang/String;
    :try_start_1
    invoke-interface {p1, v1}, Lcom/alibaba/alimei/orm/internal/c;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v6

    .line 119
    .local v6, "tr":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "executeCreateTableIndex  errror index name:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    new-instance v7, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "create view-->>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 104
    .end local v0    # "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    .end local v1    # "indexSql":Ljava/lang/String;
    .end local v2    # "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    .end local v6    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 105
    .restart local v6    # "tr":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "executeCreateTable tableName error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    new-instance v7, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    invoke-direct {v7, v6}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 124
    .end local v6    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    :cond_2
    return-void
.end method

.method private executeCreateTables(Lcom/alibaba/alimei/orm/internal/c;)V
    .locals 8
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    iget-object v5, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/Configuration;->getTableMap()Ljava/util/Map;

    move-result-object v4

    .line 72
    .local v4, "tables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 73
    :cond_0
    new-instance v5, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u6570\u636e\u5e93["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mDatabaseName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]\u672a\u914d\u7f6e\u4efb\u4f55\u8868\u4fe1\u606f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    .line 77
    .local v2, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "execute create tables mDatabaseName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mDatabaseName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", table size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 78
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "tableName":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 83
    .local v1, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0, p1, v3, v1}, Lcom/alibaba/alimei/orm/internal/DBCreator;->executeCreateTableAndRelationIndex(Lcom/alibaba/alimei/orm/internal/c;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 85
    .end local v1    # "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    .end local v3    # "tableName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private executeCreateTriggers(Lcom/alibaba/alimei/orm/internal/c;)V
    .locals 9
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 198
    .local v1, "conf":Lcom/alibaba/alimei/orm/Configuration;
    if-nez v1, :cond_1

    .line 218
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/Configuration;->getTriggerEntries()Ljava/util/List;

    move-result-object v5

    .line 202
    .local v5, "triggers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TriggerEntry;>;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 203
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 204
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TriggerEntry;>;"
    invoke-static {v0}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteTrigger(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteTrigger;

    move-result-object v4

    .line 205
    .local v4, "trigger":Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
    if-eqz v4, :cond_2

    .line 206
    invoke-static {v4}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createTriggerStatement(Lcom/alibaba/alimei/sqlite/SQLiteTrigger;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "sql":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v2}, Lcom/alibaba/alimei/orm/internal/c;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "tr":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "executeCreateTriggers  error trigger:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    new-instance v6, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "create trigger-->>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 214
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not valid trigger entry!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private executeCreateViews(Lcom/alibaba/alimei/orm/internal/c;)V
    .locals 9
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 170
    .local v1, "conf":Lcom/alibaba/alimei/orm/Configuration;
    if-nez v1, :cond_1

    .line 190
    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/Configuration;->getViewEntries()Ljava/util/List;

    move-result-object v5

    .line 174
    .local v5, "viewEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 175
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 176
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    invoke-static {v0}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteView(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteView;

    move-result-object v4

    .line 177
    .local v4, "view":Lcom/alibaba/alimei/sqlite/SQLiteView;
    if-eqz v4, :cond_2

    .line 178
    invoke-static {v4}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->createViewStatement(Lcom/alibaba/alimei/sqlite/SQLiteView;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "sql":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v2}, Lcom/alibaba/alimei/orm/internal/c;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "tr":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "executeCreateViews  error view:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    new-instance v6, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "create view-->>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 186
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_2
    new-instance v6, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not valid view entry!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private executeDatabaseMigrations(Lcom/alibaba/alimei/orm/internal/c;IIZZ)V
    .locals 7
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .param p4, "isUp"    # Z
    .param p5, "needMigrate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    iget-object v6, p0, Lcom/alibaba/alimei/orm/internal/DBCreator;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 229
    .local v6, "conf":Lcom/alibaba/alimei/orm/Configuration;
    if-nez v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-class v2, Lcom/alibaba/alimei/orm/migration/DbMigration;

    invoke-virtual {v6, v2}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 233
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/Configuration;->getMigrations()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "migrations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/orm/migration/Migration;>;"
    invoke-static {}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->getInstance()Lcom/alibaba/alimei/orm/internal/DatabasePool;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 235
    .local v0, "idataBase":Lcom/alibaba/alimei/orm/IDatabase;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, p4

    move v3, p2

    move v4, p3

    move v5, p5

    .line 236
    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/orm/internal/l;->a(Lcom/alibaba/alimei/orm/IDatabase;Ljava/util/List;ZIIZ)V

    goto :goto_0
.end method

.method private handleCreate(Lcom/alibaba/alimei/orm/internal/c;IIZ)V
    .locals 6
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .param p4, "runMigration"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/DBCreator;->executeCreateTables(Lcom/alibaba/alimei/orm/internal/c;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/DBCreator;->executeCreateViews(Lcom/alibaba/alimei/orm/internal/c;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/DBCreator;->executeCreateTriggers(Lcom/alibaba/alimei/orm/internal/c;)V

    .line 62
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/orm/internal/DBCreator;->executeDatabaseMigrations(Lcom/alibaba/alimei/orm/internal/c;IIZZ)V

    .line 63
    return-void
.end method


# virtual methods
.method public final onCreate(Lcom/alibaba/alimei/orm/internal/c;I)V
    .locals 1
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;
    .param p2, "version"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/alibaba/alimei/orm/internal/DBCreator;->handleCreate(Lcom/alibaba/alimei/orm/internal/c;IIZ)V

    .line 46
    return-void
.end method

.method public final onDowngrade(Lcom/alibaba/alimei/orm/internal/c;II)V
    .locals 1
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/orm/internal/DBCreator;->handleCreate(Lcom/alibaba/alimei/orm/internal/c;IIZ)V

    .line 56
    return-void
.end method

.method public final onUpgrade(Lcom/alibaba/alimei/orm/internal/c;II)V
    .locals 1
    .param p1, "executor"    # Lcom/alibaba/alimei/orm/internal/c;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/alimei/orm/internal/DBCreator;->handleCreate(Lcom/alibaba/alimei/orm/internal/c;IIZ)V

    .line 51
    return-void
.end method
