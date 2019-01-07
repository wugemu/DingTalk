.class public Lbhc;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourcePegDraftImpl.java"

# interfaces
.implements Lbhb;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbhc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbhc;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbhc;

    .prologue
    .line 17
    iget-object v0, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Lbhc;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbhc;

    .prologue
    .line 17
    iget-object v0, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic c(Lbhc;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbhc;

    .prologue
    .line 17
    iget-object v0, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
    const/4 v11, 0x0

    .line 54
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    const/4 v9, 0x0

    .line 56
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhc;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    const-string/jumbo v3, "tbdingpegdraft"

    sget-object v4, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 64
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v12, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    invoke-direct {v12}, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .local v12, "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    :try_start_1
    invoke-virtual {v12, v9}, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 71
    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    :cond_0
    if-eqz v9, :cond_1

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    :goto_0
    return-object v11

    .line 68
    :catch_0
    move-exception v10

    .line 69
    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "[DataSourcePegDraft]retrieve failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v9, :cond_1

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_2

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 71
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    goto :goto_2

    .line 68
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/ding/db/entry/EntryPegDraft;)Z
    .locals 6
    .param p1, "entryPegDraft"    # Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 29
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhc;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbhc$1;

    invoke-direct {v4, p0, p1, v0}, Lbhc$1;-><init>(Lbhc;Lcom/alibaba/android/ding/db/entry/EntryPegDraft;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhc;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbhc$2;

    invoke-direct {v2, p0}, Lbhc$2;-><init>(Lbhc;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 94
    return-void
.end method

.method public final d()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 99
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbhc;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbhc$3;

    invoke-direct {v3, p0, v0}, Lbhc$3;-><init>(Lbhc;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    return v1
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lbhc;->a:Ljava/lang/String;

    return-object v0
.end method
