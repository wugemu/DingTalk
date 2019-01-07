.class public Leno;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "CommonConversationSourceImpl.java"

# interfaces
.implements Lenl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leno$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Leno;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leno;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 164
    return-void
.end method

.method private a(Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;I)I
    .locals 16
    .param p1, "commonConversationEntry"    # Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    .param p2, "source"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 131
    :goto_0
    return v2

    .line 93
    :cond_0
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 94
    .local v14, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v15, 0x0

    .line 96
    .local v15, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Leno;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Leno;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    const-class v5, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    const-string/jumbo v6, "tb_common_conversation"

    .line 97
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v15

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Leno;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Leno;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    const-string/jumbo v5, "tb_common_conversation"

    const-class v6, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    invoke-static {v6}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Leno$a;->a:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->cid:Ljava/lang/String;

    .line 99
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 98
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 100
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 102
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    new-instance v13, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    invoke-direct {v13}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;-><init>()V

    .line 104
    .local v13, "entry":Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    invoke-virtual {v13, v11}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 105
    iget-wide v2, v13, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->searchCount:J

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->searchCount:J

    .line 106
    iget-wide v2, v13, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->chatCount:J

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->chatCount:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v13    # "entry":Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    :cond_1
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_2
    :goto_1
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 115
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->searchCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->searchCount:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->searchModifyTime:J

    .line 120
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->chatCount:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->searchCount:J

    add-long/2addr v2, v4

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->count:J

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->modifyTime:J

    .line 122
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 123
    invoke-interface {v15}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 124
    invoke-interface {v15}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 125
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    invoke-static {v15}, Leno;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 131
    .end local v11    # "cursor":Landroid/database/Cursor;
    :goto_3
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 108
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 109
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "CommonConversationSourceImpl merge"

    invoke-static {v2, v12}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 126
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 127
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "CommonConversationSourceImpl execute"

    invoke-static {v2, v12}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    invoke-static {v15}, Leno;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_3

    .line 111
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 129
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-static {v15}, Leno;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2

    .line 117
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_7
    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_CHAT:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->getValue()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 118
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->chatCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->chatCount:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)I
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "source"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "commonConversationEntry":Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->toDBEntry(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    move-result-object v0

    .line 84
    :cond_1
    :goto_1
    invoke-direct {p0, v0, p2}, Leno;->a(Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;I)I

    move-result v1

    goto :goto_0

    .line 80
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;->toDBEntry(Ljava/util/Map;)Lcom/alibaba/android/search/datasource/entry/CommonConversationEntry;

    move-result-object v0

    goto :goto_1
.end method

.method protected final k()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;->k()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->latestAuthInfo()Lcom/alibaba/wukong/auth/AuthInfo;

    move-result-object v0

    .line 52
    .local v0, "authInfo":Lcom/alibaba/wukong/auth/AuthInfo;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/auth/AuthInfo;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lieb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    return-object v1
.end method
