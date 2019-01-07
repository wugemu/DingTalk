.class public final Lbha;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceMeetingMinutesImpl.java"

# interfaces
.implements Lbgz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lbha;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lbha;

    .prologue
    .line 24
    iget-object v0, p0, Lbha;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lbfv;
    .locals 13
    .param p1, "dingId"    # J

    .prologue
    const/4 v12, 0x0

    .line 93
    invoke-static {p1, p2}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v12

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    const/4 v9, 0x0

    .line 99
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lbha;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbha;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;

    const-string/jumbo v3, "tb_ding_meeting_minutes"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "mm_ding_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " = ?"

    aput-object v7, v5, v6

    .line 103
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 104
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 99
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 107
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v11, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;

    invoke-direct {v11}, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;-><init>()V

    .line 109
    .local v11, "entry":Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->fillWithCursor(Landroid/database/Cursor;)V

    .line 111
    invoke-virtual {v11}, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->toMeetingMinutesDetailObject()Lbfv;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    if-eqz v9, :cond_0

    .line 117
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 116
    .end local v11    # "entry":Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;
    :cond_2
    if-eqz v9, :cond_3

    .line 117
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v0, v12

    .line 121
    goto :goto_0

    .line 113
    :catch_0
    move-exception v10

    .line 114
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "[DataSourceMeetingMinutes]query failed"

    invoke-static {v0, v10}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    if-eqz v9, :cond_3

    .line 117
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 116
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 117
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final a(JJ)Z
    .locals 11
    .param p1, "dingId"    # J
    .param p3, "recorderId"    # J

    .prologue
    .line 35
    invoke-static {p1, p2}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 39
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "mm_recorder_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    const/4 v8, 0x0

    .line 44
    .local v8, "ret":I
    :try_start_0
    iget-object v0, p0, Lbha;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbha;->m()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;

    const-string/jumbo v3, "tb_ding_meeting_minutes"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "mm_ding_id"

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v9, "=?"

    aput-object v9, v5, v6

    .line 48
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 49
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 54
    :goto_1
    if-lez v8, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v7

    .line 51
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "[DataSourceMeetingMinutes]update or create failed"

    invoke-static {v0, v7}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 54
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lbfv;)Z
    .locals 7
    .param p1, "meetingMinutesDetailObject"    # Lbfv;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1147
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez p1, :cond_1

    move-object v0, v3

    .line 62
    .local v0, "entryMeetingMinutes":Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;
    :goto_0
    if-nez v0, :cond_2

    .line 87
    :cond_0
    :goto_1
    return v2

    .line 1151
    .end local v0    # "entryMeetingMinutes":Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;

    invoke-direct {v0}, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;-><init>()V

    .line 2024
    iget-wide v4, p1, Lbfv;->a:J

    .line 1152
    iput-wide v4, v0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->dingId:J

    .line 2028
    iget-object v4, p1, Lbfv;->b:Ljava/lang/String;

    .line 1153
    iput-object v4, v0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->content:Ljava/lang/String;

    .line 2032
    iget v4, p1, Lbfv;->c:I

    .line 1154
    iput v4, v0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->contentType:I

    .line 2036
    iget-wide v4, p1, Lbfv;->d:J

    .line 1155
    iput-wide v4, v0, Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;->recorderId:J

    goto :goto_0

    .line 66
    .restart local v0    # "entryMeetingMinutes":Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;
    :cond_2
    iget-object v4, p0, Lbha;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lbha;->m()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lbha$1;

    invoke-direct {v6, p0, v0, v1}, Lbha$1;-><init>(Lbha;Lcom/alibaba/android/ding/db/entry/EntryMeetingMinutes;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v4, v5, v6, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 87
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "DataSourceMeetingMinutesImpl"

    return-object v0
.end method
