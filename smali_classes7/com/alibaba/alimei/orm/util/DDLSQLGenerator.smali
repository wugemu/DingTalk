.class public final Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;
.super Ljava/lang/Object;
.source "DDLSQLGenerator.java"


# static fields
.field private static final INDENTIFIER:Ljava/lang/String; = "\""

.field private static final SEMICOLON:Ljava/lang/String; = ";"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static addColumnStatement(Lcom/alibaba/alimei/sqlite/SQLiteColumn;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "column"    # Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v1, "Column can not be null"

    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "Table name can not be null"

    invoke-static {p1, v1}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    invoke-static {p1}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ADD COLUMN "

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->makeColumnString(Lcom/alibaba/alimei/sqlite/SQLiteColumn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static countAutoIncrementColumns([Lcom/alibaba/alimei/sqlite/SQLiteColumn;)I
    .locals 4
    .param p0, "columns"    # [Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "retVal":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 38
    :try_start_0
    aget-object v0, p0, v2

    .line 40
    .local v0, "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isAutoincrement()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 36
    .end local v0    # "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return v1

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static createIndexStatement(Lcom/alibaba/alimei/sqlite/SQLiteIndex;)Ljava/lang/String;
    .locals 6
    .param p0, "index"    # Lcom/alibaba/alimei/sqlite/SQLiteIndex;

    .prologue
    .line 151
    const-string/jumbo v4, "Index can not be null"

    invoke-static {p0, v4}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CREATE "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->isUnique()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    const-string/jumbo v4, "UNIQUE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    const-string/jumbo v4, "INDEX IF NOT EXISTS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->isPrimaryKey()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    const-string/jumbo v4, "PRIMARY KEY "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    const-string/jumbo v4, "ON "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 173
    .local v1, "comma":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    .line 175
    invoke-static {v5}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v1, ", "

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_2
    const-string/jumbo v4, ");"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createTableStatement(Lcom/alibaba/alimei/sqlite/SQLiteTable;)Ljava/lang/String;
    .locals 9
    .param p0, "table"    # Lcom/alibaba/alimei/sqlite/SQLiteTable;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v3, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "SQLiteTable can not be null"

    invoke-static {p0, v5}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTable;->getColumns()[Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    move-result-object v1

    .line 63
    .local v1, "columns":[Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    const-string/jumbo v5, "SQLiteColumns can not be null"

    invoke-static {v1, v5}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    array-length v5, v1

    if-lez v5, :cond_1

    move v5, v6

    :goto_0
    const-string/jumbo v8, "At least one column must exist"

    invoke-static {v5, v8}, Lcom/alibaba/alimei/orm/util/Validator;->isTrue(ZLjava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->countAutoIncrementColumns([Lcom/alibaba/alimei/sqlite/SQLiteColumn;)I

    move-result v2

    .line 68
    .local v2, "numberOfAutoIncrementColumns":I
    if-gt v2, v6, :cond_2

    :goto_1
    const-string/jumbo v5, "Can not have more than one autoincrement key"

    invoke-static {v6, v5}, Lcom/alibaba/alimei/orm/util/Validator;->isTrue(ZLjava/lang/String;)V

    .line 70
    const-string/jumbo v5, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v4, 0x0

    .line 75
    .local v4, "x":I
    array-length v5, v1

    :goto_2
    if-ge v7, v5, :cond_3

    aget-object v0, v1, v7

    .line 76
    .local v0, "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    if-lez v4, :cond_0

    .line 77
    const-string/jumbo v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->makeColumnString(Lcom/alibaba/alimei/sqlite/SQLiteColumn;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v0    # "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .end local v2    # "numberOfAutoIncrementColumns":I
    .end local v4    # "x":I
    :cond_1
    move v5, v7

    .line 64
    goto :goto_0

    .restart local v2    # "numberOfAutoIncrementColumns":I
    :cond_2
    move v6, v7

    .line 68
    goto :goto_1

    .line 82
    .restart local v4    # "x":I
    :cond_3
    const-string/jumbo v5, ");"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static createTriggerStatement(Lcom/alibaba/alimei/sqlite/SQLiteTrigger;)Ljava/lang/String;
    .locals 6
    .param p0, "trigger"    # Lcom/alibaba/alimei/sqlite/SQLiteTrigger;

    .prologue
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v2, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "SQLiteTrigger can not be null"

    invoke-static {p0, v4}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getTriggerStatements()Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "mDMLStmts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "getTriggerDMLStmts can not be null"

    invoke-static {v1, v4}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    const-string/jumbo v5, "At least one TriggerStatement must exist"

    invoke-static {v4, v5}, Lcom/alibaba/alimei/orm/util/Validator;->isTrue(ZLjava/lang/String;)V

    .line 226
    const-string/jumbo v4, "CREATE TRIGGER IF NOT EXISTS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getTriggerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getTriggerType()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;->sqlName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getTriggerOperation()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->sqlName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getTriggerOperation()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    move-result-object v4

    sget-object v5, Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;->UpdateOf:Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    if-ne v4, v5, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getOfColumnName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getOfColumnName can not be null when getTriggerType is TriggerType.UpdateOf"

    invoke-static {v4, v5}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getOfColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    const-string/jumbo v4, " ON "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getOnTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getWhenExpression()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getWhenExpression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 242
    const-string/jumbo v4, " WHEN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->getWhenExpression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1
    const-string/jumbo v4, " BEGIN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, "dmlStmt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "stmt":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 253
    const-string/jumbo v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 224
    .end local v0    # "dmlStmt":Ljava/lang/String;
    .end local v3    # "stmt":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 257
    :cond_4
    const-string/jumbo v4, " END;"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createViewStatement(Lcom/alibaba/alimei/sqlite/SQLiteView;)Ljava/lang/String;
    .locals 12
    .param p0, "view"    # Lcom/alibaba/alimei/sqlite/SQLiteView;

    .prologue
    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "CREATE "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getViewType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getViewType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    const-string/jumbo v9, "VIEW IF NOT EXISTS  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getViewName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " AS SELECT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->isDistinct()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 277
    const-string/jumbo v9, " DISTINCT "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getColumns()Ljava/util/List;

    move-result-object v3

    .line 282
    .local v3, "columns":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;>;"
    const/4 v5, 0x0

    .line 283
    .local v5, "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;

    .line 284
    .local v1, "column":Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;
    if-eqz v5, :cond_2

    .line 285
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->getTableName()Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "tableName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->getColumnName()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->getColumnAlias()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "alias":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 291
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 295
    const-string/jumbo v10, " AS "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 298
    goto :goto_0

    .line 300
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "column":Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v7    # "tableName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, " FROM "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getFrom()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getWhere()Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "where":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 304
    const-string/jumbo v9, "WHERE "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "groupBy":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 309
    const-string/jumbo v9, "GROUP BY "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getHaving()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 312
    const-string/jumbo v9, "HAVING "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getHaving()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getOrderBy()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 317
    const-string/jumbo v9, "ORDER BY "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getOrderBy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getLimit()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 321
    const-string/jumbo v9, "LIMIT "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->getLimit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static dropColumnStatement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v1, "Column name can not be null"

    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "Table name can not be null"

    invoke-static {p1, v1}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-static {p1}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DROP "

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dropIndexStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "indexName"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string/jumbo v1, "Index name can not be null"

    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dropTableStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v1, "Table name must not be null"

    invoke-static {p0, v1}, Lcom/alibaba/alimei/orm/util/Validator;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static makeColumnString(Lcom/alibaba/alimei/sqlite/SQLiteColumn;)Ljava/lang/String;
    .locals 4
    .param p0, "column"    # Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, "sql":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/orm/util/DDLSQLGenerator;->wrapName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isPrimaryKey()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isAutoincrement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 340
    .local v1, "type":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->getSqliteDataName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isPrimaryKey()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const-string/jumbo v2, "primary key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isAutoincrement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const-string/jumbo v2, "autoincrement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    const-string/jumbo v2, "default \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 337
    .end local v1    # "type":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->getColumnType()Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    move-result-object v1

    .restart local v1    # "type":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    goto :goto_0

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isAutoincrement()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 352
    const-string/jumbo v2, "primary key autoincrement "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 354
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->isNullable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    const-string/jumbo v2, "not null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static wrapName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
