.class public Laui;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceVerificationImpl.java"

# interfaces
.implements Lauh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Laui;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laui;

    .prologue
    .line 20
    iget-object v0, p0, Laui;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method private d(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 88
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v9, 0x0

    .line 118
    :goto_0
    return v9

    .line 92
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 93
    .local v6, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "id"

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 94
    const-string/jumbo v0, " IN ( "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 96
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 97
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 101
    .local v10, "id":J
    invoke-virtual {v6, v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_2

    .line 103
    const-string/jumbo v0, ", "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 96
    .end local v10    # "id":J
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 106
    :cond_3
    const-string/jumbo v0, " ) "

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 108
    const/4 v9, 0x0

    .line 110
    .local v9, "ret":I
    :try_start_0
    iget-object v0, p0, Laui;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laui;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    const-string/jumbo v3, "tb_calendar_verification"

    .line 113
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "delete verification failed"

    invoke-static {v0, v7}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/db/entry/EntryVerification;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 149
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move-object v4, v9

    .line 189
    :cond_1
    :goto_0
    return-object v4

    .line 153
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "entryVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 156
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v8, "SELECT * FROM "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 157
    const-string/jumbo v8, "tb_calendar_verification"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 158
    const-string/jumbo v8, " WHERE "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 159
    const-string/jumbo v8, "id"

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 160
    const-string/jumbo v8, " IN ( "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 162
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 163
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 166
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 167
    .local v6, "id":J
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v5, v8, :cond_3

    .line 169
    const-string/jumbo v8, ", "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 162
    .end local v6    # "id":J
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    :cond_4
    const-string/jumbo v8, " ) "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 174
    iget-object v8, p0, Laui;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laui;->m()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12, v9}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 175
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 177
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 178
    new-instance v3, Lcom/alibaba/android/calendar/db/entry/EntryVerification;

    invoke-direct {v3}, Lcom/alibaba/android/calendar/db/entry/EntryVerification;-><init>()V

    .line 179
    .local v3, "entry":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    invoke-virtual {v3, v1}, Lcom/alibaba/android/calendar/db/entry/EntryVerification;->fillWithCursor(Landroid/database/Cursor;)V

    .line 180
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 182
    .end local v3    # "entry":Lcom/alibaba/android/calendar/db/entry/EntryVerification;
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "query verification failed"

    invoke-static {v8, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/db/entry/EntryVerification;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 123
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 145
    :cond_1
    return-object v1

    .line 127
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "entryVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 132
    add-int/lit16 v3, v2, 0x1c2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Laui;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "entryBatchVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_3
    add-int/lit16 v2, v2, 0x1c2

    goto :goto_0

    .line 137
    .end local v0    # "entryBatchVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    :cond_4
    add-int/lit16 v3, v2, 0x1c2

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Laui;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "entryBatchVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    goto :goto_1
.end method

.method public final b(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/db/entry/EntryVerification;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "entryVerifications":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/db/entry/EntryVerification;>;"
    const/4 v1, 0x0

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :goto_0
    return v1

    .line 36
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Laui;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laui;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laui$1;

    invoke-direct {v3, p0, p1, v0}, Laui$1;-><init>(Laui;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 66
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 84
    :cond_1
    return v1

    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 72
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 73
    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 74
    add-int/lit16 v2, v0, 0x1c2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Laui;->d(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    .line 81
    :goto_1
    add-int/lit16 v0, v0, 0x1c2

    goto :goto_0

    .line 79
    :cond_3
    add-int/lit16 v2, v0, 0x1c2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Laui;->d(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "DataSourceVerification"

    return-object v0
.end method
