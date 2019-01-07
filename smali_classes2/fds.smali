.class public abstract Lfds;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "BaseCircleDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry:",
        "Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry",
        "<TObject;>;Object:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TEntry;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TEntry;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TEntry;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 46
    iput-object p1, p0, Lfds;->a:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "columnName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    .line 57
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 58
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ?"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 288
    const-string/jumbo v0, "Connection-Data-Source-Thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    const-wide/16 v2, -0x1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const-string/jumbo v4, "[rawQueryCount] sql is empty"

    .line 1060
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lffe;->a(ZLjava/lang/String;)V

    .line 110
    :goto_0
    return-wide v2

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 101
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {v4, v5, v6, p1}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 102
    invoke-interface {v1, p2}, Lcom/alibaba/bee/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 107
    invoke-static {v1}, Lfds;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rawQueryCount error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lffe;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-static {v1}, Lfds;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lfds;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "limit"    # Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TObject;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    const/4 v5, 0x0

    .line 73
    iget-object v0, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lfds;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfds;->a:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v5

    move-object v7, p2

    .line 73
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 75
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1020
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lfds;->d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;

    move-result-object v11

    .line 80
    .local v11, "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-virtual {v11, v9}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 81
    invoke-virtual {v11}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->toObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    .end local v11    # "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catch_0
    move-exception v10

    .line 85
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v12, v5

    .line 90
    :goto_1
    return-object v12

    .line 87
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;Lcou;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<TObject;>;",
            "Lcou;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    new-instance v0, Lfds$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lfds$3;-><init>(Lfds;Ljava/util/List;Lcou;Landroid/app/Activity;)V

    invoke-static {v0}, Lfds;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcou;)V
    .locals 2
    .param p1, "listener"    # Lcou;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 257
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    const-string/jumbo v0, "Connection-Data-Source-Thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lffm;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfds$1;

    invoke-direct {v1, p0, p1}, Lfds$1;-><init>(Lfds;Lcou;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TObject;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TObject;>;"
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v0, Lfds$2;

    invoke-direct {v0, p0, p1}, Lfds$2;-><init>(Lfds;Ljava/util/Collection;)V

    invoke-static {v0}, Lfds;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 9
    .param p2, "result"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TObject;>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 337
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TObject;>;"
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v3, 0x0

    .line 8065
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfds;->a:Ljava/lang/Class;

    iget-object v7, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lfds;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 343
    invoke-virtual {p0}, Lfds;->d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;

    move-result-object v1

    .line 345
    .local v1, "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 346
    .local v2, "object":Ljava/lang/Object;, "TObject;"
    if-eqz v2, :cond_1

    .line 349
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->fillWithObject(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 352
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 353
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 355
    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->clear()V

    .line 356
    if-eqz p2, :cond_1

    .line 357
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 360
    .end local v1    # "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v2    # "object":Ljava/lang/Object;, "TObject;"
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "bulkMerge error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lffe;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    invoke-static {v3}, Lfds;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    :cond_2
    invoke-static {v3}, Lfds;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v1    # "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lfds;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method

.method public final b(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TObject;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 323
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TObject;>;"
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v1, -0x1

    .line 333
    :goto_0
    return v1

    .line 326
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 327
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfds$4;

    invoke-direct {v3, p0, p1, v0}, Lfds$4;-><init>(Lfds;Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 333
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TObject;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    const/4 v4, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    const-string/jumbo v5, "[rawQuery] sql is empty"

    .line 2060
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lffe;->a(ZLjava/lang/String;)V

    move-object v3, v4

    .line 149
    :cond_0
    :goto_0
    return-object v3

    .line 130
    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 3020
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {p0}, Lfds;->d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;

    move-result-object v2

    .line 137
    .local v2, "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-virtual {v2, v0}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 138
    invoke-virtual {v2}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->toObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 142
    .end local v2    # "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lffe;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    move-object v3, v4

    .line 149
    goto :goto_0

    .line 145
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_3
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_4
    if-eqz v0, :cond_2

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 145
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 114
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v1, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lffe;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TObject;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 192
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    invoke-virtual {p0, p1, p2}, Lfds;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry;"
        }
    .end annotation
.end method

.method public final d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TObject;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 201
    iget-object v0, p0, Lfds;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 202
    const-string/jumbo v0, "cls = null"

    .line 3060
    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-object v7

    .line 205
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const-string/jumbo v0, "sql is empty"

    .line 4060
    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    if-nez p2, :cond_3

    .line 211
    const-string/jumbo v0, "args = null"

    .line 5060
    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lfds;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfds;->a:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 217
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 6020
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    invoke-virtual {p0}, Lfds;->d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;

    move-result-object v11

    .line 222
    .local v11, "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-virtual {v11, v9}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 223
    invoke-virtual {v11}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;->toObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 226
    .end local v11    # "entry":Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catch_0
    move-exception v10

    .line 227
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v12

    goto :goto_0

    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 269
    iget-object v1, p0, Lfds;->a:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 270
    const-string/jumbo v1, "cls = null"

    .line 6060
    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    .line 284
    :goto_0
    return v0

    .line 274
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    const-string/jumbo v1, "sql is empty"

    .line 7060
    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    if-nez p2, :cond_2

    .line 280
    const-string/jumbo v1, "args is empty"

    .line 8060
    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lfds;->b()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 250
    .local p0, "this":Lfds;, "Lfds<TEntry;TObject;>;"
    :try_start_0
    iget-object v0, p0, Lfds;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfds;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfds;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lfds;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    const-string/jumbo v0, "clear error"

    invoke-static {v0}, Lffe;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
