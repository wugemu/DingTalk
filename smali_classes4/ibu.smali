.class public final Libu;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "MessageDs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Libu$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 50
    return-void
.end method

.method protected static a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    .locals 9
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "mid"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 499
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    .line 501
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 502
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move-object v4, p3

    .line 501
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;JZ)I
    .locals 9
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "mid"    # J
    .param p3, "purge"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 126
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v0, -0x1

    .line 134
    :goto_0
    return v0

    .line 128
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 129
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mid=?"

    new-array v5, v6, [Ljava/lang/String;

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 132
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "messageStatus"

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mid=?"

    new-array v6, v6, [Ljava/lang/String;

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)I
    .locals 14
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "message2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "type"    # Lcom/alibaba/wukong/im/Message$CreatorType;

    .prologue
    .line 753
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 754
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 793
    :goto_0
    return v9

    .line 756
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-interface/range {p1 .. p2}, Lcom/alibaba/wukong/im/Message;->compareTo(Ljava/lang/Object;)I

    move-result v12

    .line 757
    .local v12, "ret":I
    if-nez v12, :cond_2

    .line 758
    const/4 v9, 0x0

    goto :goto_0

    .line 759
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 760
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 761
    .local v11, "isMinus":Z
    if-gez v12, :cond_3

    .line 762
    const/4 v11, 0x1

    .line 763
    const-string/jumbo v0, "createdAt>=? AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "createdAt<=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :goto_1
    const-string/jumbo v0, " AND mid!=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string/jumbo v0, " AND messageStatus!=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    if-nez p3, :cond_4

    .line 771
    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x2

    .line 772
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 779
    .local v6, "selectionArgs":[Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Libu$a;->b:[Ljava/lang/String;

    .line 780
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "createdAt ASC"

    const-string/jumbo v8, "0,1"

    .line 779
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 781
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 783
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 784
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 785
    .local v9, "count":I
    if-eqz v11, :cond_5

    .line 786
    neg-int v9, v9

    .line 790
    .end local v9    # "count":I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 765
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string/jumbo v0, "createdAt<=? AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "createdAt>=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 774
    :cond_4
    const-string/jumbo v0, " AND creatorType=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x2

    .line 776
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x4

    .line 777
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_2

    .line 790
    .restart local v9    # "count":I
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9    # "count":I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 790
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 18
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 875
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    const/4 v13, 0x0

    .line 904
    :goto_0
    return v13

    .line 877
    :cond_0
    const/4 v13, 0x0

    .line 878
    .local v13, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 880
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 881
    .local v11, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 882
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 885
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {v11}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v10

    .line 886
    .local v10, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "ext"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string/jumbo v2, "content"

    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-wide v2, v11, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v6}, Libu;->a(Ljava/lang/String;JLandroid/content/ContentValues;)I

    move-result v12

    .line 889
    .local v12, "r":I
    if-lez v12, :cond_1

    .line 891
    invoke-virtual {v11}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 892
    iget-wide v0, v11, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    move-wide/from16 v16, v0

    .line 5908
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 893
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 5910
    :cond_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v5, "tblastmsg"

    const-string/jumbo v7, "mid=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 5911
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v3

    move-object/from16 v3, p0

    .line 5910
    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    .line 895
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v12    # "r":I
    :catch_0
    move-exception v9

    .line 896
    .local v9, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 902
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v11    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v2

    .line 900
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 902
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)I
    .locals 14
    .param p0, "cid"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :cond_0
    const/4 v9, 0x0

    .line 523
    :goto_0
    return v9

    .line 510
    :cond_1
    const/4 v9, 0x0

    .line 511
    .local v9, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 513
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 514
    .local v7, "mid":Ljava/lang/Long;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mid=?"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 515
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v4

    move-object/from16 v4, p2

    .line 514
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 516
    .local v8, "r":I
    if-lez v8, :cond_2

    .line 517
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 519
    .end local v7    # "mid":Ljava/lang/Long;
    .end local v8    # "r":I
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/List;Z)I
    .locals 14
    .param p0, "cid"    # Ljava/lang/String;
    .param p2, "purge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v9, -0x1

    .line 166
    :goto_0
    return v9

    .line 144
    :cond_1
    const/4 v9, 0x0

    .line 145
    .local v9, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 147
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "messageStatus"

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 149
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 148
    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 152
    .local v7, "mid":Ljava/lang/Long;
    if-eqz p2, :cond_3

    .line 153
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 154
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 159
    .local v8, "r":I
    :goto_2
    if-lez v8, :cond_2

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 156
    .end local v8    # "r":I
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mid=?"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v4

    move-object v4, v10

    .line 156
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "r":I
    goto :goto_2

    .line 162
    .end local v7    # "mid":Ljava/lang/Long;
    .end local v8    # "r":I
    :cond_4
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method protected static a(Ljava/util/Map;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "messages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 418
    new-instance v10, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v11, "database not writable"

    invoke-direct {v10, v11}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 419
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 420
    :cond_1
    const/4 v7, 0x0

    .line 449
    :cond_2
    :goto_0
    return v7

    .line 422
    :cond_3
    const/4 v7, 0x0

    .line 423
    .local v7, "ret":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v6, "messagesSuccess":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 426
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v9, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v2, :cond_4

    .line 430
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 431
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, "tableName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 433
    .local v3, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-static {v0, v3, v9}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Landroid/content/ContentValues;)V

    .line 434
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v11

    const-class v12, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-virtual {v11, v1, v12, v8, v9}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 436
    .local v4, "id":J
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-lez v11, :cond_5

    .line 437
    add-int/lit8 v7, v7, 0x1

    .line 438
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_5
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 444
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v3    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v4    # "id":J
    .end local v8    # "tableName":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v10

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v10

    .line 442
    .restart local v9    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 446
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 447
    invoke-static {}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->receivers(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;JJJLcom/alibaba/wukong/Callback;)J
    .locals 45
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "limit"    # J
    .param p3, "firstCachedMessage"    # J
    .param p5, "piece"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 192
    .local p7, "messageProgress":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v5

    .local v5, "dbName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v4, p1, v6

    if-ltz v4, :cond_0

    const-wide/16 v6, 0x7d0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2

    .line 193
    :cond_0
    const-wide/16 v30, -0x1

    .line 366
    :cond_1
    :goto_0
    return-wide v30

    .line 196
    :cond_2
    const-wide/16 v30, 0x0

    .line 197
    .local v30, "ret":J
    const-wide/16 v12, -0x1

    .line 200
    .local v12, "anchorToRemove":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v8, 0x1cf7c5800L

    sub-long v22, v6, v8

    .line 202
    .local v22, "months3Ago":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v21, "months3AgoBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "SELECT "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v4, " FROM "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static/range {p0 .. p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v4, " WHERE "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v4, "<"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v4, " ORDER BY "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v4, " DESC LIMIT 1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    const-class v6, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 217
    .local v24, "months3AgoCursor":Landroid/database/Cursor;
    if-eqz v24, :cond_4

    .line 221
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 228
    :cond_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_4
    :goto_1
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v38, "w1Builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "SELECT "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v4, " FROM "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static/range {p0 .. p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v4, " ORDER BY "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v4, " DESC LIMIT 1 OFFSET "

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    move-object/from16 v0, v38

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    const-class v6, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 245
    .local v39, "w1Cursor":Landroid/database/Cursor;
    if-eqz v39, :cond_6

    .line 249
    :try_start_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 251
    .local v40, "w1CreateAt":J
    move-wide/from16 v0, v40

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    .line 257
    .end local v40    # "w1CreateAt":J
    :cond_5
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_6
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v12, v6

    if-gtz v4, :cond_7

    .line 262
    const-wide/16 v30, -0x2

    goto/16 :goto_0

    .line 225
    .end local v38    # "w1Builder":Ljava/lang/StringBuilder;
    .end local v39    # "w1Cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v20

    .line 226
    .local v20, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v4

    .line 254
    .restart local v38    # "w1Builder":Ljava/lang/StringBuilder;
    .restart local v39    # "w1Cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v20

    .line 255
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v4

    .line 266
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v4, p3, v6

    if-lez v4, :cond_8

    .line 267
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 270
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v15, "countBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "SELECT COUNT(*) FROM "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static/range {p0 .. p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo v4, " WHERE "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v4, "createdAt"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v4, " <= "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    const-class v6, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 280
    .local v18, "countCursor":Landroid/database/Cursor;
    const-wide/16 v34, 0x0

    .line 281
    .local v34, "totalCount":J
    if-eqz v18, :cond_a

    .line 285
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 286
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v34

    .line 292
    :cond_9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_a
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-gtz v4, :cond_b

    .line 297
    const-wide/16 v30, -0x3

    goto/16 :goto_0

    .line 289
    :catch_2
    move-exception v20

    .line 290
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 292
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v4

    .line 301
    :cond_b
    move-wide/from16 v36, v34

    .line 302
    .local v36, "totalMessageToRemove":J
    :cond_c
    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-lez v4, :cond_1

    .line 304
    const-wide/16 v6, 0x7d0

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 305
    .local v16, "count":J
    sub-long v34, v34, v16

    .line 307
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v25, "pieceBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "SELECT "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v4, " FROM "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static/range {p0 .. p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v4, " ORDER BY "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v4, " ASC LIMIT 1 OFFSET "

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    const-class v6, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 319
    .local v26, "pieceCursor":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 320
    .local v10, "anchor":J
    if-eqz v26, :cond_e

    .line 323
    :try_start_6
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 324
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-wide v10

    .line 330
    :cond_d
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_e
    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v4, v10, v6

    if-lez v4, :cond_1

    .line 338
    sub-long v6, v36, v34

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    div-long v6, v6, v36

    long-to-int v14, v6

    .line 340
    .local v14, "cleanProgress":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 343
    :try_start_7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v27, "removeBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "createdAt"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string/jumbo v4, "<?"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 348
    .local v32, "startTime":J
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    const-class v6, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static/range {p0 .. p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/16 v42, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v43

    aput-object v43, v9, v42

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    .line 349
    .local v28, "removedMessageCount":J
    add-long v30, v30, v28

    .line 351
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v19, "deleteTrace":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "piecesTrace cid:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ;time:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v32

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ;count:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ;actual pieces removed:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "  ;progress:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string/jumbo v4, "[TAG] MsgCache"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4018
    const-string/jumbo v7, "im"

    invoke-static {v4, v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 358
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 361
    if-eqz p7, :cond_c

    .line 362
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-interface {v0, v4, v14}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    goto/16 :goto_4

    .line 327
    .end local v14    # "cleanProgress":I
    .end local v19    # "deleteTrace":Ljava/lang/StringBuilder;
    .end local v27    # "removeBuilder":Ljava/lang/StringBuilder;
    .end local v28    # "removedMessageCount":J
    .end local v32    # "startTime":J
    :catch_3
    move-exception v20

    .line 328
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 330
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v4

    .line 358
    .restart local v14    # "cleanProgress":I
    :catchall_4
    move-exception v4

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v4
.end method

.method protected static a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)J
    .locals 12
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 54
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 55
    new-instance v5, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v6, "database not writable"

    invoke-direct {v5, v6}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move-wide v2, v6

    .line 76
    :cond_2
    :goto_0
    return-wide v2

    .line 60
    :cond_3
    const/4 v4, 0x0

    .line 62
    .local v4, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    const-class v8, Lcom/alibaba/wukong/im/message/MessageEntry;

    const-class v9, Lcom/alibaba/wukong/im/message/MessageEntry;

    .line 63
    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-virtual {v5, v0, v8, v9}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v4

    .line 64
    new-instance v1, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/message/MessageEntry;-><init>()V

    .line 65
    .local v1, "entry":Lcom/alibaba/wukong/im/message/MessageEntry;
    invoke-static {p0, p1, v1}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageEntry;)V

    .line 66
    invoke-virtual {v1, v4}, Lcom/alibaba/wukong/im/message/MessageEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 67
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 68
    .local v2, "ret":J
    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 72
    :cond_4
    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    .line 73
    invoke-static {}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->receiver(Lcom/alibaba/wukong/im/message/MessageImpl;)V

    goto :goto_0

    .line 70
    .end local v1    # "entry":Lcom/alibaba/wukong/im/message/MessageEntry;
    .end local v2    # "ret":J
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    :cond_5
    throw v5
