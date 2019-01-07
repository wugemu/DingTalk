.class public Lbgt;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceDingIdExchangeImpl.java"

# interfaces
.implements Lbgs;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbgt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbgt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .locals 13
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "recurrenceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v11

    .line 56
    :cond_1
    const/4 v11, 0x0

    .line 57
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    const/4 v9, 0x0

    .line 61
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "uniqueId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " = ? and "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "recurrenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " is null "

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    .line 72
    .local v6, "selectionArgs":[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lbgt;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgt;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    const-string/jumbo v3, "tbdingidexhcange"

    sget-object v4, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 80
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v12, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    invoke-direct {v12}, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .local v12, "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    :try_start_1
    invoke-virtual {v12, v9}, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 87
    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    :cond_2
    if-eqz v9, :cond_0

    .line 88
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 67
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "uniqueId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " = ? and "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "recurrenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " = ?"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .restart local v5    # "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v0, 0x1

    aput-object p2, v6, v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 84
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 85
    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    const-string/jumbo v0, "[DataSourceDingIdExchange]query failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    if-eqz v9, :cond_0

    .line 88
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 87
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_4

    .line 88
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 87
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    goto :goto_3

    .line 84
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .restart local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    .restart local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;
    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;)Z
    .locals 8
    .param p1, "entryDingIdExchange"    # Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 33
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lbgt;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbgt;->m()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    const-class v6, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;

    const-string/jumbo v7, "tbdingidexhcange"

    .line 35
    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 36
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ding/db/entry/EntryDingIdExchange;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 37
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 38
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 v1, 0x1

    .line 44
    invoke-static {v2}, Lbgt;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 47
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "[DataSourceDingIdExchange]save entryDingIdExchange failed"

    invoke-static {v3, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-static {v2}, Lbgt;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lbgt;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lbgt;->a:Ljava/lang/String;

    return-object v0
.end method
