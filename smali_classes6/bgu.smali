.class public Lbgu;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceDingImpl.java"

# interfaces
.implements Lbgp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgu$a;,
        Lbgu$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v2, Lbgu;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lbgu;->a:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/alibaba/android/ding/db/entry/EntryDing;->ALL_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 62
    const-string/jumbo v2, "tbdinglist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v2, Lcom/alibaba/android/ding/db/entry/EntryDing;->ALL_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->ALL_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 68
    const-string/jumbo v2, "tbdingcontent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v2, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->ALL_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v2, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->ALL_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 72
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    const-string/jumbo v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v2, " tbdinglist inner join tbdingcontent ON tbdinglist.dingId=tbdingcontent.dingId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lbgu;->b:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic a(Lbgu;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lbgu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/ContentValues;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1374
    const/4 v8, 0x0

    .line 1376
    .local v8, "ret":I
    :try_start_0
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDing;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1380
    :goto_0
    return v8

    .line 1377
    :catch_0
    move-exception v7

    .line 1378
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "update failed"

    invoke-static {v0, v7}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "whereStatement"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1249
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "SELECT count(*) FROM  tbdinglist inner join tbdingcontent ON tbdinglist.dingId=tbdingcontent.dingId"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v6, " WHERE "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1252
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1254
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v4, v5, v6, v3, p2}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1255
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1256
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1261
    :cond_0
    if-eqz v1, :cond_1

    .line 1262
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1265
    :cond_1
    :goto_0
    return v0

    .line 1258
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v4, "query dings count failed"

    invoke-static {v4, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    if-eqz v1, :cond_1

    .line 1262
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1261
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 1262
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method static synthetic a(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private a(IIZZ)Ljava/util/List;
    .locals 16
    .param p1, "num"    # I
    .param p2, "finishStatus"    # I
    .param p3, "beforeEndOfToday"    # Z
    .param p4, "onlyDeadline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 291
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v11, "wheres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v10, "whereString":Ljava/lang/StringBuilder;
    const-string/jumbo v12, " WHERE "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo v12, "dingOperationStatus"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v12, "=?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    sget-object v12, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v12}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const-string/jumbo v12, " AND ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v12, "biz_type"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v12, "=?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v12, "1"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string/jumbo v12, " OR "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v12, "biz_type"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v12, "=?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v12, "3"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const-string/jumbo v12, ") "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 320
    const-string/jumbo v12, " AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v12, "finishStatus"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v12, "=? "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v12, " AND "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v12, "selfFinishStatus"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string/jumbo v12, "=? "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v12, "1"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const-string/jumbo v12, "1"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v7, v12, [Ljava/lang/String;

    .line 376
    .local v7, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 377
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v7, v5

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 332
    .end local v5    # "i":I
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 334
    const-string/jumbo v12, " AND ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v12, "finishStatus"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v12, "=? "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string/jumbo v12, " OR "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string/jumbo v12, "selfFinishStatus"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string/jumbo v12, "=? )"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v12, "2"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    const-string/jumbo v12, "2"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .restart local v5    # "i":I
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    :cond_2
    new-instance v9, Lbgu$b;

    invoke-direct {v9}, Lbgu$b;-><init>()V

    .line 381
    .local v9, "whereStatement":Lbgu$b;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lbgu$b;->a:Ljava/lang/String;

    .line 382
    iput-object v7, v9, Lbgu$b;->b:[Ljava/lang/String;

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v6, "selectString":Ljava/lang/StringBuilder;
    sget-object v12, Lbgu;->b:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lbgu$b;->a()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 388
    const-string/jumbo v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v12, v9, Lbgu$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v12, v9, Lbgu$b;->b:[Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 391
    iget-object v12, v9, Lbgu$b;->b:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    :cond_3
    const-string/jumbo v12, " ORDER BY "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string/jumbo v12, "tbdinglist"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v12, "."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string/jumbo v12, "deadline"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    sget-object v12, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v3, "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v8, 0x0

    .line 412
    .local v8, "whereArgs1":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 413
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 414
    const/4 v5, 0x0

    :goto_2
    array-length v12, v8

    if-ge v5, v12, :cond_4

    .line 415
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v8, v5

    .line 414
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 419
    :cond_4
    const/4 v2, 0x0

    .line 421
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v13

    const-class v14, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 425
    :goto_3
    invoke-static {v2, v3}, Lbgu;->a(Landroid/database/Cursor;Ljava/util/Collection;)V

    .line 426
    return-object v3

    .line 422
    :catch_0
    move-exception v4

    .line 423
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "queryTaskTopDings failed"

    invoke-static {v12, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private a(Lbgu$b;Lbgu$a;IILcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;)Ljava/util/List;
    .locals 11
    .param p1, "whereStatement"    # Lbgu$b;
    .param p2, "anchor"    # Lbgu$a;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .param p5, "order"    # Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbgu$b;",
            "Lbgu$a;",
            "II",
            "Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1272
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1273
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v7, Lbgu;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbgu$b;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1278
    const-string/jumbo v7, " "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1279
    iget-object v7, p1, Lbgu$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1281
    iget-object v7, p1, Lbgu$b;->b:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1282
    iget-object v7, p1, Lbgu$b;->b:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1286
    :cond_0
    if-eqz p2, :cond_2

    .line 3584
    iget-object v7, p2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    .line 1286
    :goto_0
    if-eqz v7, :cond_2

    .line 1288
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbgu$b;->a()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1289
    :cond_1
    const-string/jumbo v7, " WHERE "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1294
    :goto_1
    iget-object v7, p2, Lbgu$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v7, :cond_8

    .line 1295
    const-string/jumbo v7, "tbdinglist"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1296
    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1297
    const-string/jumbo v7, "dingCreatedAt"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1299
    iget-boolean v7, p2, Lbgu$a;->c:Z

    if-eqz v7, :cond_7

    .line 1300
    const-string/jumbo v7, "<=?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1305
    :goto_2
    iget-object v7, p2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    const-string/jumbo v7, " AND "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1308
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "tbdinglist"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "."

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "dingId"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1309
    const-string/jumbo v7, "<>?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1310
    iget-object v7, p2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1329
    :cond_2
    :goto_3
    if-eqz p5, :cond_3

    .line 1330
    const-string/jumbo v7, " ORDER BY "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1331
    const-string/jumbo v7, "tbdinglist"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1332
    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1333
    const-string/jumbo v7, "dingCreatedAt"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1334
    const-string/jumbo v7, " "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1335
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1338
    :cond_3
    if-lez p4, :cond_4

    .line 1339
    const-string/jumbo v7, " LIMIT ?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1340
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    if-lez p3, :cond_4

    .line 1342
    const-string/jumbo v7, " OFFSET ?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1343
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v3, "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v6, 0x0

    .line 1351
    .local v6, "whereArgs":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 1353
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 1354
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v5

    .line 1353
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3584
    .end local v3    # "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v5    # "i":I
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1291
    :cond_6
    const-string/jumbo v7, " AND "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 1302
    :cond_7
    const-string/jumbo v7, ">=?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_2

    .line 1313
    :cond_8
    const-string/jumbo v7, "tbdinglist"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1314
    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1315
    const-string/jumbo v7, "dingCreatedAt"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1316
    const-string/jumbo v7, "<=?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1317
    iget-object v7, p2, Lbgu$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    const-string/jumbo v7, " AND "

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1321
    const-string/jumbo v7, "tbdinglist"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1322
    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1323
    const-string/jumbo v7, "dingCreatedAt"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1324
    const-string/jumbo v7, ">=?"

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1325
    iget-object v7, p2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1358
    .restart local v3    # "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    .line 1360
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1365
    :goto_5
    invoke-static {v2, v3}, Lbgu;->a(Landroid/database/Cursor;Ljava/util/Collection;)V

    .line 1367
    return-object v3

    .line 1361
    :catch_0
    move-exception v4

    .line 1362
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "query dings failed"

    invoke-static {v7, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private a(Ljava/util/Collection;II)Ljava/util/List;
    .locals 10
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 461
    const/16 v0, 0x1f4

    if-le p3, v0, :cond_1

    .line 462
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "query too many entries for one query."

    aput-object v4, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    return-object v2

    .line 466
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 469
    .local v8, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 470
    const-string/jumbo v0, "tbdinglist"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 471
    const-string/jumbo v0, "."

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 472
    const-string/jumbo v0, "senderId"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 473
    const-string/jumbo v0, " IN ("

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 475
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 477
    .local v9, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 478
    .local v6, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 479
    .local v7, "mid":Ljava/lang/String;
    aput-object v7, v9, v6

    .line 481
    if-eqz v6, :cond_2

    .line 482
    const-string/jumbo v3, ","

    invoke-virtual {v8, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 485
    :cond_2
    const-string/jumbo v3, "?"

    invoke-virtual {v8, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 486
    add-int/lit8 v6, v6, 0x1

    .line 487
    goto :goto_1

    .line 489
    .end local v7    # "mid":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, ")"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 491
    new-instance v1, Lbgu$b;

    invoke-direct {v1}, Lbgu$b;-><init>()V

    .line 492
    .local v1, "whereStatement":Lbgu$b;
    iput-object v9, v1, Lbgu$b;->b:[Ljava/lang/String;

    .line 493
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbgu$b;->a:Ljava/lang/String;

    .line 494
    sget-object v5, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbgu;->a(Lbgu$b;Lbgu$a;IILcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;Ljava/util/Collection;)V
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1510
    .local p1, "dings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-nez p0, :cond_1

    .line 1558
    :cond_0
    return-void

    .line 1514
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/alibaba/android/ding/db/entry/EntryDing;Lcom/alibaba/android/ding/db/entry/EntryDingContent;>;>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1517
    new-instance v5, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-direct {v5}, Lcom/alibaba/android/ding/db/entry/EntryDing;-><init>()V

    .line 1518
    .local v5, "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    invoke-virtual {v5, p0}, Lcom/alibaba/android/ding/db/entry/EntryDing;->fillWithCursor(Landroid/database/Cursor;)V

    .line 1520
    new-instance v4, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    invoke-direct {v4}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;-><init>()V

    .line 1521
    .local v4, "entryContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    invoke-virtual {v4, p0}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->fillWithCursor(Landroid/database/Cursor;)V

    .line 1523
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1525
    .end local v4    # "entryContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .end local v5    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    :catch_0
    move-exception v1

    .line 1526
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v8, "parse entryDing from cursor failed"

    invoke-static {v8, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1531
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1532
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/alibaba/android/ding/db/entry/EntryDing;Lcom/alibaba/android/ding/db/entry/EntryDingContent;>;"
    if-eqz v3, :cond_2

    .line 1536
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/ding/db/entry/EntryDing;

    .line 1537
    .restart local v5    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    .line 1539
    .local v6, "entryDingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 1543
    iget v7, v5, Lcom/alibaba/android/ding/db/entry/EntryDing;->identity:I

    .line 1544
    .local v7, "identity":I
    const/4 v0, 0x0

    .line 1546
    .local v0, "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 1547
    invoke-virtual {v5}, Lcom/alibaba/android/ding/db/entry/EntryDing;->toObjectDingSent()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    .line 1553
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 1554
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->aa()Ljava/util/Map;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/alibaba/android/ding/db/entry/EntryDingContent;->fromEntryDingContent(Lcom/alibaba/android/ding/db/entry/EntryDingContent;Ljava/util/Map;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingContent;)V

    .line 1555
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1528
    .end local v0    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/alibaba/android/ding/db/entry/EntryDing;Lcom/alibaba/android/ding/db/entry/EntryDingContent;>;"
    .end local v5    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .end local v6    # "entryDingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .end local v7    # "identity":I
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v8

    .line 1548
    .restart local v0    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .restart local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/alibaba/android/ding/db/entry/EntryDing;Lcom/alibaba/android/ding/db/entry/EntryDingContent;>;"
    .restart local v5    # "entryDing":Lcom/alibaba/android/ding/db/entry/EntryDing;
    .restart local v6    # "entryDingContent":Lcom/alibaba/android/ding/db/entry/EntryDingContent;
    .restart local v7    # "identity":I
    :cond_5
    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v9

    if-ne v9, v7, :cond_6

    .line 1549
    invoke-virtual {v5}, Lcom/alibaba/android/ding/db/entry/EntryDing;->toObjectDingReceived()Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    move-result-object v0

    goto :goto_3

    .line 1550
    :cond_6
    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v9

    if-ne v9, v7, :cond_3

    .line 1551
    invoke-virtual {v5}, Lcom/alibaba/android/ding/db/entry/EntryDing;->toObjectDingMySelf()Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic b(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic c(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic d(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic e(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic f(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic g(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic h(Lbgu;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgu;

    .prologue
    .line 42
    iget-object v0, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic i(Lbgu;)V
    .locals 6
    .param p0, "x0"    # Lbgu;

    .prologue
    const/4 v1, 0x0

    .line 42
    .line 4457
    invoke-static {}, Lbju;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4463
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "select * from "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "tbdingcontent"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4464
    iget-object v2, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4465
    if-eqz v1, :cond_0

    const-string/jumbo v0, "msgType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 4467
    const-string/jumbo v0, "sp_update_clear_ding_cache"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4472
    :cond_0
    if-eqz v1, :cond_1

    .line 4473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    .line 4469
    :catch_0
    move-exception v0

    .line 4470
    :try_start_1
    const-string/jumbo v2, "markShouldClearIfNecessary failed"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4472
    if-eqz v1, :cond_1

    .line 4473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4472
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 4473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private n()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lbgu;->b:Ljava/lang/String;

    aput-object v6, v5, v8

    const-string/jumbo v6, " WHERE "

    aput-object v6, v5, v9

    const-string/jumbo v6, "tbdinglist"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    const-string/jumbo v7, "."

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "dingOperationStatus"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "=? AND "

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "tbdinglist"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "."

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "biz_type"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "=? "

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "sql":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 270
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "2"

    .line 271
    aput-object v5, v4, v9

    .line 274
    .local v4, "wheres":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 276
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    invoke-static {v0, v2}, Lbgu;->a(Landroid/database/Cursor;Ljava/util/Collection;)V

    .line 281
    return-object v2

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "query meeting dings failed"

    invoke-static {v5, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 8
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 935
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    const-string/jumbo v1, "notifyCommentCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=? AND "

    aput-object v3, v2, v6

    const-string/jumbo v3, "biz_type"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string/jumbo v4, "=? "

    aput-object v4, v2, v3

    .line 940
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 947
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "0"

    .line 948
    aput-object v4, v3, v6

    .line 938
    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final a(JI)I
    .locals 7
    .param p1, "dingId"    # J
    .param p3, "finishStatus"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1157
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "finishStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingId"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=?"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final a(JIJ)I
    .locals 6
    .param p1, "dingId"    # J
    .param p3, "finishStatus"    # I
    .param p4, "finishTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1163
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1164
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "finishStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    const-string/jumbo v1, "finishTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1166
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingId"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=?"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final a(JLjava/util/Map;)I
    .locals 7
    .param p1, "dingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1171
    if-eqz p3, :cond_0

    .line 1172
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1173
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "biz_extension"

    invoke-static {p3}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1176
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 6
    .param p1, "senderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 431
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tbdinglist"

    aput-object v2, v1, v4

    const-string/jumbo v2, "."

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "senderId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "=? "

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "whereStatement":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1}, Lbgu;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "unconfirmedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 694
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 695
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "unConfirmedCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=? AND "

    aput-object v4, v3, v6

    const-string/jumbo v4, "unConfirmedCount"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const-string/jumbo v5, ">?"

    aput-object v5, v3, v4

    .line 698
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 699
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 697
    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 702
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;J)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "deadline"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1146
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "deadline"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1151
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 665
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "confirmedType"

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 671
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 708
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 709
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "dingStatus"

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 715
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 900
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 901
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string/jumbo v2, "tbdingcontent"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 904
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "attachmentObjects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 910
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 911
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 912
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "dingAttachments"

    invoke-static {p2}, Lbjp;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 915
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 802
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 803
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "receiverUids"

    invoke-static {p2}, Lbjp;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 807
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 837
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 838
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "newCommentCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string/jumbo v2, "notifyCommentCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    if-eqz p2, :cond_0

    .line 841
    const-string/jumbo v2, "dingExtension"

    invoke-static {p2}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_0
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 846
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    return v1
.end method

.method public final a(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 720
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "focusStatus"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 724
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 726
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1389
    .local p1, "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1391
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1393
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1394
    .local v1, "tmpDings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1396
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1398
    iget-object v2, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbgu$6;

    invoke-direct {v4, p0, v1, v0}, Lbgu$6;-><init>(Lbgu;Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 1453
    .end local v1    # "tmpDings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    return v2
.end method

.method public final a(Ljava/util/List;I)I
    .locals 5
    .param p2, "operationStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1109
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1110
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgu$3;

    invoke-direct {v3, p0, p1, p2}, Lbgu$3;-><init>(Lbgu;Ljava/util/List;I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 1127
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final a(ILcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)Ljava/util/List;
    .locals 13
    .param p1, "index"    # I
    .param p2, "dingOperationStatus"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 110
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 111
    .local v6, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v9, " WHERE "

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 112
    const-string/jumbo v9, "tbdinglist"

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 113
    const-string/jumbo v9, "."

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 114
    const-string/jumbo v9, "dingOperationStatus"

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 115
    const-string/jumbo v9, "=? "

    invoke-virtual {v6, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 116
    new-instance v8, Lbgu$b;

    invoke-direct {v8}, Lbgu$b;-><init>()V

    .line 117
    .local v8, "whereStatement":Lbgu$b;
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lbgu$b;->a:Ljava/lang/String;

    .line 118
    new-array v9, v12, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    iput-object v9, v8, Lbgu$b;->b:[Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 121
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v9, Lbgu;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lbgu$b;->a()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    const-string/jumbo v9, " "

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 125
    iget-object v9, v8, Lbgu$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 126
    iget-object v9, v8, Lbgu$b;->b:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    :cond_0
    const-string/jumbo v9, " ORDER BY "

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 130
    const-string/jumbo v9, "tbdinglist"

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 131
    const-string/jumbo v9, "."

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 132
    const-string/jumbo v9, "dingCreatedAt"

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 133
    const-string/jumbo v9, " "

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 134
    sget-object v9, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 136
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, " LIMIT ("

    aput-object v10, v9, v11

    const-string/jumbo v10, "SELECT count(*) FROM  tbdinglist inner join tbdingcontent ON tbdinglist.dingId=tbdingcontent.dingId"

    aput-object v10, v9, v12

    const/4 v10, 0x2

    const-string/jumbo v11, ") "

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 137
    const-string/jumbo v9, " OFFSET ?"

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 138
    const-string/jumbo v9, "999"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v7, 0x0

    .line 142
    .local v7, "whereArgs":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 144
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v7

    if-ge v5, v9, :cond_1

    .line 145
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v5

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v5    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 151
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v9, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12, v7}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    :goto_1
    invoke-static {v2, v3}, Lbgu;->a(Landroid/database/Cursor;Ljava/util/Collection;)V

    .line 156
    return-object v3

    .line 152
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "query dings should be clear failed"

    invoke-static {v9, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)Ljava/util/List;
    .locals 7
    .param p1, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "pageSize"    # I
    .param p3, "isBackwards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 219
    .local v6, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 222
    const-string/jumbo v0, "tbdinglist"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 223
    const-string/jumbo v0, "."

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 224
    const-string/jumbo v0, "dingOperationStatus"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 225
    const-string/jumbo v0, "=? "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 227
    new-instance v1, Lbgu$b;

    invoke-direct {v1}, Lbgu$b;-><init>()V

    .line 228
    .local v1, "whereStatement":Lbgu$b;
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbgu$b;->a:Ljava/lang/String;

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, v1, Lbgu$b;->b:[Ljava/lang/String;

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "queryAnchor":Lbgu$a;
    if-eqz p1, :cond_0

    .line 233
    new-instance v2, Lbgu$a;

    .end local v2    # "queryAnchor":Lbgu$a;
    invoke-direct {v2}, Lbgu$a;-><init>()V

    .line 234
    .restart local v2    # "queryAnchor":Lbgu$a;
    iput-object p1, v2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 235
    iput-boolean p3, v2, Lbgu$a;->c:Z

    .line 237
    :cond_0
    sget-object v5, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lbgu;->a(Lbgu$b;Lbgu$a;IILcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/util/List;
    .locals 10
    .param p1, "first"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "last"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 162
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 166
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 167
    .local v6, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 170
    const-string/jumbo v0, "tbdinglist"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 171
    const-string/jumbo v0, "."

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 172
    const-string/jumbo v0, "dingOperationStatus"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 173
    const-string/jumbo v0, "=? "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 175
    new-instance v1, Lbgu$b;

    invoke-direct {v1}, Lbgu$b;-><init>()V

    .line 176
    .local v1, "whereStatement":Lbgu$b;
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbgu$b;->a:Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, v1, Lbgu$b;->b:[Ljava/lang/String;

    .line 179
    new-instance v2, Lbgu$a;

    invoke-direct {v2}, Lbgu$a;-><init>()V

    .line 181
    .local v2, "queryAnchor":Lbgu$a;
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    .line 182
    iput-object p2, v2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 183
    iput-object p1, v2, Lbgu$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 189
    :goto_1
    sget-object v5, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lbgu;->a(Lbgu$b;Lbgu$a;IILcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_2
    iput-object p2, v2, Lbgu$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 186
    iput-object p1, v2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_1
.end method

.method public final a(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v6, 0x1f4

    .line 438
    if-gt p3, v6, :cond_1

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lbgu;->a(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v3

    .line 456
    :cond_0
    :goto_0
    return-object v3

    .line 442
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    div-int/lit16 v5, p3, 0x1f4

    rem-int/lit16 v4, p3, 0x1f4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    add-int v0, v5, v4

    .line 445
    .local v0, "groupNum":I
    const/4 v2, 0x0

    .line 446
    .local v2, "i":I
    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_4

    .line 447
    mul-int/lit16 v4, v2, 0x1f4

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v4, v6}, Lbgu;->a(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v1

    .line 448
    .local v1, "groupRet":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v1, :cond_2

    .line 449
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 446
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 444
    .end local v0    # "groupNum":I
    .end local v1    # "groupRet":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v2    # "i":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 452
    .restart local v0    # "groupNum":I
    .restart local v2    # "i":I
    :cond_4
    mul-int/lit16 v4, v2, 0x1f4

    add-int/2addr v4, p2

    mul-int/lit16 v5, v2, 0x1f4

    sub-int v5, p3, v5

    invoke-direct {p0, p1, v4, v5}, Lbgu;->a(Ljava/util/Collection;II)Ljava/util/List;

    move-result-object v1

    .line 453
    .restart local v1    # "groupRet":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/ding/db/entry/EntryDing;

    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->createTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    :try_start_1
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/ding/db/entry/EntryDingContent;

    const-string/jumbo v4, "tbdingcontent"

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->createTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_1
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "create ding table failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "create content table failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 2244
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tbdinglist"

    aput-object v2, v1, v4

    const-string/jumbo v2, "."

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "=? "

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2245
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-direct {p0, v1, v2}, Lbgu;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 105
    return v0
.end method

.method public final b(I)I
    .locals 9
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 954
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 955
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string/jumbo v1, "notifyCommentCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=? AND ("

    aput-object v3, v2, v6

    const-string/jumbo v3, "biz_type"

    aput-object v3, v2, v7

    const-string/jumbo v3, "=?  OR "

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string/jumbo v4, "biz_type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "=? ) "

    aput-object v4, v2, v3

    .line 959
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 969
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "1"

    .line 970
    aput-object v4, v3, v6

    const-string/jumbo v4, "3"

    .line 971
    aput-object v4, v3, v7

    .line 957
    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final b(JI)I
    .locals 7
    .param p1, "dingId"    # J
    .param p3, "finishStatus"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "selfFinishStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingId"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=?"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final b(JIJ)I
    .locals 6
    .param p1, "dingId"    # J
    .param p3, "selfFinishStatus"    # I
    .param p4, "selfFinishTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "selfFinishStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1190
    const-string/jumbo v1, "d_self_finish_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1191
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingId"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=?"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final b(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 733
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "totalCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 737
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final b(Ljava/lang/String;J)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newCommentCount"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 825
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 826
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "newCommentCount"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 827
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 830
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "ccUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 814
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "dCCUids"

    invoke-static {p2}, Lbjp;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 818
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 865
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 866
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "notifyCommentCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    if-eqz p2, :cond_0

    .line 868
    const-string/jumbo v2, "dingExtension"

    invoke-static {p2}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 873
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    return v1
.end method

.method public final b(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1199
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1201
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1202
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgu$4;

    invoke-direct {v3, p0, p1, v0}, Lbgu$4;-><init>(Lbgu;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 1218
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)Ljava/util/List;
    .locals 7
    .param p1, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "pageSize"    # I
    .param p3, "isBackwards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 195
    .local v6, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 198
    const-string/jumbo v0, "tbdinglist"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 199
    const-string/jumbo v0, "."

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 200
    const-string/jumbo v0, "dingOperationStatus"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 201
    const-string/jumbo v0, "=? "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 203
    new-instance v1, Lbgu$b;

    invoke-direct {v1}, Lbgu$b;-><init>()V

    .line 204
    .local v1, "whereStatement":Lbgu$b;
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbgu$b;->a:Ljava/lang/String;

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, v1, Lbgu$b;->b:[Ljava/lang/String;

    .line 207
    const/4 v2, 0x0

    .line 208
    .local v2, "queryAnchor":Lbgu$a;
    if-eqz p1, :cond_0

    .line 209
    new-instance v2, Lbgu$a;

    .end local v2    # "queryAnchor":Lbgu$a;
    invoke-direct {v2}, Lbgu$a;-><init>()V

    .line 210
    .restart local v2    # "queryAnchor":Lbgu$a;
    iput-object p1, v2, Lbgu$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 211
    iput-boolean p3, v2, Lbgu$a;->c:Z

    .line 213
    :cond_0
    sget-object v5, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lbgu;->a(Lbgu$b;Lbgu$a;IILcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;II)Ljava/util/List;
    .locals 10
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 503
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 506
    .local v8, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 507
    const-string/jumbo v0, "tbdinglist"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 508
    const-string/jumbo v0, "."

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 509
    const-string/jumbo v0, "dingId"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 510
    const-string/jumbo v0, " IN ("

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 512
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 514
    .local v9, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 515
    .local v6, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 516
    .local v7, "mid":Ljava/lang/String;
    aput-object v7, v9, v6

    .line 518
    if-eqz v6, :cond_0

    .line 519
    const-string/jumbo v3, ","

    invoke-virtual {v8, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 522
    :cond_0
    const-string/jumbo v3, "?"

    invoke-virtual {v8, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 523
    add-int/lit8 v6, v6, 0x1

    .line 524
    goto :goto_0

    .line 526
    .end local v7    # "mid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 528
    new-instance v1, Lbgu$b;

    invoke-direct {v1}, Lbgu$b;-><init>()V

    .line 529
    .local v1, "whereStatement":Lbgu$b;
    iput-object v9, v1, Lbgu$b;->b:[Ljava/lang/String;

    .line 530
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbgu$b;->a:Ljava/lang/String;

    .line 531
    const/4 v3, 0x0

    sget-object v5, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbgu;->a(Lbgu$b;Lbgu$a;IILcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;)Ljava/util/List;

    move-result-object v2

    .line 534
    .end local v1    # "whereStatement":Lbgu$b;
    .end local v6    # "i":I
    .end local v8    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public final c(I)I
    .locals 8
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 977
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 978
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string/jumbo v1, "notifyCommentCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=? AND "

    aput-object v3, v2, v6

    const-string/jumbo v3, "biz_type"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string/jumbo v4, "=? "

    aput-object v4, v2, v3

    .line 982
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 989
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "2"

    .line 990
    aput-object v4, v3, v6

    .line 980
    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final c(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 742
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 744
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "receiver_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 749
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final c(Ljava/lang/String;J)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "notifyCommentCount"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 851
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 853
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 854
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "notifyCommentCount"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 855
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 858
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final d(I)I
    .locals 8
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 996
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 997
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string/jumbo v1, "notifyCommentCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=? AND "

    aput-object v3, v2, v6

    const-string/jumbo v3, "focusStatus"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string/jumbo v4, "=? "

    aput-object v4, v2, v3

    .line 1001
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 1008
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "1"

    aput-object v4, v3, v6

    .line 999
    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final d(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 756
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "dCCUidCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 760
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final d(Ljava/lang/String;J)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "version"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1603
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1604
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1605
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "d_version"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1606
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1609
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v4, 0x2

    invoke-direct {p0, v6, v4, v5, v5}, Lbgu;->a(IIZZ)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "finishDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v4, 0x1

    invoke-direct {p0, v6, v4, v5, v5}, Lbgu;->a(IIZZ)Ljava/util/List;

    move-result-object v3

    .line 245
    .local v3, "unfinishedDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-direct {p0}, Lbgu;->n()Ljava/util/List;

    move-result-object v1

    .line 246
    .local v1, "meetingDings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_0
    if-eqz v3, :cond_1

    .line 250
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    return-object v2
.end method

.method public final e()I
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 603
    .local v1, "count":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 604
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 605
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 606
    const-string/jumbo v4, " WHERE "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 608
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 609
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 610
    const-string/jumbo v4, "identity"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 611
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 613
    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 614
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 615
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 616
    const-string/jumbo v4, "confirmedType"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 617
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 619
    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 620
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 621
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 622
    const-string/jumbo v4, "dingOperationStatus"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 623
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 625
    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 626
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 627
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 628
    const-string/jumbo v4, "sendStatus"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 629
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 631
    const/4 v2, 0x0

    .line 633
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 635
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    .line 636
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 637
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    .line 638
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 633
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 639
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 645
    :cond_0
    if-eqz v2, :cond_1

    .line 646
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_1
    :goto_0
    return v1

    .line 642
    :catch_0
    move-exception v3

    .line 643
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v4, "query unconfirmed dings count failed"

    invoke-static {v4, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    if-eqz v2, :cond_1

    .line 646
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 645
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 646
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public final e(I)I
    .locals 9
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1015
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1016
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string/jumbo v1, "notifyCommentCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=? AND ( "

    aput-object v3, v2, v6

    const-string/jumbo v3, "identity"

    aput-object v3, v2, v7

    const-string/jumbo v3, "=? or "

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string/jumbo v4, "identity"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "=? ) "

    aput-object v4, v2, v3

    .line 1020
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 1029
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 1030
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 1031
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1018
    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final e(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "completedCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 777
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 778
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "execute_complete_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 783
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final f(I)I
    .locals 9
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1037
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    const-string/jumbo v1, "notifyCommentCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1040
    const-string/jumbo v1, "tbdinglist"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "dingOperationStatus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "=? AND ( "

    aput-object v3, v2, v6

    const-string/jumbo v3, "identity"

    aput-object v3, v2, v7

    const-string/jumbo v3, "=? or "

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string/jumbo v4, "identity"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "=? ) "

    aput-object v4, v2, v3

    .line 1042
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 1051
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 1052
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 1053
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1040
    invoke-direct {p0, v1, v0, v2, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final f(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2920
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2921
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2922
    const-string/jumbo v2, "dingOperationStatus"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2923
    const-string/jumbo v2, "notifyCommentCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2927
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v0

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-direct {p0, v2, v1, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final f()Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 542
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 543
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget-object v4, Lbgu;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 545
    const-string/jumbo v4, " WHERE "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 547
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 548
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 549
    const-string/jumbo v4, "identity"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 550
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 552
    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 553
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 554
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 555
    const-string/jumbo v4, "confirmedType"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 556
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 558
    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 559
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 560
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 561
    const-string/jumbo v4, "dingOperationStatus"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 562
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 564
    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 565
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 566
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 567
    const-string/jumbo v4, "sendStatus"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 568
    const-string/jumbo v4, " =? "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 570
    const-string/jumbo v4, " ORDER BY "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 571
    const-string/jumbo v4, "tbdinglist"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 572
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 573
    const-string/jumbo v4, "dingCreatedAt"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 574
    const-string/jumbo v4, " ASC "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 575
    const-string/jumbo v4, " LIMIT 1 "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 577
    const/4 v1, 0x0

    .line 579
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/ding/db/entry/EntryDing;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    .line 581
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    .line 582
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 583
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    .line 584
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->getValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 579
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v2, "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-static {v1, v2}, Lbgu;->a(Landroid/database/Cursor;Ljava/util/Collection;)V

    .line 592
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    const/4 v4, 0x0

    .line 595
    :goto_1
    return-object v4

    .line 585
    .end local v2    # "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :catch_0
    move-exception v3

    .line 586
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "query last unConfirmed dings failed"

    invoke-static {v4, v3}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 595
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "dings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_0
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_1
.end method

.method public final g()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1227
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgu$5;

    invoke-direct {v3, p0, v0}, Lbgu$5;-><init>(Lbgu;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 1240
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final g(I)I
    .locals 4
    .param p1, "operationStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1101
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1102
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "dingOperationStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    const-string/jumbo v1, "notifyCommentCount"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1104
    const-string/jumbo v1, "tbdinglist"

    invoke-direct {p0, v1, v0, v3, v3}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final g(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sendStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1134
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "sendStatus"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1139
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final h()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1059
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1060
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgu$1;

    invoke-direct {v3, p0, v0}, Lbgu$1;-><init>(Lbgu;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 1072
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final h(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 878
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 879
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "commentCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 883
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final i()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1077
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1079
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbgu;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgu;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgu$2;

    invoke-direct {v3, p0, v0}, Lbgu$2;-><init>(Lbgu;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 1096
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public final i(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 888
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 889
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 890
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "user_comment_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 893
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public final j(Ljava/lang/String;I)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1592
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1593
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "dSubTaskCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    const-string/jumbo v2, "tbdinglist"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "dingId"

    aput-object v4, v3, v1

    const-string/jumbo v4, "=?"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-direct {p0, v2, v0, v3, v4}, Lbgu;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1597
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lbgu;->a:Ljava/lang/String;

    return-object v0
.end method
