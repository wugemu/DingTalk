.class public Lidb;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "FollowDB.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lidb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 154
    return-void
.end method

.method protected static a(J)Lcom/alibaba/wukong/im/relation/FollowImpl;
    .locals 12
    .param p0, "openId"    # J

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-static {}, Lidb;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v7

    .line 53
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/relation/FollowEntry;

    const-string/jumbo v3, "tbfollow"

    const-class v4, Lcom/alibaba/wukong/im/relation/FollowEntry;

    .line 54
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "openId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 55
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    const-string/jumbo v8, "0,1"

    .line 53
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 57
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {v9}, Lidb;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/relation/FollowImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 63
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/relation/FollowImpl;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/wukong/im/relation/FollowImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/relation/FollowImpl;-><init>()V

    .line 27
    .local v0, "followImpl":Lcom/alibaba/wukong/im/relation/FollowImpl;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mOpenId:J

    .line 28
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->fromValue(J)Lcom/alibaba/wukong/im/Follow$FollowStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mStatus:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .line 29
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mTag:J

    .line 30
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/FollowImpl;->mLastModify:J

    .line 32
    return-object v0
.end method

.method static a(JIJ)Ljava/util/List;
    .locals 18
    .param p0, "offset"    # J
    .param p2, "count"    # I
    .param p3, "status"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/FollowImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lidb;->getReadableDatabase()Ljava/lang/String;

    move-result-object v3

    .local v3, "dbName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 81
    const/4 v14, 0x0

    .line 113
    :goto_0
    return-object v14

    .line 84
    :cond_0
    if-gtz p2, :cond_1

    .line 85
    const/16 p2, 0x32

    .line 87
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "limit":Ljava/lang/String;
    const-string/jumbo v9, "lastModify DESC"

    .line 90
    .local v9, "orderBy":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wukong/im/relation/FollowEntry;

    const-string/jumbo v5, "tbfollow"

    const-class v6, Lcom/alibaba/wukong/im/relation/FollowEntry;

    .line 91
    invoke-static {v6}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "status=? or status=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 92
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x1

    sget-object v16, Lcom/alibaba/wukong/im/Follow$FollowStatus;->BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->getStatus()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    .line 90
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 94
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 95
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .local v14, "follows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-static {v11}, Lidb;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/relation/FollowImpl;

    move-result-object v13

    .line 103
    .local v13, "followImpl":Lcom/alibaba/wukong/im/relation/FollowImpl;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 106
    .end local v13    # "followImpl":Lcom/alibaba/wukong/im/relation/FollowImpl;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v14    # "follows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    :catch_0
    move-exception v12

    .line 111
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 106
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "follows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    :cond_3
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/FollowImpl;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    .local p1, "follows":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/FollowImpl;>;"
    invoke-static {}, Lidb;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 141
    :goto_0
    return v3

    .line 120
    :cond_1
    const/4 v3, 0x0

    .line 121
    .local v3, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 123
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v6, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/relation/FollowImpl;

    .line 125
    .local v2, "follow":Lcom/alibaba/wukong/im/relation/FollowImpl;
    if-eqz v2, :cond_2

    .line 1145
    if-eqz v2, :cond_3

    .line 1148
    const-string/jumbo v8, "openId"

    iget-wide v10, v2, Lcom/alibaba/wukong/im/relation/FollowImpl;->mOpenId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1149
    const-string/jumbo v8, "status"

    iget-object v9, v2, Lcom/alibaba/wukong/im/relation/FollowImpl;->mStatus:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->getStatus()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1150
    const-string/jumbo v8, "tag"

    iget-wide v10, v2, Lcom/alibaba/wukong/im/relation/FollowImpl;->mTag:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1151
    const-string/jumbo v8, "lastModify"

    iget-wide v10, v2, Lcom/alibaba/wukong/im/relation/FollowImpl;->mLastModify:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    const-class v9, Lcom/alibaba/wukong/im/relation/FollowEntry;

    const-string/jumbo v10, "tbfollow"

    invoke-virtual {v8, v0, v9, v10, v6}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 130
    .local v4, "id":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 133
    :cond_4
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    .end local v2    # "follow":Lcom/alibaba/wukong/im/relation/FollowImpl;
    .end local v4    # "id":J
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v7, Lidb;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "bulkMerge error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v7
.end method
