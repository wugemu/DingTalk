.class public final Lbgw;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceDingUnReadCountImpl.java"

# interfaces
.implements Lbgv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbgw;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgw;

    .prologue
    .line 21
    iget-object v0, p0, Lbgw;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Lbgw;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgw;

    .prologue
    .line 21
    iget-object v0, p0, Lbgw;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()Lbfb;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 33
    const/4 v9, 0x0

    .line 35
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lbgw;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgw;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    const-string/jumbo v3, "tb_ding_unread_count"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 43
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v11, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    invoke-direct {v11}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;-><init>()V

    .line 45
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->fillWithCursor(Landroid/database/Cursor;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DataSourceDingUnReadCountImpl] query entryUnReadCount="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v11}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->toDingUnReadCountObject()Lbfb;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 52
    if-eqz v9, :cond_0

    .line 53
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 57
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    if-eqz v9, :cond_2

    .line 53
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v12

    .line 57
    goto :goto_0

    .line 49
    :catch_0
    move-exception v10

    .line 50
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceDingUnReadCountImpl]query failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v9, :cond_2

    .line 53
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 52
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 53
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final a(Lbfb;)Z
    .locals 8
    .param p1, "unreadCountObject"    # Lbfb;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 64
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->from(Lbfb;)Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;

    move-result-object v0

    .line 65
    .local v0, "entryUnReadCount":Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;
    if-nez v0, :cond_1

    .line 66
    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v5, "[DataSourceDingUnReadCountImpl] save entryUnReadCount==null"

    aput-object v5, v4, v3

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[DataSourceDingUnReadCountImpl] save entryUnReadCount="

    aput-object v5, v4, v3

    invoke-virtual {v0}, Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lbgw;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgw;->m()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lbgw$1;

    invoke-direct {v6, p0, v0, v1}, Lbgw$1;-><init>(Lbgw;Lcom/alibaba/android/ding/db/entry/EntryUnReadCount;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 101
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "DataSourceDingUnReadCountImpl"

    return-object v0
.end method
