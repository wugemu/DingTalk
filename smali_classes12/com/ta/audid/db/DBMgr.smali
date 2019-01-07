.class public Lcom/ta/audid/db/DBMgr;
.super Ljava/lang/Object;
.source "DBMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DBMgr"


# instance fields
.field private mCheckdbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClsFieldsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClsTableNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDbName:Ljava/lang/String;

.field private mFieldNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/ta/audid/db/SqliteHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/audid/db/DBMgr;->mCheckdbMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/audid/db/DBMgr;->mClsFieldsMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/audid/db/DBMgr;->mFieldNameMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/audid/db/DBMgr;->mClsTableNameMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/ta/audid/db/SqliteHelper;

    invoke-direct {v0, p1, p2}, Lcom/ta/audid/db/SqliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    .line 36
    iput-object p2, p0, Lcom/ta/audid/db/DBMgr;->mDbName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 13
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/sqlite/SQLiteDatabase;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v9}, Lcom/ta/audid/db/SqliteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 377
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 378
    .local v4, "hasCheckdb":Ljava/lang/Boolean;
    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mCheckdbMap:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mCheckdbMap:Ljava/util/HashMap;

    invoke-virtual {v9, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    .line 379
    :cond_0
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 382
    :cond_1
    if-eqz p1, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_8

    .line 383
    invoke-direct {p0, p1}, Lcom/ta/audid/db/DBMgr;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 384
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v8, "updateColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " SELECT * FROM "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " LIMIT 0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    .line 387
    .local v6, "needCreate":Z
    const/4 v0, 0x0

    .line 388
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_6

    .line 390
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    if-nez v0, :cond_2

    .line 395
    const/4 v6, 0x1

    .line 397
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 398
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 399
    .local v2, "field":Ljava/lang/reflect/Field;
    const-string/jumbo v9, "_id"

    invoke-direct {p0, v2}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 400
    if-nez v6, :cond_3

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 401
    :cond_3
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 392
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    :catch_0
    move-exception v9

    const-string/jumbo v9, "DBMgr"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "has not create talbe:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-static {v9, v10}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    .restart local v5    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v9, v0}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 408
    .end local v5    # "i":I
    :cond_6
    if-eqz v6, :cond_9

    .line 409
    invoke-direct {p0, v1, p2, v8}, Lcom/ta/audid/db/DBMgr;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 413
    :cond_7
    :goto_2
    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mCheckdbMap:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v6    # "needCreate":Z
    .end local v7    # "sql":Ljava/lang/String;
    .end local v8    # "updateColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :cond_8
    return-object v1

    .line 410
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v6    # "needCreate":Z
    .restart local v7    # "sql":Ljava/lang/String;
    .restart local v8    # "updateColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 411
    invoke-direct {p0, v1, p2, v8}, Lcom/ta/audid/db/DBMgr;->updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "updateColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " INTEGER PRIMARY KEY AUTOINCREMENT ,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "createDbSql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 441
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 442
    if-eqz v4, :cond_0

    .line 443
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_0
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 446
    .local v5, "type":Ljava/lang/Class;
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-direct {p0, v6}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/ta/audid/db/DBMgr;->getSQLType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/ta/audid/db/DBMgr;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    .end local v4    # "i":I
    .end local v5    # "type":Ljava/lang/Class;
    :cond_1
    const-string/jumbo v6, " );"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "createSql":Ljava/lang/String;
    const-string/jumbo v6, "DBMgr"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "excute sql:"

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_1
    return-void

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DBMgr"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "create db error"

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getAllFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p1, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 547
    iget-object v4, p0, Lcom/ta/audid/db/DBMgr;->mClsFieldsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    iget-object v4, p0, Lcom/ta/audid/db/DBMgr;->mClsFieldsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 567
    :goto_0
    return-object v4

    .line 550
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 551
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz p1, :cond_4

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .restart local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 554
    .local v3, "selfFields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 555
    aget-object v0, v3, v2

    .line 556
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/ta/audid/db/annotation/Ingore;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_1

    .line 557
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v4

    if-nez v4, :cond_1

    .line 558
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 559
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    .line 563
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ta/audid/db/DBMgr;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    :cond_3
    iget-object v4, p0, Lcom/ta/audid/db/DBMgr;->mClsFieldsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "i":I
    .end local v3    # "selfFields":[Ljava/lang/reflect/Field;
    :cond_4
    move-object v4, v1

    .line 567
    goto :goto_0
.end method

.method private getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 571
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mFieldNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mFieldNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 582
    :goto_0
    return-object v2

    .line 575
    :cond_0
    const-class v2, Lcom/ta/audid/db/annotation/Column;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/audid/db/annotation/Column;

    .line 576
    .local v0, "column":Lcom/ta/audid/db/annotation/Column;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ta/audid/db/annotation/Column;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    invoke-interface {v0}, Lcom/ta/audid/db/annotation/Column;->value()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "ret":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mFieldNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 582
    goto :goto_0

    .line 579
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1
.end method

.method private getDefaultValue(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 587
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1

    .line 588
    :cond_0
    const-string/jumbo v0, "default 0"

    .line 590
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "default \"\""

    goto :goto_0
.end method

.method private getSQLType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1

    .line 461
    :cond_0
    const-string/jumbo v0, "INTEGER"

    .line 463
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "TEXT"

    goto :goto_0
.end method

.method private updateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "updateColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ALTER TABLE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ADD COLUMN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "updateDbSql":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 422
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-direct {p0, v5}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ta/audid/db/DBMgr;->getSQLType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "updateSql":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v8, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v5, "DBMgr"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "excute sql:"

    aput-object v7, v6, v9

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DBMgr"

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "update db error..."

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "updateSql":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 529
    :goto_0
    monitor-exit p0

    return-void

    .line 527
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "tablename":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/DBMgr;->clear(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    .end local v0    # "tablename":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear(Ljava/lang/String;)V
    .locals 4
    .param p1, "tablename"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 532
    monitor-enter p0

    if-nez p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 536
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v2}, Lcom/ta/audid/db/SqliteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 537
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 538
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v2, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 541
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "delete db data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized count(Ljava/lang/Class;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    const/4 v5, 0x0

    .line 468
    monitor-enter p0

    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    if-nez p1, :cond_0

    .line 492
    :goto_0
    monitor-exit p0

    return v5

    .line 472
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "tableName":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 474
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 475
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 477
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SELECT count(*) FROM "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_1

    .line 480
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 481
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 486
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v5, v1}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 487
    iget-object v5, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v5, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .end local v3    # "sql":Ljava/lang/String;
    :goto_1
    move v5, v0

    .line 492
    goto :goto_0

    .line 486
    :catch_0
    move-exception v5

    iget-object v5, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v5, v1}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 487
    iget-object v5, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v5, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 468
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 486
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "tableName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_3
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v1}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 487
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v5

    .line 490
    :cond_2
    const-string/jumbo v5, "DBMgr"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "db is null"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized count(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 10
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    const/4 v6, 0x0

    .line 496
    monitor-enter p0

    const/4 v0, 0x0

    .line 497
    .local v0, "count":I
    if-nez p1, :cond_0

    .line 520
    :goto_0
    monitor-exit p0

    return v6

    .line 500
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "tableName":Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 502
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 503
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 505
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SELECT count(*) FROM "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_1

    .line 508
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 514
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v1}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 515
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "sql":Ljava/lang/String;
    :goto_2
    move v6, v0

    .line 520
    goto :goto_0

    .line 505
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " WHERE "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    goto :goto_1

    .line 511
    :catch_0
    move-exception v3

    .line 512
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v6, "DBMgr"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 514
    :try_start_5
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v1}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 515
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 496
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 514
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "tableName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_6
    iget-object v7, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v7, v1}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 515
    iget-object v7, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v7, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6

    .line 518
    :cond_3
    const-string/jumbo v6, "DBMgr"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "db is null"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public delete(Lcom/ta/audid/db/Entity;)I
    .locals 2
    .param p1, "entity"    # Lcom/ta/audid/db/Entity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ta/audid/db/Entity;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/DBMgr;->delete(Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method public declared-synchronized delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    const/4 v3, 0x0

    .line 338
    monitor-enter p0

    const/4 v4, 0x0

    const/4 v5, 0x5

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "whereArgs"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "whereArgs"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    const/4 v2, 0x0

    .line 340
    .local v2, "ret":I
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p0, p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 342
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 353
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return v3

    .line 346
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 350
    :try_start_2
    iget-object v3, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v3, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_1
    move v3, v2

    .line 353
    goto :goto_0

    .line 347
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v3, "DBMgr"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    :try_start_4
    iget-object v3, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v3, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 338
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 350
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "ret":I
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v4, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v4, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized delete(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<+Lcom/ta/audid/db/Entity;>;"
    const/4 v7, 0x0

    .line 173
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 209
    :goto_0
    monitor-exit p0

    return v6

    .line 176
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/audid/db/Entity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "tableName":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/audid/db/Entity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_2

    .line 179
    const-string/jumbo v6, "DBMgr"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "db is null"

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v7

    .line 180
    goto :goto_0

    .line 184
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 186
    const-string/jumbo v7, "_id=?"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/audid/db/Entity;

    iget-wide v12, v6, Lcom/ta/audid/db/Entity;->_id:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-virtual {v0, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v4, v6

    .line 187
    .local v4, "ret":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 188
    const-string/jumbo v7, "DBMgr"

    const/4 v6, 0x6

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v9, "db"

    aput-object v9, v8, v6

    const/4 v6, 0x1

    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mDbName:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v9, "tableName"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    aput-object v3, v8, v6

    const/4 v6, 0x4

    const-string/jumbo v9, " delete failed _id"

    aput-object v9, v8, v6

    const/4 v9, 0x5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/audid/db/Entity;

    iget-wide v10, v6, Lcom/ta/audid/db/Entity;->_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_3
    const-string/jumbo v7, "DBMgr"

    const/4 v6, 0x6

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v9, "db "

    aput-object v9, v8, v6

    const/4 v6, 0x1

    iget-object v9, p0, Lcom/ta/audid/db/DBMgr;->mDbName:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v9, "tableName"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    aput-object v3, v8, v6

    const/4 v6, 0x4

    const-string/jumbo v9, "delete success _id"

    aput-object v9, v8, v6

    const/4 v9, 0x5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/audid/db/Entity;

    iget-wide v10, v6, Lcom/ta/audid/db/Entity;->_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/audid/db/Entity;

    const-wide/16 v8, -0x1

    iput-wide v8, v6, Lcom/ta/audid/db/Entity;->_id:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 194
    .end local v2    # "i":I
    .end local v4    # "ret":J
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v6, "DBMgr"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "db delete error:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    :goto_4
    :try_start_6
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    goto/16 :goto_0

    .line 198
    .restart local v2    # "i":I
    :cond_4
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 207
    :goto_7
    :try_start_9
    iget-object v6, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v6, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 173
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 197
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "tableName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    .line 198
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 203
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 207
    :goto_9
    :try_start_c
    iget-object v7, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v7, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .restart local v2    # "i":I
    :catch_1
    move-exception v6

    goto :goto_6

    :catch_2
    move-exception v6

    goto :goto_7

    .end local v2    # "i":I
    .restart local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v7

    goto :goto_8

    :catch_6
    move-exception v7

    goto :goto_9
.end method

.method public declared-synchronized execSQL(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p2, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 323
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 334
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :try_start_2
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v2, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 321
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 328
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v2, "DBMgr"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    :try_start_4
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v2, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v3, v0}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 22
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "orderby"    # Ljava/lang/String;
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/audid/db/Entity;>;"
    monitor-enter p0

    :try_start_0
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .local v6, "entities":Ljava/util/List;
    if-nez p1, :cond_0

    move-object v7, v6

    .line 96
    .end local v6    # "entities":Ljava/util/List;
    .local v7, "entities":Ljava/util/List;
    :goto_0
    monitor-exit p0

    return-object v7

    .line 44
    .end local v7    # "entities":Ljava/util/List;
    .restart local v6    # "entities":Ljava/util/List;
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    .line 46
    .local v15, "tablename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 47
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_1

    .line 48
    const-string/jumbo v17, "db is null"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .line 49
    .end local v6    # "entities":Ljava/util/List;
    .restart local v7    # "entities":Ljava/util/List;
    goto :goto_0

    .line 51
    .end local v7    # "entities":Ljava/util/List;
    .restart local v6    # "entities":Ljava/util/List;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "SELECT * FROM "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, ""

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, ""

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-gtz p4, :cond_5

    const-string/jumbo v17, ""

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, "sql":Ljava/lang/String;
    const-string/jumbo v17, "DBMgr"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "sql"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    .end local v6    # "entities":Ljava/util/List;
    .restart local v7    # "entities":Ljava/util/List;
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/ta/audid/db/DBMgr;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    .line 59
    .local v11, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :goto_4
    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 60
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ta/audid/db/Entity;

    .line 61
    .local v8, "entity":Lcom/ta/audid/db/Entity;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_c

    .line 62
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 63
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 65
    .local v10, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "columnName":Ljava/lang/String;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 67
    .local v13, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_b

    .line 68
    const-class v17, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_2

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-ne v10, v0, :cond_6

    .line 69
    :cond_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    .line 78
    :goto_6
    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v9, v8, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 51
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "columnName":Ljava/lang/String;
    .end local v7    # "entities":Ljava/util/List;
    .end local v8    # "entity":Lcom/ta/audid/db/Entity;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v12    # "i":I
    .end local v13    # "index":I
    .end local v14    # "sql":Ljava/lang/String;
    .restart local v6    # "entities":Ljava/util/List;
    :cond_3
    :try_start_5
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, " WHERE "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, " ORDER BY "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, " LIMIT "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v17

    goto/16 :goto_3

    .line 70
    .end local v6    # "entities":Ljava/util/List;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "columnName":Ljava/lang/String;
    .restart local v7    # "entities":Ljava/util/List;
    .restart local v8    # "entity":Lcom/ta/audid/db/Entity;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v12    # "i":I
    .restart local v13    # "index":I
    .restart local v14    # "sql":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_7

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 71
    :cond_7
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .local v16, "value":Ljava/lang/Integer;
    goto :goto_6

    .line 72
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_8
    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    if-eq v10, v0, :cond_9

    const-class v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    if-ne v10, v0, :cond_a

    .line 73
    :cond_9
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .local v16, "value":Ljava/lang/Double;
    goto/16 :goto_6

    .line 75
    .end local v16    # "value":Ljava/lang/Double;
    :cond_a
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    goto/16 :goto_6

    .line 83
    .end local v16    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v17, "DBMgr"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "can not get field: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    .line 89
    .end local v3    # "columnName":Ljava/lang/String;
    .end local v8    # "entity":Lcom/ta/audid/db/Entity;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v12    # "i":I
    .end local v13    # "index":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .line 90
    .end local v7    # "entities":Ljava/util/List;
    .local v5, "e":Ljava/lang/Throwable;
    .restart local v6    # "entities":Ljava/util/List;
    :goto_8
    :try_start_7
    const-string/jumbo v17, "DBMgr"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "[get]"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 92
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_9
    move-object v7, v6

    .line 96
    .end local v6    # "entities":Ljava/util/List;
    .restart local v7    # "entities":Ljava/util/List;
    goto/16 :goto_0

    .line 87
    .restart local v8    # "entity":Lcom/ta/audid/db/Entity;
    .restart local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v12    # "i":I
    :cond_c
    :try_start_9
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 92
    .end local v8    # "entity":Lcom/ta/audid/db/Entity;
    .end local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v12    # "i":I
    :catchall_0
    move-exception v17

    move-object v6, v7

    .end local v7    # "entities":Ljava/util/List;
    .restart local v6    # "entities":Ljava/util/List;
    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 40
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "entities":Ljava/util/List;
    .end local v14    # "sql":Ljava/lang/String;
    .end local v15    # "tablename":Ljava/lang/String;
    :catchall_1
    move-exception v17

    monitor-exit p0

    throw v17

    .line 92
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "entities":Ljava/util/List;
    .restart local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v14    # "sql":Ljava/lang/String;
    .restart local v15    # "tablename":Ljava/lang/String;
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/ta/audid/db/SqliteHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v6, v7

    .line 94
    .end local v7    # "entities":Ljava/util/List;
    .restart local v6    # "entities":Ljava/util/List;
    goto :goto_9

    .line 81
    .end local v6    # "entities":Ljava/util/List;
    .restart local v3    # "columnName":Ljava/lang/String;
    .restart local v7    # "entities":Ljava/util/List;
    .restart local v8    # "entity":Lcom/ta/audid/db/Entity;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "i":I
    .restart local v13    # "index":I
    :catch_1
    move-exception v17

    goto/16 :goto_7

    .line 92
    .end local v3    # "columnName":Ljava/lang/String;
    .end local v7    # "entities":Ljava/util/List;
    .end local v8    # "entity":Lcom/ta/audid/db/Entity;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v12    # "i":I
    .end local v13    # "index":I
    .restart local v6    # "entities":Ljava/util/List;
    :catchall_2
    move-exception v17

    goto :goto_a

    .line 89
    :catch_2
    move-exception v5

    goto :goto_8
.end method

.method public getTablename(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 358
    const/4 v2, 0x0

    .line 371
    :goto_0
    return-object v2

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mClsTableNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mClsTableNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 363
    :cond_1
    const-class v2, Lcom/ta/audid/db/annotation/TableName;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/ta/audid/db/annotation/TableName;

    .line 365
    .local v1, "tableName":Lcom/ta/audid/db/annotation/TableName;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/ta/audid/db/annotation/TableName;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    invoke-interface {v1}, Lcom/ta/audid/db/annotation/TableName;->value()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "ret":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/ta/audid/db/DBMgr;->mClsTableNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 371
    goto :goto_0

    .line 368
    .end local v0    # "ret":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1
.end method

.method public insert(Lcom/ta/audid/db/Entity;)V
    .locals 2
    .param p1, "entity"    # Lcom/ta/audid/db/Entity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v0, "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ta/audid/db/Entity;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/DBMgr;->insert(Ljava/util/List;)V

    .line 105
    .end local v0    # "entitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ta/audid/db/Entity;>;"
    :cond_0
    return-void
.end method

.method public declared-synchronized insert(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<+Lcom/ta/audid/db/Entity;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_1

    .line 168
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ta/audid/db/Entity;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "tableName":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ta/audid/db/Entity;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 113
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_2

    .line 114
    const-string/jumbo v15, "DBMgr"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "can not get available db"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 118
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "tableName":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ta/audid/db/Entity;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/audid/db/DBMgr;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 119
    .local v6, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v14, "values":Landroid/content/ContentValues;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_7

    .line 122
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ta/audid/db/Entity;

    .line 123
    .local v4, "entity":Lcom/ta/audid/db/Entity;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 124
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 125
    .local v5, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    .line 127
    .local v9, "name":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 128
    .local v13, "value":Ljava/lang/Object;
    if-eqz v13, :cond_3

    .line 129
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v13    # "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 131
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v15, ""

    invoke-virtual {v14, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 134
    .end local v13    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v15, "DBMgr"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "get field failed"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 154
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "entity":Lcom/ta/audid/db/Entity;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v15, "DBMgr"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 167
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v15, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 139
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "entity":Lcom/ta/audid/db/Entity;
    .restart local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_9
    iget-wide v0, v4, Lcom/ta/audid/db/Entity;->_id:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v15, v16, v18

    if-nez v15, :cond_6

    .line 140
    const-string/jumbo v15, "_id"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 141
    const/4 v15, 0x0

    invoke-virtual {v2, v12, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 142
    .local v10, "ret":J
    const-wide/16 v16, -0x1

    cmp-long v15, v10, v16

    if-eqz v15, :cond_5

    .line 143
    iput-wide v10, v4, Lcom/ta/audid/db/Entity;->_id:J

    .line 144
    const-string/jumbo v15, "DBMgr"

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "mDbName"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mDbName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string/jumbo v18, "tablename"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    aput-object v12, v16, v17

    const/16 v17, 0x4

    const-string/jumbo v18, "insert:success"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :goto_6
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 146
    :cond_5
    const-string/jumbo v15, "DBMgr"

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "mDbName"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mDbName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string/jumbo v18, "tablename"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    aput-object v12, v16, v17

    const/16 v17, 0x4

    const-string/jumbo v18, "insert:error"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 157
    .end local v4    # "entity":Lcom/ta/audid/db/Entity;
    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "ret":J
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v15

    .line 158
    :try_start_a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 163
    :goto_7
    :try_start_b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 167
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 149
    .restart local v4    # "entity":Lcom/ta/audid/db/Entity;
    .restart local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_d
    const-string/jumbo v15, "_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-wide v0, v4, Lcom/ta/audid/db/Entity;->_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v12, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    int-to-long v10, v15

    .line 150
    .restart local v10    # "ret":J
    const-string/jumbo v15, "DBMgr"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "db update :"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_6

    .line 158
    .end local v4    # "entity":Lcom/ta/audid/db/Entity;
    .end local v8    # "j":I
    .end local v10    # "ret":J
    :cond_7
    :try_start_e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 163
    :goto_9
    :try_start_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 167
    :goto_a
    :try_start_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v15, v2}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v15

    goto :goto_9

    :catch_3
    move-exception v15

    goto :goto_a

    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v7    # "i":I
    .end local v14    # "values":Landroid/content/ContentValues;
    .restart local v3    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v15

    goto/16 :goto_4

    :catch_5
    move-exception v15

    goto/16 :goto_5

    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v16

    goto :goto_7

    :catch_7
    move-exception v16

    goto :goto_8
.end method

.method public update(Lcom/ta/audid/db/Entity;)V
    .locals 2
    .param p1, "entity"    # Lcom/ta/audid/db/Entity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ta/audid/db/Entity;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0, v0}, Lcom/ta/audid/db/DBMgr;->update(Ljava/util/List;)V

    .line 223
    return-void
.end method

.method public declared-synchronized update(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<+Lcom/ta/audid/db/Entity;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_1
    const/4 v10, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ta/audid/db/Entity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, "tableName":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ta/audid/db/Entity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 231
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_2

    .line 232
    const-string/jumbo v10, "DBMgr"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "[update] db is null"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 237
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "tableName":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 238
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ta/audid/db/Entity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/audid/db/DBMgr;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 239
    .local v6, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_4

    .line 240
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v2, "contentValues":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 242
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 245
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 241
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 246
    :catch_0
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v10, ""

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v4, v11}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v7    # "i":I
    .end local v8    # "j":I
    :catch_1
    move-exception v10

    .line 256
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v10, v3}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 250
    .restart local v2    # "contentValues":Landroid/content/ContentValues;
    .restart local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    :cond_3
    :try_start_8
    const-string/jumbo v11, "_id=?"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ta/audid/db/Entity;

    iget-wide v0, v10, Lcom/ta/audid/db/Entity;->_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v13

    invoke-virtual {v3, v9, v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 256
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v8    # "j":I
    :cond_4
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 261
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 265
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v10, v3}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 257
    :catch_2
    move-exception v4

    .line 258
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DBMgr"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "setTransactionSuccessful"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 262
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 263
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DBMgr"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "endTransaction"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 257
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v7    # "i":I
    :catch_4
    move-exception v4

    .line 258
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DBMgr"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "setTransactionSuccessful"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 262
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 263
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "DBMgr"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "endTransaction"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_5

    .line 255
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    .line 256
    :try_start_c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 261
    :goto_8
    :try_start_d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 265
    :goto_9
    :try_start_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v11, v3}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v10

    .line 257
    :catch_6
    move-exception v4

    .line 258
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "setTransactionSuccessful"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 262
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 263
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "endTransaction"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_9
.end method

.method public declared-synchronized updateLogPriority(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ta/audid/db/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<+Lcom/ta/audid/db/Entity;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_1
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ta/audid/db/Entity;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ta/audid/db/DBMgr;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "tableName":Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ta/audid/db/Entity;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/ta/audid/db/DBMgr;->checkTableAvailable(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 278
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_2

    .line 279
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[update] db is null"

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "tableName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 284
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "tableName":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 285
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ta/audid/db/Entity;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ta/audid/db/DBMgr;->getAllFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 286
    .local v7, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 287
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v2, "contentValues":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 289
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 290
    .local v5, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/audid/db/DBMgr;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "fieldName":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string/jumbo v11, "priority"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v11

    if-eqz v11, :cond_4

    .line 293
    const/4 v11, 0x1

    :try_start_3
    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 294
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v12, "_id=?"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ta/audid/db/Entity;

    iget-wide v0, v11, Lcom/ta/audid/db/Entity;->_id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v14

    invoke-virtual {v3, v10, v2, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 297
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "fieldName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 298
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v11, ""

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v4, v12}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 288
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 307
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v9    # "j":I
    :cond_5
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 312
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 316
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v11, v3}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 308
    :catch_1
    move-exception v4

    .line 309
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "setTransactionSuccessful"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 313
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 314
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "endTransaction"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v8    # "i":I
    :catch_3
    move-exception v11

    .line 307
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 312
    :goto_5
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 316
    :goto_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v11, v3}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 308
    :catch_4
    move-exception v4

    .line 309
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "setTransactionSuccessful"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 313
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 314
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "DBMgr"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "endTransaction"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 306
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    .line 307
    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 312
    :goto_7
    :try_start_c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 316
    :goto_8
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/audid/db/DBMgr;->mHelper:Lcom/ta/audid/db/SqliteHelper;

    invoke-virtual {v12, v3}, Lcom/ta/audid/db/SqliteHelper;->closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v11

    .line 308
    :catch_6
    move-exception v4

    .line 309
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "DBMgr"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "setTransactionSuccessful"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-static {v12, v13}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 313
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 314
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "DBMgr"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "endTransaction"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    invoke-static {v12, v13}, Lcom/ta/audid/utils/UtdidLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8
.end method
