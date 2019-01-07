.class public final Lesq;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "UserRecommendSourceImpl.java"

# interfaces
.implements Leso;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SELECT count(*) FROM "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tb_user_intimacy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lesq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 335
    if-nez p0, :cond_1

    .line 336
    const/4 v1, 0x0

    .line 359
    :cond_0
    :goto_0
    return-object v1

    .line 338
    :cond_1
    new-instance v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;-><init>()V

    .line 339
    .local v1, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 339
    iput-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    .line 340
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    .line 341
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    .line 342
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 343
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    .line 344
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 345
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    .line 346
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 347
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 350
    const/16 v2, 0xb

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    .line 351
    iget-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_1
    iput-boolean v6, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobileValid:Z

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Throwable;
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "UserRecommendSourceImpl.fromCursor:"

    aput-object v3, v2, v7

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    .line 13050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_0
    const/16 p1, 0x0

    .line 135
    .end local p1    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_1
    :goto_0
    return-object p1

    .line 86
    .restart local p1    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_2
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v17, "insertMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    .line 88
    .local v11, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 89
    .local v19, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v19, :cond_3

    .line 90
    const-string/jumbo v4, "\'"

    invoke-virtual {v11, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\',"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 91
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    .end local v19    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_4
    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 95
    const-string/jumbo v2, "0 builder length"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v5, "search_rec"

    invoke-static {v5, v2, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/16 p1, 0x0

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 100
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v16

    .line 101
    .local v16, "finalBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v4, " in ("

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 102
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "selection":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v13, "dbExistList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-virtual/range {p0 .. p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    const-string/jumbo v5, "tb_user_intimacy"

    const-class v6, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    invoke-static {v6}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 107
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 109
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 110
    invoke-static {v12}, Lesq;->a(Landroid/database/Cursor;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v19

    .line 111
    .restart local v19    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v19, :cond_6

    .line 112
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 115
    .end local v19    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :catch_0
    move-exception v15

    .line 116
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "filterMergeUserList"

    invoke-static {v2, v15}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 122
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dbExistList size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 5073
    const-string/jumbo v5, "search_rec"

    invoke-static {v5, v2, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .local v20, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 130
    .local v14, "dbObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    iget-wide v4, v14, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 131
    .local v18, "insertObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v18, :cond_8

    iget-wide v4, v14, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x2bf20

    cmp-long v4, v4, v8

    if-gez v4, :cond_8

    .line 132
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 118
    .end local v14    # "dbObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .end local v18    # "insertObject":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .end local v20    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v20    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_a
    move-object/from16 p1, v20

    .line 135
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    const/4 v10, 0x0

    .line 140
    invoke-virtual {p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const-string/jumbo v0, "removeUserList is empty"

    new-array v2, v10, [Ljava/lang/Object;

    .line 6073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v10

    .line 160
    :goto_0
    return v7

    .line 145
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 146
    .local v6, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 147
    .local v8, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v8, :cond_2

    .line 148
    iget-wide v2, v8, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 151
    .end local v8    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_4

    .line 152
    const-string/jumbo v0, "removeUserList builder is empty"

    new-array v2, v10, [Ljava/lang/Object;

    .line 7073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v10

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 156
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 157
    .local v9, "whereBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "uid"

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in ("

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 158
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    const-string/jumbo v3, "tb_user_intimacy"

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "deleteCount":I
    const-string/jumbo v0, "removeUserList,size=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 8073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Z)I
    .locals 13
    .param p2, "withLimitCondition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;Z)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    invoke-virtual {p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "dbName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lesq;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 45
    :cond_1
    const-string/jumbo v8, "bulkMergeUserList is empty"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v10, "search_rec"

    invoke-static {v10, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const/4 v2, 0x0

    .line 77
    :goto_0
    return v2

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    .local v2, "effectedRows":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 51
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v7, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    .line 53
    .local v6, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v6, :cond_3

    .line 1306
    if-nez v6, :cond_5

    .line 57
    :cond_4
    :goto_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    const-class v10, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    const-string/jumbo v11, "tb_user_intimacy"

    invoke-virtual {v8, v0, v10, v11, v7}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 58
    .local v4, "id":J
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 59
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-lez v8, :cond_3

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1309
    .end local v4    # "id":J
    :cond_5
    const-string/jumbo v8, "uid"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string/jumbo v8, "score"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->score:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1311
    const-string/jumbo v8, "modifyTime"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->modifidTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1312
    const-string/jumbo v8, "nick"

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v8, "orgId"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1314
    const-string/jumbo v8, "empName"

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string/jumbo v8, "orgName"

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgName:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v8, "depName"

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string/jumbo v8, "avatar"

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v8, "ver"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->version:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :try_start_1
    iget-boolean v8, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobileValid:Z

    if-eqz v8, :cond_4

    .line 1322
    iget-object v8, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1323
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->mobile:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1324
    const-string/jumbo v10, "mobile"

    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1329
    :catch_0
    move-exception v8

    .line 1330
    const/4 v10, 0x2

    :try_start_2
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "UserRecommendSourceImpl.fromCursor:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v8}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v11, "search"

    invoke-static {v11, v8, v10}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 64
    .end local v6    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "bulkMergeUserList Exception"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v10, "search_rec"

    invoke-static {v10, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v8, "withLimitCondition"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v8, "effectedRows"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v8, "db"

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v8, "-404"

    const-string/jumbo v9, "bulkMergeUserList failed"

    invoke-static {v8, v9, v3}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    const-string/jumbo v8, "bulkMergeUserList,size=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 3073
    const-string/jumbo v10, "search_rec"

    invoke-static {v10, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1326
    .restart local v6    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_4
    const-string/jumbo v8, "mobile"

    const-string/jumbo v10, ""

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 74
    .end local v6    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v8

    .line 63
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_7
    :try_start_5
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final a(ILjava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "querySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    const-string/jumbo v3, "tb_user_intimacy"

    const-class v4, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    .line 225
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    .line 9256
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 9257
    :cond_0
    const/4 v5, 0x0

    .line 225
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-gtz p1, :cond_6

    const/4 v8, 0x0

    .line 224
    :goto_1
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 226
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_7

    .line 227
    const-string/jumbo v0, "UserRecommendSourceImpl queryList empty cursor"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 10073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const/4 v11, 0x0

    .line 251
    :goto_2
    return-object v11

    .line 9260
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 9261
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 10044
    const-wide/16 v14, 0x0

    invoke-static {v5, v14, v15}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v14

    .line 9263
    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-lez v5, :cond_2

    .line 9266
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 9267
    const-string/jumbo v5, "uid"

    invoke-virtual {v6, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v8, " in ("

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 9271
    :goto_4
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 9269
    :cond_3
    const-string/jumbo v5, ","

    invoke-virtual {v6, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_4

    .line 9273
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 9274
    const-string/jumbo v5, ") "

    invoke-virtual {v6, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 9277
    :cond_5
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 225
    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 230
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;>;"
    :cond_8
    :goto_5
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 233
    invoke-static {v9}, Lesq;->a(Landroid/database/Cursor;)Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    move-result-object v13

    .line 234
    .local v13, "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    if-eqz v13, :cond_8

    .line 235
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 238
    .end local v13    # "object":Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;
    :catch_0
    move-exception v10

    .line 239
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "UserRecommendSourceImpl queryList exception"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 11073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "db"

    invoke-virtual/range {p0 .. p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v0, "message"

    const-string/jumbo v1, "UserRecommendSourceImpl queryList exception"

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v0, "exception"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v0, "querySize"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v0, "-404"

    const-string/jumbo v1, "UserRecommendSourceImpl queryList failed"

    invoke-static {v0, v1, v12}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-virtual {p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    const-string/jumbo v3, "tb_user_intimacy"

    const-string/jumbo v4, "1"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 167
    .local v6, "deleteCount":I
    const-string/jumbo v0, "removeAll,size=%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 9073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    if-lez v6, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z
    .locals 11
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 174
    if-nez p1, :cond_0

    move v0, v10

    .line 207
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "uid"

    .line 179
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, " = "

    .line 180
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND "

    .line 182
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "orgId"

    .line 183
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, " > 0"

    .line 184
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 186
    .local v9, "whereBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 187
    .local v8, "orgIdsStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 188
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 189
    .local v7, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_1

    iget-wide v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 192
    iget-wide v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 195
    .end local v7    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_2
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 196
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 197
    const-string/jumbo v0, " AND "

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, "orgId"

    .line 198
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, " NOT IN ("

    .line 199
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 200
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    .line 201
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 204
    :cond_3
    invoke-virtual {p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    const-string/jumbo v3, "tb_user_intimacy"

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 207
    .local v6, "deleteCount":I
    if-lez v6, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v10

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-virtual {p0}, Lesq;->k()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/search/recommend/syn/datasource/entry/UserRecommendEntry;

    sget-object v7, Lesq;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 285
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_0
    :goto_0
    return v4

    .line 299
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "UserRecommendSourceImpl getCount exception"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 12073
    const-string/jumbo v7, "search_rec"

    invoke-static {v7, v5, v6}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "db"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v5, "message"

    const-string/jumbo v6, "UserRecommendSourceImpl getCount exception"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v5, "exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v5, "-404"

    const-string/jumbo v6, "UserRecommendSourceImpl getCount failed"

    invoke-static {v5, v6, v3}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method
