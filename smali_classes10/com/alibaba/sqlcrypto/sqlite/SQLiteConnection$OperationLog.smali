.class final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;

    .prologue
    .line 1404
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 5
    .param p1, "cookie"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1482
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1483
    .local v0, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    .line 1484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1485
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1489
    :cond_0
    return v4
.end method

.method private getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    .locals 3
    .param p1, "cookie"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1508
    and-int/lit16 v0, p1, 0xff

    .line 1509
    .local v0, "index":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    .line 1510
    .local v1, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    iget v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    .end local v1    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :goto_0
    return-object v1

    .restart local v1    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1493
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1494
    .local v1, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1495
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1496
    if-eqz p2, :cond_0

    .line 1497
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_0
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1503
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1504
    .local v0, "generation":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public final beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 8
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1414
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1415
    :try_start_0
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v2, v4, 0x14

    .line 1416
    .local v2, "index":I
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v2

    .line 1417
    .local v3, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    if-nez v3, :cond_1

    .line 1418
    new-instance v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    .end local v3    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V

    .line 1419
    .restart local v3    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aput-object v3, v4, v2

    .line 1427
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1428
    iput-object p1, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1429
    iput-object p2, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1430
    if-eqz p3, :cond_4

    .line 1431
    iget-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 1432
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1436
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_4

    .line 1437
    aget-object v0, p3, v1

    .line 1438
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v4, v0, [B

    if-eqz v4, :cond_3

    .line 1440
    iget-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->access$500()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1421
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1422
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1423
    iget-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1424
    iget-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1449
    .end local v2    # "index":I
    .end local v3    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1434
    .restart local v2    # "index":I
    .restart local v3    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :cond_2
    :try_start_1
    iget-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1442
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_3
    iget-object v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1446
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v4

    iput v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1447
    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1448
    iget v4, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public final describeCurrentOperation()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1514
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    .line 1515
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v2, v4

    .line 1516
    .local v1, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_0

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1518
    .local v0, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    .line 1521
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 1522
    .end local v1    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final dump(Landroid/util/Printer;Z)V
    .locals 7
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1526
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    .line 1527
    :try_start_0
    const-string/jumbo v4, "  Most recently executed operations:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1528
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1529
    .local v0, "index":I
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1530
    .local v3, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    if-eqz v3, :cond_3

    .line 1531
    const/4 v2, 0x0

    .line 1533
    .local v2, "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1534
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    invoke-static {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->access$600(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    const-string/jumbo v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-virtual {v3, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1540
    if-lez v0, :cond_2

    .line 1541
    add-int/lit8 v0, v0, -0x1

    .line 1545
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 1546
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    .line 1547
    if-eqz v3, :cond_1

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    .line 1551
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_1
    :goto_1
    monitor-exit v5

    return-void

    .line 1543
    .restart local v1    # "msg":Ljava/lang/StringBuilder;
    .restart local v2    # "n":I
    :cond_2
    const/16 v0, 0x13

    goto :goto_0

    .line 1549
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    .end local v2    # "n":I
    :cond_3
    const-string/jumbo v4, "    <none>"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1551
    .end local v0    # "index":I
    .end local v3    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1463
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1466
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1471
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final failOperation(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1453
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v2

    .line 1454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1455
    .local v0, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    if-eqz v0, :cond_0

    .line 1456
    iput-object p2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1458
    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    .line 1477
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1478
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
