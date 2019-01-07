.class public final Lesp;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "GroupRecommendSourceImpl.java"

# interfaces
.implements Lesn;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SELECT count(*) FROM "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tb_group_intimacy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lesp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;-><init>()V

    .line 266
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    .line 267
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->score:D

    .line 268
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->modifidTime:J

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    :cond_0
    const/16 p1, 0x0

    .line 145
    .end local p1    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_1
    :goto_0
    return-object p1

    .line 100
    .restart local p1    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_2
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v17, "insertMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    .line 102
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

    check-cast v19, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .line 103
    .local v19, "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    if-eqz v19, :cond_3

    .line 104
    const-string/jumbo v4, "\'"

    invoke-virtual {v11, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\',"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 105
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    .end local v19    # "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    :cond_4
    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 109
    const/16 p1, 0x0

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 113
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v16

    .line 114
    .local v16, "finalBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "cid"

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

    .line 115
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "selection":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v13, "dbExistList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-virtual/range {p0 .. p0}, Lesp;->k()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "dbName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    const-string/jumbo v5, "tb_group_intimacy"

    const-class v6, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    invoke-static {v6}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 120
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 122
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 123
    invoke-static {v12}, Lesp;->a(Landroid/database/Cursor;)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    move-result-object v19

    .line 124
    .restart local v19    # "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    if-eqz v19, :cond_6

    .line 125
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 128
    .end local v19    # "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    :catch_0
    move-exception v15

    .line 129
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "filterMergeGroupList"

    invoke-static {v2, v15}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v20, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .line 140
    .local v14, "dbObject":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    iget-object v4, v14, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .line 141
    .local v18, "insertObject":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    if-eqz v18, :cond_8

    iget-wide v4, v14, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->modifidTime:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->modifidTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x2bf20

    cmp-long v4, v4, v8

    if-gez v4, :cond_8

    .line 142
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 131
    .end local v14    # "dbObject":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    .end local v18    # "insertObject":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    .end local v20    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v20    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_a
    move-object/from16 p1, v20

    .line 145
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
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    const/4 v10, 0x0

    .line 150
    invoke-virtual {p0}, Lesp;->k()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "dbName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    :cond_0
    const-string/jumbo v0, "removeGroupList is empty"

    new-array v2, v10, [Ljava/lang/Object;

    .line 5073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v10

    .line 173
    :cond_1
    :goto_0
    return v7

    .line 155
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 156
    .local v6, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .line 157
    .local v8, "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    if-eqz v8, :cond_3

    iget-object v2, v8, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    const-string/jumbo v2, "\'"

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\',"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 161
    .end local v8    # "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 162
    const-string/jumbo v0, "removeGroupList builder is empty"

    new-array v2, v10, [Ljava/lang/Object;

    .line 6073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v7, v10

    .line 163
    goto :goto_0

    .line 165
    :cond_5
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 166
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 167
    .local v9, "whereBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "cid"

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

    .line 168
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    const-string/jumbo v3, "tb_group_intimacy"

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 169
    .local v7, "deleteCount":I
    const-string/jumbo v0, "removeGroupList,size=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 7073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-gtz v7, :cond_1

    move v7, v10

    .line 173
    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Z)I
    .locals 12
    .param p2, "withLimitCondition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;Z)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    .local p1, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-virtual {p0}, Lesp;->k()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "dbName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    :cond_0
    if-eqz p2, :cond_1

    .line 47
    invoke-direct {p0, p1}, Lesp;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 59
    :cond_2
    const-string/jumbo v8, "bulkMergeGroupList is empty"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 2073
    const-string/jumbo v10, "search_rec"

    invoke-static {v10, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 62
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, "effectedRows":I
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v7, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    .line 67
    .local v6, "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    if-eqz v6, :cond_4

    .line 2253
    if-nez v6, :cond_5

    .line 71
    :goto_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    const-class v10, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    const-string/jumbo v11, "tb_group_intimacy"

    invoke-virtual {v9, v0, v10, v11, v7}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 72
    .local v4, "id":J
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 73
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_4

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2256
    .end local v4    # "id":J
    :cond_5
    const-string/jumbo v9, "cid"

    iget-object v10, v6, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->cid:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const-string/jumbo v9, "score"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->score:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2258
    const-string/jumbo v9, "modifyTime"

    iget-wide v10, v6, Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;->modifidTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 78
    .end local v6    # "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v8, "bulkMergeGroupList Exception"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v10, "search_rec"

    invoke-static {v10, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v8, "withLimitCondition"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v8, "effectedRows"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v8, "db"

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v8, "-404"

    const-string/jumbo v9, "bulkMergeGroupList failed"

    invoke-static {v8, v9, v3}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    const-string/jumbo v8, "bulkMergeGroupList,size=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 4073
    const-string/jumbo v10, "search_rec"

    invoke-static {v10, v8, v9}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_3

    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v8
.end method

.method public final a(I)Ljava/util/List;
    .locals 14
    .param p1, "querySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    invoke-virtual {p0}, Lesp;->k()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v11, 0x0

    .line 221
    :goto_0
    return-object v11

    .line 194
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    const-string/jumbo v3, "tb_group_intimacy"

    const-class v4, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 196
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 197
    const-string/jumbo v0, "GroupRecommendSourceImpl queryList empty cursor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 10073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const/4 v11, 0x0

    goto :goto_0

    .line 200
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-static {v9}, Lesp;->a(Landroid/database/Cursor;)Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    move-result-object v13

    .line 204
    .local v13, "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    if-eqz v13, :cond_2

    .line 205
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 208
    .end local v13    # "object":Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;
    :catch_0
    move-exception v10

    .line 209
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "GroupRecommendSourceImpl queryList exception"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 11073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "db"

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v0, "message"

    const-string/jumbo v2, "GroupRecommendSourceImpl queryList exception"

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v0, "exception"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v0, "querySize"

    const-string/jumbo v2, "-1"

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v0, "-404"

    const-string/jumbo v2, "GroupRecommendSourceImpl queryList failed"

    invoke-static {v0, v2, v12}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 178
    invoke-virtual {p0}, Lesp;->k()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v0, "removeAll dbname is empty"

    new-array v2, v7, [Ljava/lang/Object;

    .line 8073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    const-string/jumbo v3, "tb_group_intimacy"

    const-string/jumbo v4, "1"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 184
    .local v6, "delete":I
    const-string/jumbo v0, "removeAll,size=%d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 9073
    const-string/jumbo v3, "search_rec"

    invoke-static {v3, v0, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-lez v6, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public final b()J
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    invoke-virtual {p0}, Lesp;->k()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "dbName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    const-wide/16 v6, 0x0

    .line 249
    :goto_0
    return-wide v6

    .line 230
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/search/recommend/syn/datasource/entry/GroupRecommendEntry;

    sget-object v7, Lesp;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 231
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 232
    .local v0, "count":I
    if-eqz v1, :cond_2

    .line 234
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 246
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_2
    :goto_1
    int-to-long v6, v0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "GroupRecommendSourceImpl getCount exception"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 12073
    const-string/jumbo v7, "search_rec"

    invoke-static {v7, v5, v6}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "db"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v5, "message"

    const-string/jumbo v6, "GroupRecommendSourceImpl getCount exception"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v5, "exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v5, "-404"

    const-string/jumbo v6, "GroupRecommendSourceImpl getCount failed"

    invoke-static {v5, v6, v4}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method protected final k()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1190
    const-string/jumbo v0, ""

    .line 1191
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->latestAuthInfo()Lcom/alibaba/wukong/auth/AuthInfo;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1193
    new-array v0, v8, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1}, Lcom/alibaba/wukong/auth/AuthInfo;->getOpenId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "@"

    aput-object v3, v2, v7

    invoke-interface {v1}, Lcom/alibaba/wukong/auth/AuthInfo;->getDomain()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lieb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, ".db"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method