.end method

.method public static a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 14
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 1030
    if-nez p0, :cond_0

    const/4 v7, 0x0

    .line 1096
    :goto_0
    return-object v7

    .line 1031
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v7

    .line 1032
    .local v7, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    iput-object p1, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1033
    const/4 v11, 0x2

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 1034
    const/4 v11, 0x3

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 1035
    const/4 v11, 0x4

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 1036
    const/4 v11, 0x5

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Lcom/alibaba/wukong/im/Message$MessageType;->fromValue(I)Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 1037
    const/4 v11, 0x6

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Lcom/alibaba/wukong/im/Message$CreatorType;->fromValue(I)Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 1038
    const/4 v11, 0x7

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 1039
    const/16 v11, 0x8

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 1040
    const/16 v11, 0x9

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Lcom/alibaba/wukong/im/Message$MessageStatus;->fromValue(I)Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 1041
    const/16 v11, 0xa

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 1042
    const/16 v11, 0xb

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 1044
    const/16 v11, 0xc

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v12, 0xd

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->fromString(ILjava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1046
    const/16 v11, 0xe

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v12, v11

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    .line 1047
    const/16 v11, 0xf

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v11}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1048
    const/16 v11, 0x10

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 1049
    const/16 v11, 0x11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v11}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1051
    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v11, :cond_3

    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v11, v11, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    if-eqz v11, :cond_3

    .line 1052
    iget-object v6, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$MediaContent;

    .line 1053
    .local v6, "mediaContent":Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1054
    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v12, "authMediaId"

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1055
    .local v2, "authUrl":Ljava/lang/String;
    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->setAuthUrl(Ljava/lang/String;)V

    .line 1056
    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    instance-of v11, v11, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    if-eqz v11, :cond_2

    .line 1057
    iget-object v10, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 1058
    .local v10, "videoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1059
    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v12, "picAuthMediaId"

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1060
    .local v1, "authPicUrl":Ljava/lang/String;
    invoke-static {v1}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->setPicAuthUrl(Ljava/lang/String;)V

    .line 1062
    .end local v1    # "authPicUrl":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1063
    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v12, "picAuthCode"

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1064
    .local v8, "picAuthCode":Ljava/lang/String;
    invoke-interface {v10, v8}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->setPicAuthCode(Ljava/lang/String;)V

    .line 1068
    .end local v2    # "authUrl":Ljava/lang/String;
    .end local v8    # "picAuthCode":Ljava/lang/String;
    .end local v10    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :cond_2
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->getAuthCode()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1069
    iget-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v12, "authCode"

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1070
    .local v0, "authCode":Ljava/lang/String;
    invoke-interface {v6, v0}, Lcom/alibaba/wukong/im/MessageContent$MediaContent;->setAuthCode(Ljava/lang/String;)V

    .line 1073
    .end local v0    # "authCode":Ljava/lang/String;
    .end local v6    # "mediaContent":Lcom/alibaba/wukong/im/MessageContent$MediaContent;
    :cond_3
    const/16 v11, 0x12

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget-object v12, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v12}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v12

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 1075
    const/16 v11, 0x13

    :try_start_0
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1076
    .local v4, "extInfo":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1077
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "atIds"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1079
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Libt;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    .line 1080
    const-string/jumbo v11, "tplId"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    .line 1081
    const-string/jumbo v11, "local_extras"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v11}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1082
    const-string/jumbo v11, "flag"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1083
    const-string/jumbo v11, "isDecrypt"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1084
    const-string/jumbo v11, "atStatus"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Libt;->f(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v4    # "extInfo":Ljava/lang/String;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v9    # "str":Ljava/lang/String;
    :cond_4
    :goto_2
    const/16 v11, 0x14

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 1090
    const/16 v11, 0x15

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 1091
    const/16 v11, 0x16

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    .line 1092
    const/16 v11, 0x17

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 1093
    const/16 v11, 0x18

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 1094
    const/16 v11, 0x19

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Libt;->e(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v11

    iput-object v11, v7, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1095
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    goto/16 :goto_0

    .line 1073
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1086
    :catch_0
    move-exception v3

    .line 1087
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "mid"    # J
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    const/4 v4, 0x0

    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 626
    .end local v0    # "dbName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .restart local v0    # "dbName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "mid=? AND messageStatus!=?"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 627
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x1

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const-string/jumbo v5, "0, 1"

    move-object v1, p0

    move-object v6, p3

    .line 626
    invoke-static/range {v0 .. v6}, Libu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "senderId"    # J
    .param p3, "localId"    # Ljava/lang/String;
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    const/4 v4, 0x0

    .line 633
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 636
    .end local v0    # "dbName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .restart local v0    # "dbName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "senderId=? AND localId=? AND messageStatus!=?"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 637
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x1

    aput-object p3, v3, v1

    const/4 v1, 0x2

    sget-object v5, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    const-string/jumbo v5, "0, 1"

    move-object v1, p0

    move-object v6, p4

    .line 636
    invoke-static/range {v0 .. v6}, Libu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 614
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 615
    .end local v0    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 617
    :goto_0
    return-object v1

    .restart local v0    # "dbName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "messageStatus!=?"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "createdAt DESC"

    const-string/jumbo v5, "0, 1"

    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Libu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v1

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 15
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "current"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p2, "offset"    # I
    .param p3, "type"    # Lcom/alibaba/wukong/im/Message$CreatorType;
    .param p4, "isContinued"    # Z
    .param p5, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 799
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v3

    .local v3, "dbName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 800
    .end local v3    # "dbName":Ljava/lang/String;
    :cond_0
    const/16 p1, 0x0

    .line 849
    .end local p1    # "current":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_1
    :goto_0
    return-object p1

    .line 802
    .restart local v3    # "dbName":Ljava/lang/String;
    .restart local p1    # "current":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    if-eqz p2, :cond_1

    .line 805
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 808
    .local v11, "count":I
    if-lez p2, :cond_5

    .line 809
    const-string/jumbo v7, "createdAt>=? AND mid!=?"

    .line 810
    .local v7, "selection":Ljava/lang/String;
    const-string/jumbo v9, "createdAt ASC"

    .line 815
    .local v9, "orderBy":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND messageStatus!=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 817
    if-eqz p3, :cond_6

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND creatorType=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 819
    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 820
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x3

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    .line 825
    .local v8, "selectionArgs":[Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 826
    .local v10, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/wukong/im/message/MessageEntry;

    .line 827
    invoke-static {v6}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 826
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 829
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 831
    if-nez p4, :cond_3

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v11, :cond_8

    .line 832
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 833
    move-object/from16 v0, p5

    invoke-static {v12, v0}, Libu;->a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v14

    .line 835
    .local v14, "tmp":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v14}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 836
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v13, "l":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-static {v3, p0, v13}, Libu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    .end local v13    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object/from16 p1, v14

    goto/16 :goto_0

    .line 812
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "tmp":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_5
    const-string/jumbo v7, "createdAt<=? AND mid!=?"

    .line 813
    .restart local v7    # "selection":Ljava/lang/String;
    const-string/jumbo v9, "createdAt DESC"

    .restart local v9    # "orderBy":Ljava/lang/String;
    goto/16 :goto_1

    .line 822
    :cond_6
    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->createdAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 823
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_2

    .line 841
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_7
    if-eqz p4, :cond_8

    .line 846
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_9
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 846
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 13
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
    .param p6, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 643
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    const-class v3, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    .line 644
    invoke-static {v2}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 643
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 645
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 647
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    move-object/from16 v0, p6

    invoke-static {v10, v0}, Libu;->a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v12

    .line 650
    .local v12, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    invoke-virtual {v12}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v11, "l":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-static {p0, p1, v11}, Libu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    .end local v11    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 661
    .end local v12    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    :goto_0
    return-object v12

    .line 658
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static a(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "diff"    # J
    .param p3, "count"    # I
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sbLog":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "deleteByCid cid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, " count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, " cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1100
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1101
    .local v1, "msgTables":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v3

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SELECT name FROM sqlite_master WHERE type=\'table\' and name like \'tbmsg_%\'"

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1102
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1104
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1105
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1109
    .end local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1112
    :cond_1
    const-string/jumbo v3, "[TAG] MsgCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MessageDS local cache size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)Ljava/util/List;
    .locals 15
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;
    .param p5, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p6, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v10

    .line 670
    .local v10, "cid":Ljava/lang/String;
    invoke-static {v10}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "tableName":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    sget v1, Libu$a;->a:I

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    .local v13, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v1

    const-class v3, Lcom/alibaba/wukong/im/message/MessageEntry;

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    .line 673
    invoke-static {v2}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 672
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 674
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v12, "encryptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v11, :cond_3

    .line 677
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    move-object/from16 v0, p5

    invoke-static {v11, v0}, Libu;->a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v14

    .line 679
    .local v14, "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v14, :cond_0

    .line 680
    if-eqz p6, :cond_1

    .line 681
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 685
    :goto_1
    invoke-virtual {v14}, Lcom/alibaba/wukong/im/message/MessageImpl;->isDecrypted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 691
    .end local v14    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 683
    .restart local v14    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_1
    :try_start_1
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 691
    .end local v14    # "object":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 695
    :cond_3
    invoke-static {p0, v10, v12}, Libu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 696
    return-object v13
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 14
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 372
    new-instance v10, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v11, "database not writable"

    invoke-direct {v10, v11}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 373
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 374
    :cond_1
    const/4 v5, 0x0

    .line 412
    :cond_2
    :goto_0
    return-object v5

    .line 376
    :cond_3
    const/4 v8, 0x0

    .line 377
    .local v8, "statement":Lcom/alibaba/bee/SQLiteStatement;
    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v5, "retMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v3, "ignoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const-string/jumbo v10, "INSERT"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v10, "IGNORE"

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 385
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    const-class v11, Lcom/alibaba/wukong/im/message/MessageEntry;

    const-class v12, Lcom/alibaba/wukong/im/message/MessageEntry;

    const/4 v13, 0x4

    .line 386
    invoke-static {v12, v9, v13}, Lcom/alibaba/bee/DatabaseUtils;->getInsertWithOnConflict(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 385
    invoke-virtual {v10, v1, v11, v12}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v8

    .line 387
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/message/MessageEntry;-><init>()V

    .line 388
    .local v2, "entry":Lcom/alibaba/wukong/im/message/MessageEntry;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 389
    .local v4, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v4, :cond_4

    .line 391
    invoke-static {p0, v4, v2}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageEntry;)V

    .line 392
    invoke-virtual {v2, v8}, Lcom/alibaba/wukong/im/message/MessageEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 393
    invoke-interface {v8}, Lcom/alibaba/bee/SQLiteStatement;->executeInsert()J

    move-result-wide v6

    .line 394
    .local v6, "ret":J
    invoke-interface {v8}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 395
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageEntry;->clear()V

    .line 396
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-lez v11, :cond_6

    .line 397
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 406
    .end local v2    # "entry":Lcom/alibaba/wukong/im/message/MessageEntry;
    .end local v4    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "ret":J
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 407
    :cond_5
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v10

    .line 399
    .restart local v2    # "entry":Lcom/alibaba/wukong/im/message/MessageEntry;
    .restart local v4    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v6    # "ret":J
    :cond_6
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    .end local v4    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "ret":J
    :cond_7
    const-string/jumbo v10, "[TAG] MsgDB"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[DB] bInsert cid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " sz="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5018
    const-string/jumbo v12, "im"

    invoke-static {v10, v11, v12}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    if-eqz v8, :cond_8

    invoke-interface {v8}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 407
    :cond_8
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 410
    invoke-static {}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->receivers(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 948
    if-nez p1, :cond_0

    .line 981
    :goto_0
    return-void

    .line 949
    :cond_0
    const-string/jumbo v2, "cid"

    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string/jumbo v2, "localId"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string/jumbo v2, "mid"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 952
    const-string/jumbo v2, "senderId"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 953
    const-string/jumbo v2, "type"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Message$MessageType;->typeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    const-string/jumbo v2, "creatorType"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string/jumbo v2, "createdAt"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    const-string/jumbo v2, "lastModify"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 957
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v1

    .line 958
    .local v1, "status":I
    :goto_1
    const-string/jumbo v2, "messageStatus"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string/jumbo v2, "unreadCount"

    iget v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 960
    const-string/jumbo v2, "totalCount"

    iget v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-eqz v2, :cond_1

    .line 962
    const-string/jumbo v2, "contentType"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    const-string/jumbo v2, "content"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_1
    const-string/jumbo v2, "tag"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 966
    const-string/jumbo v2, "extension"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string/jumbo v2, "memberTag"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 968
    const-string/jumbo v2, "memberExtension"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string/jumbo v3, "isRead"

    iget-boolean v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string/jumbo v2, "recall"

    iget v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    const-string/jumbo v2, "sentlocaltime"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 973
    :try_start_0
    const-string/jumbo v2, "ext"

    invoke-static {p1}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :goto_3
    const-string/jumbo v2, "viewStatus"

    iget v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    const-string/jumbo v2, "shieldStatus"

    iget v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string/jumbo v2, "lastUpdateUnreadCount"

    iget-wide v4, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 980
    const-string/jumbo v2, "atOpenIdObjectListString"

    iget-object v3, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3}, Libt;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 957
    .end local v1    # "status":I
    :cond_2
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v1

    goto/16 :goto_1

    .line 969
    .restart local v1    # "status":I
    :cond_3
    sget-object v2, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v2

    goto :goto_2

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageEntry;)V
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "object"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p2, "entry"    # Lcom/alibaba/wukong/im/message/MessageEntry;

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 985
    :cond_0
    iput-object p0, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->cid:Ljava/lang/String;

    .line 986
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    iput-object v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->localId:Ljava/lang/String;

    .line 987
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->mid:J

    .line 988
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->senderId:J

    .line 989
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageType;->typeValue()I

    move-result v2

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->type:I

    .line 990
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v2

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->creatorType:I

    .line 991
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->createdAt:J

    .line 992
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->lastModify:J

    .line 993
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    :goto_1
    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->messageStatus:I

    .line 994
    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->unreadCount:I

    .line 995
    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->totalCount:I

    .line 996
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-eqz v2, :cond_1

    .line 997
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->contentType:I

    .line 998
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->content:Ljava/lang/String;

    .line 1000
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->tag:J

    .line 1001
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->extension:Ljava/lang/String;

    .line 1002
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->memberTag:J

    .line 1003
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->memberExtension:Ljava/lang/String;

    .line 1004
    iget-boolean v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v2

    :goto_2
    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->isRead:I

    .line 1005
    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->recall:I

    .line 1006
    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->shieldStatus:I

    .line 1007
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->sentLocalTime:J

    .line 1008
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Libt;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->atOpenIdObjectString:Ljava/lang/String;

    .line 1010
    :try_start_0
    invoke-static {p1}, Libt;->c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->ext:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_3

    .line 1022
    const-string/jumbo v2, "key_encrypt_text"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->putMemoryCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :cond_3
    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    iput v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->viewStatus:I

    .line 1025
    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    iput-wide v2, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->lastUpdateUnreadCount:J

    goto/16 :goto_0

    .line 993
    :cond_4
    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    goto :goto_1

    .line 1004
    :cond_5
    sget-object v2, Lcom/alibaba/wukong/im/Message$ReadStatus;->UNREAD:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v2

    goto :goto_2

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1014
    const-string/jumbo v2, "key_encrypt_text"

    invoke-virtual {p1, v2}, Lcom/alibaba/wukong/im/message/MessageImpl;->getMemoryCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "encryptText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1017
    iput-object v1, p2, Lcom/alibaba/wukong/im/message/MessageEntry;->content:Ljava/lang/String;

    goto :goto_3
.end method

.method private static a(Ljava/util/List;Ljava/lang/StringBuilder;)[Ljava/lang/String;
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 853
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 854
    .local v3, "total":I
    add-int/lit8 v4, v3, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 855
    .local v2, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "mid IN ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const-string/jumbo v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 858
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 859
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 860
    .local v1, "mid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 863
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const-string/jumbo v4, "?"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    .end local v1    # "mid":Ljava/lang/Long;
    :cond_1
    const-string/jumbo v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string/jumbo v4, " AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const-string/jumbo v4, "messageStatus!=?"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 871
    return-object v2
.end method

.method protected static b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)I
    .locals 10
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    const/4 v7, 0x0

    .line 528
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v7

    .line 535
    :goto_0
    return v0

    .line 530
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "unreadCount"

    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string/jumbo v0, "totalCount"

    iget v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string/jumbo v0, "messageStatus"

    iget-object v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string/jumbo v0, "sentlocaltime"

    iget-wide v2, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "senderId=? AND localId=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 536
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 535
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 12
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Libu;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 455
    new-instance v8, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v9, "database not writable"

    invoke-direct {v8, v9}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 456
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 457
    :cond_1
    const/4 v5, 0x0

    .line 483
    :cond_2
    :goto_0
    return v5

    .line 459
    :cond_3
    const/4 v5, 0x0

    .line 460
    .local v5, "ret":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "messagesSuccess":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 464
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v7, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 466
    .local v4, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v4, :cond_4

    .line 468
    invoke-static {p0, v4, v7}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Landroid/content/ContentValues;)V

    .line 469
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    const-class v10, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-virtual {v9, v0, v10, v6, v7}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 470
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_5

    .line 471
    add-int/lit8 v5, v5, 0x1

    .line 472
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_5
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 478
    .end local v2    # "id":J
    .end local v4    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v8

    .line 476
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 480
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 481
    invoke-static {}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->receivers(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v1

    .line 1120
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SELECT name FROM sqlite_master WHERE type=\'table\' and name=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4, v6}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1121
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1123
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 1125
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static c(Ljava/lang/String;)I
    .locals 11
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 733
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    move v0, v10

    .line 748
    :goto_0
    return v0

    .line 736
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p0}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Libu$a;->b:[Ljava/lang/String;

    const-string/jumbo v5, "messageStatus!=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    sget-object v7, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 737
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x0

    const-string/jumbo v8, "0,1"

    .line 736
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 739
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 741
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 745
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v10

    .line 748
    goto :goto_0

    .line 745
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static c(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 941
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 944
    :goto_0
    return-object v0

    .line 942
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 943
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p0, p1, v0}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)I
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Libu;->a(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;J)I
    .locals 14
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "modifyTime"    # J

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 86
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v7, -0x1

    .line 105
    :goto_0
    return v7

    .line 88
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 89
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "createdAt<?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 90
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p1}, Libu;->c(Ljava/lang/String;)I

    move-result v6

    .line 93
    .local v6, "count":I
    const/16 v0, 0x3e8

    if-le v6, v0, :cond_3

    invoke-static {}, Lcom/alibaba/wukong/im/WukongFeatureManager;->getInstance()Lcom/alibaba/wukong/im/WukongFeatureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/WukongFeatureManager;->isDeleteMsgUseDrop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 96
    .local v10, "time":J
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/bee/DBManager;->execRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v10

    .line 98
    .local v8, "diff":J
    const-string/jumbo v0, "[MessageDs]"

    const-string/jumbo v2, "drop"

    invoke-static {p1, v8, v9, v6, v2}, Libu;->a(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v7, 0x1

    goto :goto_0

    .line 101
    .end local v8    # "diff":J
    .end local v10    # "time":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 102
    .restart local v10    # "time":J
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/message/MessageEntry;

    invoke-static {p1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 103
    .local v7, "result":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v10

    .line 104
    .restart local v8    # "diff":J
    const-string/jumbo v0, "[MessageDs]"

    const-string/jumbo v2, "delete"

    invoke-static {p1, v8, v9, v6, v2}, Libu;->a(Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3018
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ)Ljava/util/List;
    .locals 10
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "cursorMessage"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "count"    # I
    .param p4, "isForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 540
    .line 5545
    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, -0x1

    aput v0, v6, v7

    .line 5546
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Libu;->a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;

    move-result-object v0

    .line 540
    return-object v0
.end method

.method protected final a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;IZ[IZJ)Ljava/util/List;
    .locals 21
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .param p2, "cursorMessage"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "count"    # I
    .param p4, "isForward"    # Z
    .param p5, "contentTypes"    # [I
    .param p6, "includeCursor"    # Z
    .param p7, "senderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            "IZ[IZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v2

    .local v2, "dbName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    :goto_0
    return-object v3

    .line 555
    :cond_1
    const-wide/16 v10, 0x0

    .line 556
    .local v10, "createdAt":J
    const-wide/16 v14, 0x0

    .line 557
    .local v14, "mid":J
    if-eqz p2, :cond_4

    .line 558
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 559
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 563
    :cond_2
    :goto_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v17, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_5

    .line 567
    const-string/jumbo v3, "createdAt>=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :goto_2
    if-eqz p5, :cond_9

    move-object/from16 v0, p5

    array-length v3, v0

    if-lez v3, :cond_9

    move-object/from16 v0, p5

    array-length v3, v0

    const/16 v4, 0x64

    if-ge v3, v4, :cond_9

    .line 571
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v9, "contentTypeArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p5

    array-length v3, v0

    if-ge v12, v3, :cond_6

    .line 574
    aget v3, p5, v12

    if-lez v3, :cond_3

    .line 575
    aget v3, p5, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 560
    .end local v9    # "contentTypeArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    if-nez p4, :cond_2

    .line 561
    const-wide v10, 0x7fffffffffffffffL

    goto :goto_1

    .line 569
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v3, "createdAt<=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 578
    .restart local v9    # "contentTypeArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "i":I
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 579
    const-string/jumbo v3, " AND ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_8

    .line 581
    const-string/jumbo v3, "contentType=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    move-object/from16 v0, p5

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v13, v3, :cond_7

    .line 584
    const-string/jumbo v3, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 587
    :cond_8
    const-string/jumbo v3, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .end local v9    # "contentTypeArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v13    # "j":I
    :cond_9
    if-nez p6, :cond_a

    .line 591
    const-string/jumbo v3, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string/jumbo v3, "mid!=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_a
    const-wide/16 v18, 0x0

    cmp-long v3, p7, v18

    if-eqz v3, :cond_b

    .line 596
    const-string/jumbo v3, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string/jumbo v3, "senderId=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_b
    const-string/jumbo v3, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string/jumbo v3, "messageStatus!=?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->DELETED:Lcom/alibaba/wukong/im/Message$MessageStatus;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Message$MessageStatus;->typeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    if-gtz p3, :cond_c

    .line 606
    sget p3, Libu$a;->a:I

    .line 607
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, "limit":Ljava/lang/String;
    if-eqz p4, :cond_d

    const-string/jumbo v5, "createdAt ASC"

    .line 609
    .local v5, "orderBy":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez p4, :cond_e

    const/4 v8, 0x1

    :goto_6
    move-object/from16 v7, p1

    invoke-static/range {v2 .. v8}, Libu;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_0

    .line 608
    .end local v5    # "orderBy":Ljava/lang/String;
    :cond_d
    const-string/jumbo v5, "createdAt DESC"

    goto :goto_5

    .line 609
    .restart local v5    # "orderBy":Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    goto :goto_6
.end method

.method protected final a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "mids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 702
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Libu;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 703
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 727
    :cond_1
    :goto_0
    return-object v8

    .line 705
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    .line 706
    .local v16, "total":I
    const/16 v2, 0x3de

    move/from16 v0, v16

    if-le v0, v2, :cond_4

    .line 707
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v8, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    move/from16 v0, v16

    add-int/lit16 v2, v0, 0x3de

    add-int/lit8 v2, v2, -0x1

    div-int/lit16 v11, v2, 0x3de

    .line 709
    .local v11, "pageCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_1

    .line 710
    mul-int/lit16 v14, v10, 0x3de

    .line 711
    .local v14, "start":I
    add-int/lit16 v9, v14, 0x3de

    .line 712
    .local v9, "end":I
    move/from16 v0, v16

    if-le v9, v0, :cond_3

    move/from16 v9, v16

    .line 713
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    .line 715
    .local v15, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-static {v15, v12}, Libu;->a(Ljava/util/List;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v5, "990"

    .line 718
    const/4 v7, 0x0

    move-object/from16 v6, p1

    .line 717
    invoke-static/range {v1 .. v7}, Libu;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)Ljava/util/List;

    move-result-object v13

    .line 720
    .local v13, "segment":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v8, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 709
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 725
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "allList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v9    # "end":I
    .end local v10    # "i":I
    .end local v11    # "pageCount":I
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "segment":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v14    # "start":I
    .end local v15    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Libu;->a(Ljava/util/List;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v3

    .line 727
    .restart local v3    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Libu;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)Ljava/util/List;

    move-result-object v8

    goto :goto_0
.end method
