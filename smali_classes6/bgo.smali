.class public Lbgo;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceCursorImpl.java"

# interfaces
.implements Lbgn;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbgo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbgo;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgo;

    .prologue
    .line 16
    iget-object v0, p0, Lbgo;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 51
    const/4 v11, 0x0

    .line 52
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    const/4 v9, 0x0

    .line 54
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lbgo;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgo;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryCursor;

    const-string/jumbo v3, "tbdingcursorNew"

    sget-object v4, Lcom/alibaba/android/ding/db/entry/EntryCursor;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 62
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v12, Lcom/alibaba/android/ding/db/entry/EntryCursor;

    invoke-direct {v12}, Lcom/alibaba/android/ding/db/entry/EntryCursor;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .local v12, "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    :try_start_1
    invoke-virtual {v12, v9}, Lcom/alibaba/android/ding/db/entry/EntryCursor;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 69
    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    :cond_0
    if-eqz v9, :cond_1

    .line 70
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_1
    :goto_0
    return-object v11

    .line 66
    :catch_0
    move-exception v10

    .line 67
    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "[DataSourceCursor]retrieve cursor failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v9, :cond_1

    .line 70
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 69
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_2

    .line 70
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 69
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    goto :goto_2

    .line 66
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryCursor;
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/ding/db/entry/EntryCursor;)Z
    .locals 8
    .param p1, "cursor"    # Lcom/alibaba/android/ding/db/entry/EntryCursor;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lbgo;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgo;->m()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/ding/db/entry/EntryCursor;

    const-class v6, Lcom/alibaba/android/ding/db/entry/EntryCursor;

    const-string/jumbo v7, "tbdingcursorNew"

    .line 33
    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/db/entry/EntryCursor;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 35
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 36
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v1, 0x1

    .line 43
    invoke-static {v2}, Lbgo;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 46
    .end local v2    # "statement":Lcom/alibaba/bee/SQLiteStatement;
    :cond_0
    :goto_0
    return v1

    .line 39
    .restart local v2    # "statement":Lcom/alibaba/bee/SQLiteStatement;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "[DataSourceCursor]save cursor failed"

    invoke-static {v3, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-static {v2}, Lbgo;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lbgo;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method

.method public final b()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 79
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbgo;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgo;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbgo$1;

    invoke-direct {v3, p0, v0}, Lbgo$1;-><init>(Lbgo;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 91
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lbgo;->a:Ljava/lang/String;

    return-object v0
.end method
