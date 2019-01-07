.class public abstract Lbpa;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "BaseCircleDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry:",
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
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
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TEntry;>;"
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 46
    iput-object p1, p0, Lbpa;->a:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method static synthetic a(Lbpa;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbpa;

    .prologue
    .line 34
    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "columnName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 59
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 60
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
    .line 289
    const-string/jumbo v0, "Circle-Data-Source-Thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method static synthetic b(Lbpa;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbpa;

    .prologue
    .line 34
    iget-object v0, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    const-wide/16 v2, -0x1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-string/jumbo v4, "[rawQueryCount] sql is empty"

    .line 1076
    const/4 v5, 0x0

    invoke-static {v5, v4}, Lbqh;->a(ZLjava/lang/String;)V

    .line 113
    :goto_0
    return-wide v2

    .line 102
    :cond_0
    const/4 v1, 0x0

    .line 104
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {v4, v5, v6, p1}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 105
    invoke-interface {v1, p2}, Lcom/alibaba/bee/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 106
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 110
    invoke-static {v1}, Lbpa;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
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

    invoke-static {v4}, Lbqh;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {v1}, Lbpa;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lbpa;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2
.end method

.method public abstract a()Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    const/4 v5, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "limit is empty"

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lbpa;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v5

    move-object v7, p2

    .line 76
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 78
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1019
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lbpa;->b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;

    move-result-object v11

    .line 83
    .local v11, "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-virtual {v11, v9}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 84
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->toObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    .end local v11    # "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catch_0
    move-exception v10

    .line 88
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v12, v5

    .line 93
    :goto_2
    return-object v12

    .line 75
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

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
    .line 303
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    new-instance v0, Lbpa$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lbpa$4;-><init>(Lbpa;Ljava/util/List;Lcou;Landroid/app/Activity;)V

    invoke-static {v0}, Lbpa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcou;)V
    .locals 2
    .param p1, "listener"    # Lcou;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 258
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    const-string/jumbo v0, "Circle-Data-Source-Thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lbpa$2;

    invoke-direct {v1, p0, p1}, Lbpa$2;-><init>(Lbpa;Lcou;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 267
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
    .line 293
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TObject;>;"
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v0, Lbpa$3;

    invoke-direct {v0, p0, p1}, Lbpa$3;-><init>(Lbpa;Ljava/util/Collection;)V

    invoke-static {v0}, Lbpa;->a(Ljava/lang/Runnable;)V

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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 330
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TObject;>;"
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v3, 0x0

    .line 9067
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lbpa;->a:Ljava/lang/Class;

    iget-object v7, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lbpa;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 334
    invoke-virtual {p0}, Lbpa;->b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;

    move-result-object v1

    .line 336
    .local v1, "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 337
    .local v2, "object":Ljava/lang/Object;, "TObject;"
    if-eqz v2, :cond_1

    .line 338
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->fillWithObject(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 341
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 342
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 344
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->clear()V

    .line 345
    if-eqz p2, :cond_1

    .line 346
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 349
    .end local v1    # "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v2    # "object":Ljava/lang/Object;, "TObject;"
    :catch_0
    move-exception v0

    .line 350
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

    invoke-static {v4}, Lbqh;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    invoke-static {v3}, Lbpa;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    :cond_2
    invoke-static {v3}, Lbpa;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v1    # "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lbpa;->a(Lcom/alibaba/bee/SQLiteStatement;)V

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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 318
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TObject;>;"
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 326
    :goto_0
    return v1

    .line 319
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 320
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbpa$5;

    invoke-direct {v3, p0, p1, v0}, Lbpa$5;-><init>(Lbpa;Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public abstract b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry;"
        }
    .end annotation
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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    const/4 v4, 0x0

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    const-string/jumbo v5, "[rawQuery] sql is empty"

    .line 2076
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lbqh;->a(ZLjava/lang/String;)V

    move-object v3, v4

    .line 154
    :cond_0
    :goto_0
    return-object v3

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 137
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_4

    .line 3019
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-virtual {p0}, Lbpa;->b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;

    move-result-object v2

    .line 142
    .local v2, "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 143
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->toObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 147
    .end local v2    # "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbqh;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    move-object v3, v4

    .line 154
    goto :goto_0

    .line 150
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_3
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 150
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :cond_4
    if-eqz v0, :cond_2

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 150
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 117
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbpa$1;

    invoke-direct {v2, p0, p1}, Lbpa$1;-><init>(Lbpa;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 195
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    invoke-virtual {p0, p1, p2}, Lbpa;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
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

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 202
    iget-object v0, p0, Lbpa;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 203
    const-string/jumbo v0, "cls = null"

    .line 3076
    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    return-object v7

    .line 206
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string/jumbo v0, "sql is empty"

    .line 4076
    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    if-nez p2, :cond_3

    .line 212
    const-string/jumbo v0, "args = null"

    .line 5076
    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lbpa;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 218
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 6019
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p0}, Lbpa;->b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;

    move-result-object v11

    .line 223
    .local v11, "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    invoke-virtual {v11, v9}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 224
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;->toObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 227
    .end local v11    # "entry":Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;, "TEntry;"
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TObject;>;"
    :catch_0
    move-exception v10

    .line 228
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
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

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 251
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    :try_start_0
    iget-object v0, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lbpa;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    const-string/jumbo v0, "clear error"

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p0, "this":Lbpa;, "Lbpa<TEntry;TObject;>;"
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 270
    iget-object v1, p0, Lbpa;->a:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 271
    const-string/jumbo v1, "cls = null"

    .line 6076
    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 285
    :goto_0
    return v0

    .line 275
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    const-string/jumbo v1, "sql is empty"

    .line 7076
    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    if-nez p2, :cond_2

    .line 281
    const-string/jumbo v1, "args is empty"

    .line 8076
    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lbpa;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lbpa;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbpa;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lbpa;->a()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
