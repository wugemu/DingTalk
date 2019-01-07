.class public Lenp;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "FunctionSourceImpl.java"

# interfaces
.implements Lenm;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lenp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lenp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/search/model/FunctionModel;
    .locals 13
    .param p1, "functionId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 41
    const/4 v9, 0x0

    .line 43
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    .line 1026
    const-string/jumbo v1, "0.db"

    .line 43
    const-class v2, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    const-string/jumbo v3, "tbfunction"

    const/4 v4, 0x0

    const-string/jumbo v5, "funid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 45
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v11, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    invoke-direct {v11}, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;-><init>()V

    .line 47
    .local v11, "entry":Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 48
    new-instance v0, Lcom/alibaba/android/search/model/FunctionModel;

    invoke-direct {v0, v11}, Lcom/alibaba/android/search/model/FunctionModel;-><init>(Lcom/alibaba/android/search/datasource/entry/FunctionEntry;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v9, :cond_0

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 58
    .end local v11    # "entry":Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    if-eqz v9, :cond_2

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v12

    .line 58
    goto :goto_0

    .line 51
    :catch_0
    move-exception v10

    .line 52
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz v9, :cond_2

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 54
    .end local v10    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    .line 4026
    const-string/jumbo v1, "0.db"

    .line 111
    const-class v2, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    const-string/jumbo v3, "tbfunction"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public final a(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/FunctionModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "functions":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/FunctionModel;>;"
    const/4 v6, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "insertSuccess":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 106
    :goto_0
    return v6

    .line 69
    :cond_0
    const/4 v4, 0x0

    .line 2026
    .local v4, "statement":Lcom/alibaba/bee/SQLiteStatement;
    const-string/jumbo v0, "0.db"

    .line 72
    .local v0, "dbName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    .line 3026
    const-string/jumbo v7, "0.db"

    .line 72
    const-class v8, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    const-class v9, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    const-string/jumbo v10, "tbfunction"

    invoke-static {v9, v10}, Lcom/alibaba/bee/DatabaseUtils;->getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v4

    .line 73
    iget-object v6, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/FunctionModel;

    .line 76
    .local v2, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    invoke-static {v2}, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->toDBEntry(Lcom/alibaba/android/search/model/FunctionModel;)Lcom/alibaba/android/search/datasource/entry/FunctionEntry;

    move-result-object v1

    .line 77
    .local v1, "functionEntry":Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1, v4}, Lcom/alibaba/android/search/datasource/entry/FunctionEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 81
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 82
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 83
    const/4 v3, 0x1

    .line 84
    goto :goto_1

    .line 85
    .end local v1    # "functionEntry":Lcom/alibaba/android/search/datasource/entry/FunctionEntry;
    .end local v2    # "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    :cond_2
    iget-object v6, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v4, :cond_3

    .line 94
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 97
    :cond_3
    :try_start_1
    iget-object v6, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    move v6, v3

    .line 106
    goto :goto_0

    .line 98
    :catch_0
    move-exception v5

    .line 99
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_4

    .line 101
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 86
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 87
    .restart local v5    # "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    const-string/jumbo v6, "data insert error: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3069
    const-string/jumbo v8, "search_func"

    invoke-static {v8, v6, v7}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_7

    .line 90
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 94
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 97
    :cond_5
    :try_start_3
    iget-object v7, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    :cond_6
    throw v6

    .line 93
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_7
    if-eqz v4, :cond_8

    .line 94
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 97
    :cond_8
    :try_start_4
    iget-object v6, p0, Lenp;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v6, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 98
    :catch_2
    move-exception v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_4

    .line 101
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 98
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v5

    .line 99
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v7

    sget v8, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v7, v8, :cond_6

    .line 101
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "0.db"

    return-object v0
.end method
