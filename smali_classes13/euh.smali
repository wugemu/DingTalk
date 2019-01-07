.class public final Leuh;
.super Ljava/lang/Object;
.source "SearchDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leuh$a;
    }
.end annotation


# instance fields
.field public a:Leuf;

.field private b:Lcom/alibaba/android/searchengine/jni/Searcher;


# direct methods
.method public constructor <init>(Leuf;Lcom/alibaba/android/searchengine/jni/Searcher;)V
    .locals 0
    .param p1, "searchDataSourceCallback"    # Leuf;
    .param p2, "searcher"    # Lcom/alibaba/android/searchengine/jni/Searcher;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Leuh;->a:Leuf;

    .line 54
    iput-object p2, p0, Leuh;->b:Lcom/alibaba/android/searchengine/jni/Searcher;

    .line 55
    return-void
.end method

.method private static a(Lcom/alibaba/android/searchengine/models/SearchTable;)Ljava/lang/String;
    .locals 5
    .param p0, "table"    # Lcom/alibaba/android/searchengine/models/SearchTable;

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v1, "orderByString":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->orderByClauses:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->orderByClauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->orderByClauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;

    .line 330
    .local v0, "orderByClause":Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;
    invoke-virtual {p0}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;->column:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;->orderType:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    iget-object v4, v4, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;->type:Ljava/lang/String;

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    .end local v0    # "orderByClause":Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable;)Ljava/lang/String;
    .locals 6
    .param p0, "select"    # Ljava/lang/String;
    .param p1, "table"    # Lcom/alibaba/android/searchengine/models/SearchTable;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getOutColumns()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".rowid,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getOutColumns()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 319
    .local v0, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private a(ZLcom/alibaba/android/searchengine/models/IndexQueryTableResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuh$a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "mergeRow"    # Z
    .param p2, "searchResult"    # Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    .param p3, "select"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "innerJoin"    # Ljava/lang/String;
    .param p6, "where"    # Leuh$a;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leuh$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 415
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->pkeys:Ljava/util/List;

    .line 416
    .local v13, "pkeyIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    :cond_0
    return-object v14

    .line 420
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v15, "rowSQL":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 422
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_2

    .line 424
    const-string/jumbo v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 426
    :cond_2
    const-string/jumbo v1, ") "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 429
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    iget-object v2, v0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p6

    iput-object v1, v0, Leuh$a;->a:Ljava/lang/String;

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Leuh;->a:Leuf;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Leuh;->a:Leuf;

    invoke-interface {v1}, Leuf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->dbName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->tableName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->keyField:Ljava/lang/String;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p1

    invoke-static/range {v1 .. v10}, Leuh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuh$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v16

    .line 433
    .local v16, "tmpRowResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p7, :cond_4

    const-string/jumbo v1, ""

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 434
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 435
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 438
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    const/4 v12, 0x0

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 439
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 440
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuh$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 16
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "select"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "innorJoin"    # Ljava/lang/String;
    .param p5, "where"    # Leuh$a;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .param p8, "keyFieldName"    # Ljava/lang/String;
    .param p9, "mergeRow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leuh$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 461
    .local v10, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p5

    iget-object v15, v0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, "query":Ljava/lang/String;
    const/4 v4, 0x0

    .line 466
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p5

    iget-object v14, v0, Leuh$a;->b:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v1, v14, [Ljava/lang/String;

    .line 467
    .local v1, "args":[Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v14, v0, Leuh$a;->b:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 468
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    .line 469
    .local v5, "dbManager":Lcom/alibaba/bee/DBManager;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v14, v9, v1}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 471
    if-eqz v4, :cond_4

    .line 473
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 475
    .local v11, "resultSize":I
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 476
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 477
    .local v3, "count":I
    const/4 v8, 0x0

    .line 478
    .local v8, "keyFieldValue":Ljava/lang/String;
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 479
    .local v12, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 481
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "column":Ljava/lang/String;
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 485
    invoke-interface {v12, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 488
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 489
    move-object v8, v13

    .line 479
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 494
    .end local v2    # "column":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 495
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :goto_1
    if-eqz p9, :cond_0

    .line 502
    const-string/jumbo v14, "count"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    if-eqz p1, :cond_4

    .line 505
    const-string/jumbo v14, "tableName"

    move-object/from16 v0, p1

    invoke-interface {v12, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local v3    # "count":I
    .end local v7    # "i":I
    .end local v8    # "keyFieldValue":Ljava/lang/String;
    .end local v11    # "resultSize":I
    .end local v12    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 518
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 521
    .end local v1    # "args":[Ljava/lang/String;
    .end local v5    # "dbManager":Lcom/alibaba/bee/DBManager;
    :cond_5
    :goto_2
    return-object v10

    .line 497
    .restart local v1    # "args":[Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v5    # "dbManager":Lcom/alibaba/bee/DBManager;
    .restart local v7    # "i":I
    .restart local v8    # "keyFieldValue":Ljava/lang/String;
    .restart local v11    # "resultSize":I
    .restart local v12    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    invoke-interface {v10, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 512
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "count":I
    .end local v5    # "dbManager":Lcom/alibaba/bee/DBManager;
    .end local v7    # "i":I
    .end local v8    # "keyFieldValue":Ljava/lang/String;
    .end local v11    # "resultSize":I
    .end local v12    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 513
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    if-eqz v4, :cond_5

    .line 518
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 517
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v4, :cond_7

    .line 518
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v14
.end method

.method private static a(Leuh$a;Lcom/alibaba/android/searchengine/models/SearchTable;)V
    .locals 6
    .param p0, "where"    # Leuh$a;
    .param p1, "table"    # Lcom/alibaba/android/searchengine/models/SearchTable;

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 400
    :cond_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getWhereClauses()Ljava/util/List;

    move-result-object v2

    .line 368
    .local v2, "wcs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;>;"
    if-eqz v2, :cond_0

    .line 372
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;

    .line 374
    .local v1, "wc":Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;
    if-eqz v1, :cond_2

    .line 378
    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->joins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leuh$a;->a:Ljava/lang/String;

    .line 382
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->joins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v0, v3, :cond_6

    .line 383
    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->comparators:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->values:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leuh$a;->a:Ljava/lang/String;

    .line 389
    :goto_2
    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->joins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->joins:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leuh$a;->a:Ljava/lang/String;

    .line 382
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 386
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->comparators:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leuh$a;->a:Ljava/lang/String;

    .line 387
    iget-object v3, p0, Leuh$a;->b:Ljava/util/List;

    iget-object v5, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->values:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 394
    :cond_6
    iget-object v3, v1, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->joins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leuh$a;->a:Ljava/lang/String;

    .line 398
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leuh$a;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/alibaba/android/searchengine/models/SearchTask;Ljava/lang/String;)Ljava/util/List;
    .locals 39
    .param p1, "searchTask"    # Lcom/alibaba/android/searchengine/models/SearchTask;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/searchengine/models/SearchTask;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 106
    .local v24, "s":J
    sget-object v4, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->Start:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    invoke-static {v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V

    .line 1279
    if-nez p1, :cond_1

    .line 1280
    const/16 v26, 0x0

    .line 5231
    .local v26, "searchQuery":Lcom/alibaba/android/searchengine/models/IndexQuery;
    :goto_0
    invoke-static/range {v26 .. v26}, Lcom/alibaba/android/searchengine/models/FtsIndexQuery;->fromSearchQuery(Lcom/alibaba/android/searchengine/models/IndexQuery;)Lcom/alibaba/android/searchengine/models/FtsIndexQuery;

    move-result-object v4

    .line 5232
    new-instance v5, Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;

    invoke-direct {v5}, Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;-><init>()V

    .line 5233
    move-object/from16 v0, p0

    iget-object v0, v0, Leuh;->b:Lcom/alibaba/android/searchengine/jni/Searcher;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/searchengine/jni/Searcher;->query(Lcom/alibaba/android/searchengine/models/FtsIndexQuery;Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 5234
    const/16 v21, 0x0

    .line 109
    .local v21, "indexResult":Lcom/alibaba/android/searchengine/models/IndexQueryResult;
    :goto_1
    sget-object v4, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->End:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    invoke-static {v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->a(Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V

    .line 111
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v23, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_8

    .line 226
    :cond_0
    :goto_2
    return-object v23

    .line 1283
    .end local v21    # "indexResult":Lcom/alibaba/android/searchengine/models/IndexQueryResult;
    .end local v23    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v26    # "searchQuery":Lcom/alibaba/android/searchengine/models/IndexQuery;
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 1284
    if-nez v4, :cond_2

    .line 1285
    const/16 v26, 0x0

    goto :goto_0

    .line 1288
    :cond_2
    new-instance v26, Lcom/alibaba/android/searchengine/models/IndexQuery;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/android/searchengine/models/IndexQuery;-><init>()V

    .line 1289
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/alibaba/android/searchengine/models/IndexQuery;->bizType:Ljava/lang/String;

    .line 1290
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/searchengine/models/SearchTask;->bizType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual {v4}, Lcom/alibaba/android/searchengine/models/SearchTable;->getQueryColumns()[Ljava/lang/String;

    move-result-object v33

    .line 2254
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v34, v0

    .line 2255
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v33, :cond_3

    move-object/from16 v0, v33

    array-length v4, v0

    if-lez v4, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2256
    :cond_3
    const/4 v5, 0x0

    .line 1290
    :cond_4
    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/alibaba/android/searchengine/models/IndexQuery;->matchCondition:Ljava/lang/String;

    .line 1291
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTask;->indexWhereCondition:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQuery;->commonCondition:Ljava/lang/String;

    .line 1301
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Lcom/alibaba/android/searchengine/models/IndexQuery;->limitOffset:I

    .line 1302
    const/16 v4, 0xbb8

    move-object/from16 v0, v26

    iput v4, v0, Lcom/alibaba/android/searchengine/models/IndexQuery;->limitSize:I

    goto/16 :goto_0

    .line 2259
    :cond_5
    const/4 v5, 0x0

    .line 2260
    const/4 v4, 0x0

    move/from16 v31, v4

    :goto_3
    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    .line 2261
    aget-object v4, v33, v31

    .line 2262
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_17

    .line 3247
    move-object/from16 v0, p0

    iget-object v0, v0, Leuh;->b:Lcom/alibaba/android/searchengine/jni/Searcher;

    move-object/from16 v35, v0

    invoke-static/range {v32 .. v32}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v36

    .line 3248
    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static/range {p2 .. p2}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v37

    const/16 v38, 0x0

    .line 3247
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alibaba/android/searchengine/jni/Searcher;->queryPhrases([B[B[BZ)[B

    move-result-object v4

    .line 3249
    invoke-static {v4}, Leui;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 2267
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 2260
    :goto_4
    add-int/lit8 v5, v31, 0x1

    move/from16 v31, v5

    move-object v5, v4

    goto :goto_3

    .line 4241
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Leuh;->b:Lcom/alibaba/android/searchengine/jni/Searcher;

    move-object/from16 v35, v0

    invoke-static {v5}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4}, Leui;->a(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v36, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v0, v5, v4, v1}, Lcom/alibaba/android/searchengine/jni/Searcher;->queryRelation([B[BI)[B

    move-result-object v4

    .line 4242
    invoke-static {v4}, Leui;->a([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 5237
    .restart local v26    # "searchQuery":Lcom/alibaba/android/searchengine/models/IndexQuery;
    :cond_7
    invoke-static {v5}, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->fromFtsSearchResult(Lcom/alibaba/android/searchengine/models/FtsIndexQueryResult;)Lcom/alibaba/android/searchengine/models/IndexQueryResult;

    move-result-object v21

    goto/16 :goto_1

    .line 118
    .restart local v21    # "indexResult":Lcom/alibaba/android/searchengine/models/IndexQueryResult;
    .restart local v23    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v16, v4, v24

    .line 120
    .local v16, "duration":J
    const-string/jumbo v4, "search"

    const-string/jumbo v5, "search"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v32, "search table index measure time = "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v4, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->Start:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    invoke-static {v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V

    .line 124
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/searchengine/models/SearchTask;->searchTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    move-object/from16 v29, v0

    .line 125
    .local v29, "table":Lcom/alibaba/android/searchengine/models/SearchTable;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->tableName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 126
    .local v19, "filterTableName":Ljava/lang/String;
    const/16 v30, 0x0

    .line 128
    .local v30, "tableCount":I
    const/16 v22, 0x0

    .line 129
    .local v22, "offset":I
    const/16 v27, 0x0

    .line 130
    .local v27, "size":I
    if-eqz v29, :cond_9

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    if-eqz v4, :cond_9

    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->mergeRow:Z

    if-eqz v4, :cond_9

    .line 131
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    iget v0, v4, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->start:I

    move/from16 v22, v0

    .line 132
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    iget v0, v4, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->size:I

    move/from16 v27, v0

    .line 136
    :cond_9
    const/16 v28, 0x0

    .line 137
    .local v28, "start":I
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    .line 138
    .local v18, "end":I
    if-ltz v22, :cond_b

    if-lez v27, :cond_b

    .line 140
    move/from16 v28, v22

    .line 141
    add-int v18, v22, v27

    .line 142
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v22

    if-gt v4, v0, :cond_a

    .line 143
    const-string/jumbo v4, "search"

    const-string/jumbo v5, "search"

    const-string/jumbo v31, "split page end"

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Leuh;->a:Leuf;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Leuf;->a(Z)V

    goto/16 :goto_2

    .line 146
    :cond_a
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v4, v0, :cond_f

    .line 147
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    .line 148
    const-string/jumbo v4, "search"

    const-string/jumbo v5, "search"

    const-string/jumbo v31, "split page false"

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v4, v0, Leuh;->a:Leuf;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Leuf;->a(Z)V

    .line 156
    :cond_b
    :goto_5
    move/from16 v20, v28

    .local v20, "i":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_16

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Leuh;->a:Leuf;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Leuh;->a:Leuf;

    invoke-interface {v4}, Leuf;->a()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 162
    move-object/from16 v0, v29

    iget v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->maxTableCount:I

    move/from16 v0, v30

    if-ge v0, v4, :cond_16

    .line 166
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/searchengine/models/IndexQueryResult;->tableResults:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;

    .line 167
    .local v6, "result":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    if-eqz v6, :cond_15

    .line 171
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->tableName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 175
    :cond_c
    iget-object v4, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->tableName:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->tableName:Ljava/lang/String;

    .line 176
    const-string/jumbo v7, "select "

    .line 177
    .local v7, "select":Ljava/lang/String;
    new-instance v10, Leuh$a;

    const/4 v4, 0x0

    invoke-direct {v10, v4}, Leuh$a;-><init>(B)V

    .line 178
    .local v10, "where":Leuh$a;
    const-string/jumbo v9, ""

    .line 179
    .local v9, "innerJoin":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->tableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "from":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 181
    .local v11, "orderByString":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 182
    .local v12, "limitString":Ljava/lang/String;
    move-object/from16 v13, v29

    .line 183
    .local v13, "currentTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    :goto_7
    if-eqz v13, :cond_11

    .line 184
    invoke-static {v7, v13}, Leuh;->a(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable;)Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-static {v10, v13}, Leuh;->a(Leuh$a;Lcom/alibaba/android/searchengine/models/SearchTable;)V

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Leuh;->a(Lcom/alibaba/android/searchengine/models/SearchTable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    iget-object v4, v13, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    if-eqz v4, :cond_d

    .line 188
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->mergeRow:Z

    if-nez v4, :cond_d

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v13, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    iget v5, v5, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->start:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    iget v5, v5, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 192
    :cond_d
    invoke-virtual {v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->getUnionTable()Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    move-result-object v14

    .line 193
    .local v14, "currentUnionTable":Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
    if-eqz v14, :cond_10

    .line 5348
    if-eqz v13, :cond_e

    if-eqz v14, :cond_e

    iget-object v4, v14, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    if-eqz v4, :cond_e

    .line 5349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " inner join "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onColumn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    invoke-virtual {v5}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onOtherColumn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 195
    :cond_e
    iget-object v13, v14, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    goto/16 :goto_7

    .line 151
    .end local v6    # "result":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    .end local v7    # "select":Ljava/lang/String;
    .end local v8    # "from":Ljava/lang/String;
    .end local v9    # "innerJoin":Ljava/lang/String;
    .end local v10    # "where":Leuh$a;
    .end local v11    # "orderByString":Ljava/lang/String;
    .end local v12    # "limitString":Ljava/lang/String;
    .end local v13    # "currentTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    .end local v14    # "currentUnionTable":Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
    .end local v20    # "i":I
    :cond_f
    const-string/jumbo v4, "search"

    const-string/jumbo v5, "search"

    const-string/jumbo v31, "split page true"

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Leuh;->a:Leuf;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Leuf;->a(Z)V

    goto/16 :goto_5

    .line 198
    .restart local v6    # "result":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    .restart local v7    # "select":Ljava/lang/String;
    .restart local v8    # "from":Ljava/lang/String;
    .restart local v9    # "innerJoin":Ljava/lang/String;
    .restart local v10    # "where":Leuh$a;
    .restart local v11    # "orderByString":Ljava/lang/String;
    .restart local v12    # "limitString":Ljava/lang/String;
    .restart local v13    # "currentTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    .restart local v14    # "currentUnionTable":Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
    .restart local v20    # "i":I
    :cond_10
    const/4 v13, 0x0

    .line 200
    goto/16 :goto_7

    .line 203
    .end local v14    # "currentUnionTable":Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
    :cond_11
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_12

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 207
    :cond_12
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_13

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " order by "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    invoke-virtual {v11, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    :cond_13
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_14

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " limit "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 214
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Leuh$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/android/searchengine/models/SearchTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;->keyField:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Leuh$a;->a:Ljava/lang/String;

    .line 215
    move-object/from16 v0, v29

    iget-boolean v5, v0, Lcom/alibaba/android/searchengine/models/SearchTable;->mergeRow:Z

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Leuh;->a(ZLcom/alibaba/android/searchengine/models/IndexQueryTableResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leuh$a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 216
    .local v15, "dbResult":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 217
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    add-int/lit8 v30, v30, 0x1

    .line 156
    .end local v7    # "select":Ljava/lang/String;
    .end local v8    # "from":Ljava/lang/String;
    .end local v9    # "innerJoin":Ljava/lang/String;
    .end local v10    # "where":Leuh$a;
    .end local v11    # "orderByString":Ljava/lang/String;
    .end local v12    # "limitString":Ljava/lang/String;
    .end local v13    # "currentTable":Lcom/alibaba/android/searchengine/models/SearchTable;
    .end local v15    # "dbResult":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_15
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_6

    .line 222
    .end local v6    # "result":Lcom/alibaba/android/searchengine/models/IndexQueryTableResult;
    :cond_16
    const-string/jumbo v4, "search"

    const-string/jumbo v5, "search"

    const-string/jumbo v31, "search get result"

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v4, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;->End:Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;

    invoke-static {v4}, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b(Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils$MeasureType;)V

    goto/16 :goto_2

    .end local v16    # "duration":J
    .end local v18    # "end":I
    .end local v19    # "filterTableName":Ljava/lang/String;
    .end local v20    # "i":I
    .end local v21    # "indexResult":Lcom/alibaba/android/searchengine/models/IndexQueryResult;
    .end local v22    # "offset":I
    .end local v23    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v26    # "searchQuery":Lcom/alibaba/android/searchengine/models/IndexQuery;
    .end local v27    # "size":I
    .end local v28    # "start":I
    .end local v29    # "table":Lcom/alibaba/android/searchengine/models/SearchTable;
    .end local v30    # "tableCount":I
    :cond_17
    move-object v4, v5

    goto/16 :goto_4
.end method
