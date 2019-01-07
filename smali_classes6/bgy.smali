.class public Lbgy;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceDraftImpl.java"

# interfaces
.implements Lbgx;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbgy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbgy;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgy;

    .prologue
    .line 24
    iget-object v0, p0, Lbgy;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic b(Lbgy;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbgy;

    .prologue
    .line 24
    iget-object v0, p0, Lbgy;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .locals 13
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    const/4 v11, 0x0

    .line 64
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    const/4 v9, 0x0

    .line 66
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lbgy;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgy;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDraft;

    const-string/jumbo v3, "tb_ding_draft_v2"

    sget-object v4, Lcom/alibaba/android/ding/db/entry/EntryDraft;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "draft_type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " = ?"

    aput-object v7, v5, v6

    .line 70
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 66
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 74
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v12, Lcom/alibaba/android/ding/db/entry/EntryDraft;

    invoke-direct {v12}, Lcom/alibaba/android/ding/db/entry/EntryDraft;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .local v12, "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    :try_start_1
    invoke-virtual {v12, v9}, Lcom/alibaba/android/ding/db/entry/EntryDraft;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 81
    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    :cond_0
    if-eqz v9, :cond_1

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_1
    :goto_0
    return-object v11

    .line 78
    :catch_0
    move-exception v10

    .line 79
    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "[DataSourceDraft]retrieve draft by type failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v9, :cond_1

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 81
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_2

    .line 82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 81
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    goto :goto_2

    .line 78
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDraft;
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/ding/db/entry/EntryDraft;)Z
    .locals 6
    .param p1, "entryDraft"    # Lcom/alibaba/android/ding/db/entry/EntryDraft;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 39
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lbgy;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgy;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbgy$1;

    invoke-direct {v4, p0, p1, v0}, Lbgy$1;-><init>(Lbgy;Lcom/alibaba/android/ding/db/entry/EntryDraft;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final b(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lbgy;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgy;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbgy$2;

    invoke-direct {v2, p0, p1}, Lbgy$2;-><init>(Lbgy;I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 167
    return-void
.end method

.method public final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lbgy;->a:Ljava/lang/String;

    return-object v0
.end method
