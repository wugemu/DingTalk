.class public Lfnb;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "CommonContactDataSourceImpl.java"

# interfaces
.implements Lfmo;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lfmo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 330
    return-void
.end method

.method static synthetic a(Lfnb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnb;

    .prologue
    .line 25
    invoke-virtual {p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfnb;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnb;

    .prologue
    .line 25
    iget-object v0, p0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic c(Lfnb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnb;

    .prologue
    .line 25
    invoke-virtual {p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lfnb;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnb;

    .prologue
    .line 25
    iget-object v0, p0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 9
    .param p1, "uid"    # J

    .prologue
    .line 181
    iget-object v0, p0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v3, "tb_common_contact"

    const-string/jumbo v4, "uid = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)I
    .locals 18
    .param p1, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v2, 0x0

    .line 126
    :goto_0
    return v2

    .line 87
    :cond_0
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 88
    .local v14, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v15, 0x0

    .line 90
    .local v15, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-class v5, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v6, "tb_common_contact"

    .line 91
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v15

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/user/entry/CommonContactEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Lcom/alibaba/android/user/entry/CommonContactEntry;

    move-result-object v11

    .line 93
    .local v11, "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v5, "tb_common_contact"

    const-class v6, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/CommonContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uid = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    move-wide/from16 v16, v0

    .line 94
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 93
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 95
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 97
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    new-instance v13, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-direct {v13}, Lcom/alibaba/android/user/entry/CommonContactEntry;-><init>()V

    .line 99
    .local v13, "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    invoke-virtual {v13, v12}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 100
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    .line 101
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    .line 102
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v13    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    :cond_1
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_2
    const-string/jumbo v2, "common_contact_chat"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    const-wide/16 v2, 0x1

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    .line 115
    :cond_3
    :goto_1
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    add-long/2addr v2, v4

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->count:J

    .line 116
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    .line 119
    :cond_4
    invoke-virtual {v11, v15}, Lcom/alibaba/android/user/entry/CommonContactEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 120
    invoke-interface {v15}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 121
    invoke-interface {v15}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 122
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    invoke-static {v15}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 126
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 105
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .end local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-static {v15}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2

    .line 110
    .restart local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_4
    const-string/jumbo v2, "common_contact_ding"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 111
    const-wide/16 v2, 0x1

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    goto :goto_1

    .line 112
    :cond_6
    const-string/jumbo v2, "common_contact_tele"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    const-wide/16 v2, 0x1

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;I)I
    .locals 18
    .param p1, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .param p2, "source"    # I

    .prologue
    .line 131
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 132
    :cond_0
    const/4 v2, 0x0

    .line 176
    :goto_0
    return v2

    .line 134
    :cond_1
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 135
    .local v14, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v15, 0x0

    .line 137
    .local v15, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-class v5, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v6, "tb_common_contact"

    .line 138
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v15

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/user/entry/CommonContactEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Lcom/alibaba/android/user/entry/CommonContactEntry;

    move-result-object v11

    .line 140
    .local v11, "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v5, "tb_common_contact"

    const-class v6, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/CommonContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uid = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    move-wide/from16 v16, v0

    .line 141
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 140
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 142
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 144
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    new-instance v13, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-direct {v13}, Lcom/alibaba/android/user/entry/CommonContactEntry;-><init>()V

    .line 146
    .local v13, "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    invoke-virtual {v13, v12}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 147
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    .line 148
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    .line 149
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    .line 150
    iget-wide v2, v13, Lcom/alibaba/android/user/entry/CommonContactEntry;->searchCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->searchCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v13    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    :cond_2
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_3
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 157
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->searchCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->searchCount:J

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->searchModifyTime:J

    .line 166
    :cond_4
    :goto_1
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    add-long/2addr v2, v4

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    add-long/2addr v2, v4

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->searchCount:J

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->count:J

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    .line 169
    invoke-virtual {v11, v15}, Lcom/alibaba/android/user/entry/CommonContactEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 170
    invoke-interface {v15}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 171
    invoke-interface {v15}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 172
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    invoke-static {v15}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 176
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 153
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    .end local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-static {v15}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2

    .line 159
    .restart local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_4
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_CHAT:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 160
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    goto :goto_1

    .line 161
    :cond_6
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_DING:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 162
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    goto :goto_1

    .line 163
    :cond_7
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_TELE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 164
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfnb$1;

    invoke-direct {v3, p0, p1, v0}, Lfnb$1;-><init>(Lfnb;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(I)Ljava/util/List;
    .locals 28
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",modifyTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "orderByString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v5, "tb_common_contact"

    const-class v6, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/CommonContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uid != \'237050\' "

    const/4 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "0, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 219
    .local v22, "cursor":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 220
    .local v20, "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    if-eqz v22, :cond_8

    .line 222
    :try_start_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 223
    .end local v20    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    .local v21, "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 224
    new-instance v24, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-direct/range {v24 .. v24}, Lcom/alibaba/android/user/entry/CommonContactEntry;-><init>()V

    .line 225
    .local v24, "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 226
    invoke-static/range {v24 .. v24}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/CommonContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v19

    .line 227
    .local v19, "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    move-object/from16 v0, p0

    iget-object v10, v0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v13, "tbuser"

    const-class v2, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-static {v2}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "uid = ? "

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/alibaba/android/user/entry/CommonContactEntry;->uid:J

    .line 228
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    const/16 v17, 0x0

    const-string/jumbo v18, "0, 1"

    .line 227
    invoke-virtual/range {v10 .. v18}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v26

    .line 229
    .local v26, "profileCursor":Landroid/database/Cursor;
    if-eqz v26, :cond_0

    .line 231
    :try_start_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 232
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    :try_start_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 279
    .end local v19    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .end local v24    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v26    # "profileCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    .restart local v20    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v2

    .line 235
    .end local v20    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    .restart local v19    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .restart local v21    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    .restart local v24    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .restart local v26    # "profileCursor":Landroid/database/Cursor;
    :cond_1
    :try_start_4
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    new-instance v27, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct/range {v27 .. v27}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 237
    .local v27, "profileEntry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 238
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->uid:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 261
    :try_start_5
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 241
    :cond_2
    :try_start_6
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dataComplete:Z

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isDataComplete:Z

    .line 242
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nick:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    .line 243
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    :try_start_7
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;
    :try_end_7
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 252
    :goto_2
    :try_start_8
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickpinyin:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    .line 253
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->mobile:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    .line 254
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->alias:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    .line 255
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    .line 256
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->email:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    .line 257
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dingTalkId:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    .line 258
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isActive:Z

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 261
    .end local v27    # "profileEntry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_3
    :try_start_9
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 266
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 267
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->e()Lfmp;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    invoke-interface {v2, v4, v5}, Lfmp;->b(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 268
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isFriend:Z

    .line 276
    :cond_4
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 246
    .restart local v27    # "profileEntry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :catch_0
    move-exception v23

    .line 247
    .local v23, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 261
    .end local v23    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v27    # "profileEntry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :catchall_1
    move-exception v2

    :try_start_b
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 250
    .restart local v27    # "profileEntry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_5
    :try_start_c
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    .line 269
    .end local v27    # "profileEntry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_6
    :try_start_d
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 270
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->b()Lfmr;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    invoke-interface {v2, v3}, Lfmr;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 271
    .local v25, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 272
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->localContactName:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 279
    .end local v19    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .end local v24    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v25    # "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v26    # "profileCursor":Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move-object/from16 v20, v21

    .line 282
    .end local v21    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    .restart local v20    # "commonContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    :cond_8
    return-object v20

    .line 279
    :catchall_2
    move-exception v2

    goto/16 :goto_1
.end method

.method public final b(J)Lcom/alibaba/android/user/entry/CommonContactEntry;
    .locals 13
    .param p1, "uid"    # J

    .prologue
    const/4 v7, 0x0

    .line 314
    iget-object v0, p0, Lfnb;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnb;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v3, "tb_common_contact"

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-static {v4}, Lcom/alibaba/android/user/entry/CommonContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uid = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 315
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v8

    move-object v8, v7

    .line 314
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 316
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 318
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v10, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/CommonContactEntry;-><init>()V

    .line 320
    .local v10, "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fillWithCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 327
    .end local v10    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    :goto_0
    return-object v10

    .line 324
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v7

    .line 327
    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
