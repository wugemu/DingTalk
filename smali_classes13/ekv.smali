.class public final Lekv;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "UserSecurityDataSourceImpl.java"

# interfaces
.implements Leku;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic a(Lekv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lekv;

    .prologue
    .line 12
    invoke-virtual {p0}, Lekv;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lekv;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lekv;

    .prologue
    .line 12
    iget-object v0, p0, Lekv;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;)I
    .locals 5
    .param p1, "entry"    # Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return v1

    .line 46
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 47
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lekv;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lekv;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lekv$1;

    invoke-direct {v3, p0, p1, v0}, Lekv$1;-><init>(Lekv;Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(J)Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    .locals 13
    .param p1, "uid"    # J

    .prologue
    const/4 v12, 0x0

    .line 16
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move-object v11, v12

    .line 38
    :cond_0
    :goto_0
    return-object v11

    .line 19
    :cond_1
    const/4 v9, 0x0

    .line 21
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lekv;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lekv;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    const-string/jumbo v3, "tbusersecurity"

    const-class v4, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uid = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 23
    if-eqz v9, :cond_2

    .line 25
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    new-instance v11, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    invoke-direct {v11}, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;-><init>()V

    .line 27
    .local v11, "entry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v9, :cond_0

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 34
    .end local v11    # "entry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    :cond_2
    if-eqz v9, :cond_3

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v11, v12

    .line 38
    goto :goto_0

    .line 31
    :catch_0
    move-exception v10

    .line 32
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    if-eqz v9, :cond_3

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 34
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
