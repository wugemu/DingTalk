.class public Licv;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "BlacklistDB.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Licv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Licv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 142
    return-void
.end method

.method protected static a(J)Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    .locals 12
    .param p0, "openId"    # J

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-static {}, Licv;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v7

    .line 40
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    const-string/jumbo v3, "tbblacklist"

    const-class v4, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "openId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    const-string/jumbo v8, "0,1"

    .line 40
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 42
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 44
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {v9}, Licv;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 48
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

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/relation/BlacklistImpl;-><init>()V

    .line 25
    .local v0, "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mOpenId:J

    .line 26
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->fromValue(J)Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mStatus:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 27
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mLastModify:J

    .line 28
    return-object v0
.end method

.method static a(JIJJ)Ljava/util/List;
    .locals 17
    .param p0, "offset"    # J
    .param p2, "count"    # I
    .param p3, "status"    # J
    .param p5, "statusOther"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Licv;->getReadableDatabase()Ljava/lang/String;

    move-result-object v3

    .local v3, "dbName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 66
    const/4 v12, 0x0

    .line 96
    :goto_0
    return-object v12

    .line 69
    :cond_0
    if-gtz p2, :cond_1

    .line 70
    const/16 p2, 0x32

    .line 73
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

    .line 74
    .local v10, "limit":Ljava/lang/String;
    const-string/jumbo v9, "lastModify DESC"

    .line 76
    .local v9, "orderBy":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    const-string/jumbo v5, "tbblacklist"

    const-class v6, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    invoke-static {v6}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "status=? or status=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 77
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x1

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    .line 76
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 78
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 79
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v12, "blacklists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    invoke-static {v13}, Licv;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    move-result-object v11

    .line 86
    .local v11, "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    .end local v11    # "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .end local v12    # "blacklists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 94
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 89
    .restart local v12    # "blacklists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/relation/BlacklistImpl;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p1, "blacklists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/relation/BlacklistImpl;>;"
    invoke-static {}, Licv;->getWritableDatabase()Ljava/lang/String;

    move-result-object v2

    .local v2, "dbName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    :cond_0
    const/4 v4, 0x0

    .line 129
    :goto_0
    return v4

    .line 104
    :cond_1
    const/4 v4, 0x0

    .line 105
    .local v4, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 106
    const/4 v5, 0x0

    .line 108
    .local v5, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    const-class v7, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    const-class v8, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    const-string/jumbo v9, "tbblacklist"

    invoke-static {v8, v9}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v5

    .line 109
    new-instance v1, Lcom/alibaba/wukong/im/relation/BlacklistEntry;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/relation/BlacklistEntry;-><init>()V

    .line 111
    .local v1, "blacklistEntry":Lcom/alibaba/wukong/im/relation/BlacklistEntry;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;

    .line 112
    .local v0, "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    if-eqz v0, :cond_2

    .line 1134
    if-eqz v0, :cond_3

    .line 1137
    iget-wide v8, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mOpenId:J

    iput-wide v8, v1, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->openId:J

    .line 1138
    iget-object v7, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mStatus:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->getStatus()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->status:J

    .line 1139
    iget-wide v8, v0, Lcom/alibaba/wukong/im/relation/BlacklistImpl;->mLastModify:J

    iput-wide v8, v1, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->lastModify:J

    .line 116
    :cond_3
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 117
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 118
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 119
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/relation/BlacklistEntry;->clear()V

    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    goto :goto_1

    .line 122
    .end local v0    # "blacklist":Lcom/alibaba/wukong/im/relation/BlacklistImpl;
    :cond_4
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 127
    :cond_5
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v1    # "blacklistEntry":Lcom/alibaba/wukong/im/relation/BlacklistEntry;
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Licv;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bulkMerge error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 127
    :cond_6
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 127
    :cond_7
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v6
.end method
