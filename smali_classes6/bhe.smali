.class public Lbhe;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceRecentDingImpl.java"

# interfaces
.implements Lbhd;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lbhe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhe;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createAt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhe;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbhe;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbhe;

    .prologue
    .line 20
    iget-object v0, p0, Lbhe;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 57
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lbhe;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhe;->m()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    const-string/jumbo v6, "SELECT count(*) FROM tb_ding_receiver"

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 64
    :cond_0
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "[DataSourceRecentDing]query count failed"

    invoke-static {v3, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 64
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public final a(Lbfx;)I
    .locals 9
    .param p1, "recentDingObject"    # Lbfx;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return v4

    .line 1038
    :cond_0
    new-instance v1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    invoke-direct {v1}, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;-><init>()V

    .line 1039
    iget-wide v6, p1, Lbfx;->a:J

    iput-wide v6, v1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->dingId:J

    .line 1040
    iget-wide v6, p1, Lbfx;->c:J

    iput-wide v6, v1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->createAt:J

    .line 1041
    invoke-virtual {p1}, Lbfx;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->uids:Ljava/lang/String;

    .line 1042
    invoke-virtual {p1}, Lbfx;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iput v5, v1, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->sortUidsHash:I

    .line 34
    .local v1, "entry":Lcom/alibaba/android/ding/db/entry/EntryRecentDing;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 35
    .local v2, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v3, 0x0

    .line 37
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lbhe;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhe;->m()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    const-class v7, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    const-string/jumbo v8, "tb_ding_receiver"

    .line 39
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 41
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 42
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v3}, Lbhe;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 49
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v4, "[DataSourceRecentDing]merge failed"

    invoke-static {v4, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v3}, Lbhe;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lbhe;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method

.method public final b()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbfx;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 73
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v13, "recentDingObjects":Ljava/util/List;, "Ljava/util/List<Lbfx;>;"
    const/4 v9, 0x0

    .line 76
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lbhe;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhe;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    const-string/jumbo v3, "tb_ding_receiver"

    sget-object v4, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lbhe;->b:Ljava/lang/String;

    const-string/jumbo v8, "0, 20"

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 84
    if-eqz v9, :cond_1

    .line 85
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v11, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;

    invoke-direct {v11}, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;-><init>()V

    .line 87
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryRecentDing;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/ding/db/entry/EntryRecentDing;->fillWithCursor(Landroid/database/Cursor;)V

    .line 88
    new-instance v12, Lbfx;

    invoke-direct {v12, v11}, Lbfx;-><init>(Lcom/alibaba/android/ding/db/entry/EntryRecentDing;)V

    .line 89
    .local v12, "recentDingObject":Lbfx;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryRecentDing;
    .end local v12    # "recentDingObject":Lbfx;
    :catch_0
    move-exception v10

    .line 93
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceRecentDing]query failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v9, :cond_0

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 99
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-object v13

    .line 95
    :cond_1
    if-eqz v9, :cond_0

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final c()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 126
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbhe;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhe;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbhe$1;

    invoke-direct {v3, p0, v0}, Lbhe$1;-><init>(Lbhe;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method
