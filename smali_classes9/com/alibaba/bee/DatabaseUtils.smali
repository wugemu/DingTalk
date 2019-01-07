.class public Lcom/alibaba/bee/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/bee/DatabaseUtils$IndexInfo;
    }
.end annotation


# static fields
.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final STATEMENT_DELETE:I = 0x5

.field public static final STATEMENT_INSERT:I = 0x2

.field public static final STATEMENT_OTHER:I = 0x63

.field public static final STATEMENT_REPLACE:I = 0x4

.field public static final STATEMENT_SELECT:I = 0x1

.field public static final STATEMENT_UPDATE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/bee/DatabaseUtils;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    return-void
.end method

.method private static addCreateIndexStatements(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 9
    .param p0, "tableName"    # Ljava/lang/String;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/bee/DatabaseUtils$IndexInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "indexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 352
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/alibaba/bee/DatabaseUtils$1;

    invoke-direct {v1}, Lcom/alibaba/bee/DatabaseUtils$1;-><init>()V

    .line 358
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 359
    .local v3, "indexEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;>;"
    const-string/jumbo v6, "CREATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    if-eqz p3, :cond_0

    .line 361
    const-string/jumbo v6, "UNIQUE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    const-string/jumbo v6, "INDEX IF NOT EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string/jumbo v6, " ON "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {v5, p0}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 367
    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 370
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 371
    const/4 v2, 0x1

    .line 372
    .local v2, "first":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/DatabaseUtils$IndexInfo;

    .line 373
    .local v0, "column":Lcom/alibaba/bee/DatabaseUtils$IndexInfo;
    if-eqz v2, :cond_1

    .line 374
    const/4 v2, 0x0

    .line 378
    :goto_2
    iget-object v8, v0, Lcom/alibaba/bee/DatabaseUtils$IndexInfo;->columnName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 376
    :cond_1
    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 380
    .end local v0    # "column":Lcom/alibaba/bee/DatabaseUtils$IndexInfo;
    :cond_2
    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 384
    .end local v2    # "first":Z
    .end local v3    # "indexEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    :cond_3
    return-void
.end method

.method private static addIndexInfo(Ljava/lang/String;Lcom/alibaba/bee/impl/table/ColumnType;Ljava/util/Map;Z)V
    .locals 11
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "columnType"    # Lcom/alibaba/bee/impl/table/ColumnType;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/bee/impl/table/ColumnType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/bee/DatabaseUtils$IndexInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "indexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;>;"
    const/4 v7, 0x0

    .line 387
    if-eqz p3, :cond_1

    iget-object v5, p1, Lcom/alibaba/bee/impl/table/ColumnType;->uniqueIndexName:[Ljava/lang/String;

    .line 388
    .local v5, "indexs":[Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    .line 416
    :cond_0
    return-void

    .line 387
    .end local v5    # "indexs":[Ljava/lang/String;
    :cond_1
    iget-object v5, p1, Lcom/alibaba/bee/impl/table/ColumnType;->indexName:[Ljava/lang/String;

    goto :goto_0

    .line 391
    .restart local v5    # "indexs":[Ljava/lang/String;
    :cond_2
    array-length v8, v5

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v4, v5, v6

    .line 392
    .local v4, "indexConf":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 394
    const-string/jumbo v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "colonIndex":I
    if-eqz v0, :cond_5

    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, "idxSeq":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_6

    .line 399
    move-object v2, v4

    .line 404
    .local v2, "idxName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 406
    if-eqz p0, :cond_3

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 410
    .local v1, "columnList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    if-nez v1, :cond_4

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "columnList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .restart local v1    # "columnList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_4
    new-instance v9, Lcom/alibaba/bee/DatabaseUtils$IndexInfo;

    iget-object v10, p1, Lcom/alibaba/bee/impl/table/ColumnType;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v3}, Lcom/alibaba/bee/DatabaseUtils$IndexInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v0    # "colonIndex":I
    .end local v1    # "columnList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;"
    .end local v2    # "idxName":Ljava/lang/String;
    .end local v3    # "idxSeq":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 401
    .restart local v0    # "colonIndex":I
    .restart local v3    # "idxSeq":I
    :cond_6
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 402
    .restart local v2    # "idxName":Ljava/lang/String;
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/bee/DatabaseUtils;->toInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method

.method private static appendColumnArg(Lcom/alibaba/bee/impl/table/ColumnType;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "columnType"    # Lcom/alibaba/bee/impl/table/ColumnType;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 213
    iget-object v2, p0, Lcom/alibaba/bee/impl/table/ColumnType;->fieldConverter:Lcom/alibaba/bee/impl/table/types/FieldConverter;

    invoke-interface {v2}, Lcom/alibaba/bee/impl/table/types/FieldConverter;->getDataType()Lcom/alibaba/bee/impl/table/DataType;

    move-result-object v0

    .line 214
    .local v0, "dataType":Lcom/alibaba/bee/impl/table/DataType;
    iget-object v2, p0, Lcom/alibaba/bee/impl/table/ColumnType;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-boolean v2, p0, Lcom/alibaba/bee/impl/table/ColumnType;->id:Z

    if-eqz v2, :cond_1

    .line 217
    const-string/jumbo v2, " INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Lcom/alibaba/bee/impl/table/DataType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/alibaba/bee/impl/table/ColumnType;->defaultValue:Ljava/lang/String;

    .line 222
    .local v1, "defaultValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 223
    const-string/jumbo v2, " DEFAULT "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    sget-object v2, Lcom/alibaba/bee/impl/table/DataType;->TEXT:Lcom/alibaba/bee/impl/table/DataType;

    if-ne v0, v2, :cond_3

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 230
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/alibaba/bee/impl/table/ColumnType;->nullable:Z

    if-nez v2, :cond_0

    .line 231
    const-string/jumbo v2, " NOT NULL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p0, p1

    .line 38
    .end local p0    # "newValue":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static getAddColumnStatement(Ljava/lang/String;Lcom/alibaba/bee/impl/table/ColumnType;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "column"    # Lcom/alibaba/bee/impl/table/ColumnType;

    .prologue
    .line 237
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 243
    :goto_0
    return-object v1

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 239
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {v0, p0}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, " ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {p1, v0}, Lcom/alibaba/bee/DatabaseUtils;->appendColumnArg(Lcom/alibaba/bee/impl/table/ColumnType;Ljava/lang/StringBuilder;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getClearTableStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v0, p0}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreateIndexStatements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 334
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v3, "statements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v4

    .line 337
    .local v4, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v1, "indexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v5, "uniIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/bee/DatabaseUtils$IndexInfo;>;>;"
    invoke-virtual {v4}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v0, v8, v6

    .line 340
    .local v0, "column":Lcom/alibaba/bee/impl/table/ColumnType;
    invoke-static {p1, v0, v1, v7}, Lcom/alibaba/bee/DatabaseUtils;->addIndexInfo(Ljava/lang/String;Lcom/alibaba/bee/impl/table/ColumnType;Ljava/util/Map;Z)V

    .line 341
    invoke-static {p1, v0, v5, v10}, Lcom/alibaba/bee/DatabaseUtils;->addIndexInfo(Ljava/lang/String;Lcom/alibaba/bee/impl/table/ColumnType;Ljava/util/Map;Z)V

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/bee/impl/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "newTableName":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v3, v1, v7}, Lcom/alibaba/bee/DatabaseUtils;->addCreateIndexStatements(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    .line 346
    invoke-static {v2, v3, v5, v10}, Lcom/alibaba/bee/DatabaseUtils;->addCreateIndexStatements(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    .line 347
    return-object v3

    .end local v2    # "newTableName":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 344
    goto :goto_1
.end method

.method public static getCreateTableStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v3

    .line 61
    .local v3, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/bee/impl/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v2, p1}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    const/4 v1, 0x1

    .line 68
    .local v1, "first":Z
    invoke-virtual {v3}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 69
    .local v0, "column":Lcom/alibaba/bee/impl/table/ColumnType;
    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 74
    :goto_1
    invoke-static {v0, v2}, Lcom/alibaba/bee/DatabaseUtils;->appendColumnArg(Lcom/alibaba/bee/impl/table/ColumnType;Ljava/lang/StringBuilder;)V

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 76
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    :cond_2
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getDropIndexStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "indexName"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DROP INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDropTableStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v0, p0}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInsertWithOnConflict(Lcom/alibaba/bee/impl/table/TableInfo;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "conflictAlgorithm"    # I
    .param p3, "includeId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/bee/impl/table/TableInfo",
            "<*>;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/bee/impl/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "INSERT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sget-object v4, Lcom/alibaba/bee/DatabaseUtils;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string/jumbo v4, " INTO "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {v2, p1}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 157
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    const/4 v1, 0x1

    .line 160
    .local v1, "first":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v3, "vals":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 162
    .local v0, "column":Lcom/alibaba/bee/impl/table/ColumnType;
    iget-boolean v7, v0, Lcom/alibaba/bee/impl/table/ColumnType;->id:Z

    if-eqz v7, :cond_1

    if-eqz p3, :cond_2

    .line 163
    :cond_1
    if-eqz v1, :cond_3

    .line 164
    const-string/jumbo v7, "?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/4 v1, 0x0

    .line 170
    :goto_1
    iget-object v7, v0, Lcom/alibaba/bee/impl/table/ColumnType;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_3
    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v7, ",?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    :cond_4
    const-string/jumbo v4, ") VALUES ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 175
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "conflictAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v0

    .line 147
    .local v0, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Lcom/alibaba/bee/impl/table/TableInfo;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplaceStatementWithId(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v0

    .line 138
    .local v0, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Lcom/alibaba/bee/impl/table/TableInfo;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStatementType(Ljava/lang/String;)I
    .locals 4
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x63

    const/4 v2, 0x3

    .line 435
    if-nez p0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 438
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 442
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "prefixSql":Ljava/lang/String;
    const-string/jumbo v3, "SEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    const/4 v1, 0x1

    goto :goto_0

    .line 445
    :cond_2
    const-string/jumbo v3, "INS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    const/4 v1, 0x2

    goto :goto_0

    .line 447
    :cond_3
    const-string/jumbo v3, "UPD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 448
    goto :goto_0

    .line 449
    :cond_4
    const-string/jumbo v2, "REP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 450
    const/4 v1, 0x4

    goto :goto_0

    .line 451
    :cond_5
    const-string/jumbo v2, "DEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const/4 v1, 0x5

    goto :goto_0
.end method

.method public static getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;)",
            "Lcom/alibaba/bee/impl/table/TableInfo",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {}, Lcom/alibaba/bee/impl/TableClassPool;->getInstance()Lcom/alibaba/bee/impl/TableClassPool;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/bee/impl/TableClassPool;->getAndSet(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v0

    .line 324
    .local v0, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid TableEntry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    return-object v0
.end method

.method public static getTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 256
    if-nez p0, :cond_0

    move-object v7, v8

    .line 311
    :goto_0
    return-object v7

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 261
    .local v1, "length":I
    const/16 v9, 0xc

    if-ge v1, v9, :cond_1

    move-object v7, v8

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    const/4 v9, 0x3

    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, "prefixSql":Ljava/lang/String;
    const-string/jumbo v9, "INS"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "REP"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 266
    :cond_2
    const-string/jumbo v7, "("

    const/16 v9, 0xe

    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, "end":I
    if-eq v0, v11, :cond_b

    .line 268
    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "upperSql":Ljava/lang/String;
    const-string/jumbo v7, " INTO "

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 270
    .local v4, "start":I
    if-eq v4, v11, :cond_b

    .line 271
    add-int/lit8 v7, v4, 0xc

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 275
    .end local v0    # "end":I
    .end local v4    # "start":I
    .end local v6    # "upperSql":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "SEL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "DEL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 276
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 277
    .restart local v6    # "upperSql":Ljava/lang/String;
    const-string/jumbo v9, " FROM "

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 278
    .restart local v4    # "start":I
    if-eq v4, v11, :cond_b

    .line 279
    add-int/lit8 v4, v4, 0x6

    .line 280
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "suffixSql":Ljava/lang/String;
    sub-int v8, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v2, v8, v9

    .line 282
    .local v2, "offset":I
    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 283
    .restart local v0    # "end":I
    if-ne v0, v11, :cond_5

    .line 284
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
    :cond_5
    add-int v8, v0, v4

    add-int/2addr v8, v2

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string/jumbo v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_6
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 290
    .end local v0    # "end":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "suffixSql":Ljava/lang/String;
    .end local v6    # "upperSql":Ljava/lang/String;
    :cond_7
    const-string/jumbo v9, "DRO"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 291
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 292
    .restart local v6    # "upperSql":Ljava/lang/String;
    const-string/jumbo v9, "TABLE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 293
    const-string/jumbo v9, " "

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 294
    .restart local v4    # "start":I
    if-eq v4, v11, :cond_b

    .line 295
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 296
    const-string/jumbo v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 297
    :cond_8
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 300
    .end local v4    # "start":I
    .end local v6    # "upperSql":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "UPD"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 302
    .restart local v6    # "upperSql":Ljava/lang/String;
    const-string/jumbo v9, " SET "

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 303
    .restart local v0    # "end":I
    if-eq v0, v11, :cond_b

    .line 304
    const/4 v8, 0x7

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 305
    const-string/jumbo v8, " "

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 306
    .restart local v4    # "start":I
    if-ne v4, v11, :cond_a

    move v4, v7

    .line 307
    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v4    # "start":I
    .end local v6    # "upperSql":Ljava/lang/String;
    :cond_b
    move-object v7, v8

    .line 311
    goto/16 :goto_0
.end method

.method private static getUpdateStatement(Lcom/alibaba/bee/impl/table/TableInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/bee/impl/table/TableInfo",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/bee/impl/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p1

    .line 192
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v2, p1}, Lcom/alibaba/bee/DatabaseUtils;->appendEscapedString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v3, " SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/4 v1, 0x1

    .line 197
    .local v1, "first":Z
    invoke-virtual {p0}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 198
    .local v0, "column":Lcom/alibaba/bee/impl/table/ColumnType;
    iget-boolean v6, v0, Lcom/alibaba/bee/impl/table/ColumnType;->id:Z

    if-nez v6, :cond_1

    .line 201
    if-eqz v1, :cond_2

    .line 202
    const/4 v1, 0x0

    .line 206
    :goto_1
    iget-object v6, v0, Lcom/alibaba/bee/impl/table/ColumnType;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v6, "=?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_2
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUpdateStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v0

    .line 186
    .local v0, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    invoke-static {v0, p1}, Lcom/alibaba/bee/DatabaseUtils;->getUpdateStatement(Lcom/alibaba/bee/impl/table/TableInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static trimQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    const/4 v2, 0x1

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 316
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 317
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 319
    :cond_0
    return-object p0
.end method
