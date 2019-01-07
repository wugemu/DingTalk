.class public final Lekz;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "SplashDataSourceImpl.java"

# interfaces
.implements Leky;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic a(Lekz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lekz;

    .prologue
    .line 25
    invoke-virtual {p0}, Lekz;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lekz;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lekz;

    .prologue
    .line 25
    iget-object v0, p0, Lekz;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 122
    .local v6, "whereClauseSb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "type"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 123
    const-string/jumbo v0, " != ?"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 125
    iget-object v0, p0, Lekz;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lekz;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    const-string/jumbo v3, "tb_splash_data"

    .line 126
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    aput-object v8, v5, v7

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 8
    .param p1, "splashId"    # Ljava/lang/String;
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {p0}, Lekz;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    const-string/jumbo v3, "tb_splash_data"

    const-string/jumbo v5, "splashId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lekr;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lekz;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lekz;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lekz$1;

    invoke-direct {v3, p0, p1, v0}, Lekz$1;-><init>(Lekz;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(I)Ljava/util/List;
    .locals 14
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lekr;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v12, "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "priority"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "orderByString":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "0, "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1000"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "limitString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 70
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lekz;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lekz;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    const-string/jumbo v3, "tb_splash_data"

    const-class v4, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    invoke-static {v4}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 72
    if-nez v9, :cond_2

    .line 85
    if-eqz v9, :cond_0

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v12, 0x0

    .line 90
    .end local v12    # "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    :cond_1
    :goto_0
    return-object v12

    .line 76
    .restart local v12    # "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    new-instance v10, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    invoke-direct {v10}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;-><init>()V

    .line 78
    .local v10, "entry":Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 79
    invoke-static {v10}, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;->fromDBEntry(Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;)Lekr;

    move-result-object v11

    .line 80
    .local v11, "splashDataObject":Lekr;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    .end local v10    # "entry":Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;
    .end local v11    # "splashDataObject":Lekr;
    :catch_0
    move-exception v13

    .line 83
    .local v13, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "splash"

    const-string/jumbo v1, "splash"

    const-string/jumbo v2, "queryBySize failed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v9, :cond_1

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    .end local v13    # "throwable":Ljava/lang/Throwable;
    :cond_3
    if-eqz v9, :cond_1

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final b()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 133
    .local v6, "whereClauseSb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "type"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 134
    const-string/jumbo v0, " = ?"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 136
    iget-object v0, p0, Lekz;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lekz;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/rimet/biz/splash/SplashDataEntry;

    const-string/jumbo v3, "tb_splash_data"

    .line 137
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    aput-object v8, v5, v7

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
