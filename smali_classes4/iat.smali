.class public final Liat;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "ConversationDB.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 54
    return-void
.end method

.method protected static a(JJ)I
    .locals 12
    .param p0, "srcCategoryId"    # J
    .param p2, "targetCategoryId"    # J

    .prologue
    const/4 v8, 0x0

    .line 791
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 806
    :cond_0
    :goto_0
    return v8

    .line 793
    :cond_1
    const/4 v8, 0x0

    .line 794
    .local v8, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 796
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "categoryId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 798
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "categoryId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 799
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 798
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 800
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 801
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 802
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "[TAG] ConvDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] updateCategoryId err, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method protected static a(Landroid/content/ContentValues;)I
    .locals 7
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    move-object v4, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JLandroid/content/ContentValues;)I
    .locals 9
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "msgId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 309
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v3, "tblastmsg"

    const-string/jumbo v5, "cid=? AND mid=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p0, v6, v4

    const/4 v4, 0x1

    .line 310
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move-object v4, p3

    .line 309
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 109
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p0, v6, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/List;)I
    .locals 8
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    const/4 v7, 0x0

    .line 704
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

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

    :cond_0
    move v0, v7

    .line 709
    :goto_0
    return v0

    .line 707
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 708
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "members"

    invoke-static {p1}, Liat;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p0, v6, v7

    const/4 v7, 0x4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/bee/DBManager;->updateWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected static a(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    :cond_0
    const/4 v4, 0x0

    .line 175
    :goto_0
    return v4

    .line 151
    :cond_1
    const/4 v4, 0x0

    .line 152
    .local v4, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 153
    const/4 v5, 0x0

    .line 155
    .local v5, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    const-class v7, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-class v8, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v9, "tbconversation"

    .line 156
    invoke-static {v8, v9}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-virtual {v6, v1, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v5

    .line 157
    new-instance v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;-><init>()V

    .line 158
    .local v3, "entry":Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 159
    .local v0, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_2

    .line 2924
    if-eqz v0, :cond_3

    .line 2925
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->cid:Ljava/lang/String;

    .line 2926
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->tag:J

    .line 2927
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->type:I

    .line 2928
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->title:Ljava/lang/String;

    .line 2929
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    if-nez v6, :cond_4

    const-wide/16 v6, 0x0

    :goto_2
    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->lastMid:J

    .line 2930
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->icon:Ljava/lang/String;

    .line 2931
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->unreadCount:I

    .line 2932
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->draftContent:Ljava/lang/String;

    .line 2933
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v6, v6, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->status:I

    .line 2934
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->memberCount:I

    .line 2935
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->ext:Ljava/lang/String;

    .line 2936
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->memberExt:Ljava/lang/String;

    .line 2937
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->createAt:J

    .line 2938
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->isNotification:I

    .line 2939
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_4
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->atStatus:I

    .line 2940
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->desc:Ljava/lang/String;

    .line 2941
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->top:J

    .line 2942
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->lastModify:J

    .line 2943
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->notificationSound:Ljava/lang/String;

    .line 2944
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->authority:I

    .line 2945
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->memberLimit:I

    .line 2946
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->category:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2948
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 2949
    const-string/jumbo v6, "parentId"

    iget-object v9, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2950
    const-string/jumbo v9, "isParent"

    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2951
    const-string/jumbo v6, "flag"

    iget v9, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2952
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->extInfo:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2956
    :goto_6
    :try_start_2
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->ownerId:J

    .line 2957
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    int-to-long v6, v6

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->joinValidationType:J

    .line 2958
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIconType:I

    .line 2959
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIcon:Ljava/lang/String;

    .line 2960
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIconTag:J

    .line 2961
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->showHistoryType:I

    .line 2962
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    :goto_7
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->banWordsType:I

    .line 2963
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    :goto_8
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->inBanWhite:I

    .line 2964
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    :goto_9
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->inBanBlack:I

    .line 2965
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->banWordsTime:J

    .line 2967
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupId:J

    .line 2968
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    :goto_a
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->titleSearchable:I

    .line 2969
    iget-boolean v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_b
    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->groupIdSearchable:I

    .line 2970
    iget v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    iput v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->atAllType:I

    .line 2971
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->categoryId:J

    .line 2972
    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    iput-wide v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->entranceId:J

    .line 2975
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-gtz v6, :cond_e

    iget-wide v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-gtz v6, :cond_e

    .line 2978
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->configuration:Ljava/lang/String;

    .line 161
    :cond_3
    :goto_c
    invoke-virtual {v3, v5}, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 162
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 163
    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 164
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->clear()V

    .line 165
    add-int/lit8 v4, v4, 0x1

    .line 166
    goto/16 :goto_1

    .line 2929
    :cond_4
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    goto/16 :goto_2

    .line 2938
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2939
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 2950
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2953
    :catch_0
    move-exception v6

    .line 2954
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 168
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;
    :catch_1
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "ConversationDB"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bulkMerge error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo v6, "[TAG] ConvDB"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[DB] bulkMerge conv err, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4022
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 173
    :cond_8
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2962
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "entry":Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 2963
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 2964
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 2968
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 2969
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 2980
    :cond_e
    :try_start_4
    new-instance v7, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    invoke-direct {v7}, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;-><init>()V

    .line 2981
    iget-object v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    iput-object v6, v7, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;

    .line 2982
    iget-wide v10, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    iput-wide v10, v7, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->expireTime:J

    .line 2983
    iget-wide v10, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    iput-wide v10, v7, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2984
    const/4 v6, 0x0

    .line 2986
    :try_start_5
    invoke-static {v7}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 2991
    :goto_d
    :try_start_6
    iput-object v6, v3, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;->configuration:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_c

    .line 172
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_f

    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 173
    :cond_f
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v6

    .line 2987
    .restart local v0    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "entry":Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;
    :catch_2
    move-exception v7

    .line 2988
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2989
    const-string/jumbo v9, "[TAG] ConvDB"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[DB] fillDBEntry entranceConfig toJSONString error, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3022
    const-string/jumbo v10, "im"

    invoke-static {v9, v7, v10}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 167
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_10
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 172
    if-eqz v5, :cond_11

    invoke-interface {v5}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 173
    :cond_11
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static a([Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 12
    .param p0, "cids"    # [Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v9, v0

    .line 131
    :goto_0
    return v9

    .line 118
    :cond_1
    const/4 v9, 0x0

    .line 119
    .local v9, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 121
    :try_start_0
    array-length v11, p0

    move v10, v0

    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v7, p0, v10

    .line 122
    .local v7, "cid":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v6, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 124
    .local v8, "r":I
    if-lez v8, :cond_2

    .line 125
    add-int/lit8 v9, v9, 0x1

    .line 121
    :cond_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 127
    .end local v7    # "cid":Ljava/lang/String;
    .end local v8    # "r":I
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
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

.method protected static a(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)J
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-wide v2

    .line 66
    :cond_1
    invoke-static {p0}, Liat;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Landroid/content/ContentValues;

    move-result-object v4

    .line 67
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz v4, :cond_0

    .line 69
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)J
    .locals 5
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const-wide/16 v2, 0x0

    .line 280
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    .line 285
    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-wide v2

    .line 282
    .restart local p1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    check-cast p1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local p1    # "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {p0, p1}, Libu;->c(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Landroid/content/ContentValues;

    move-result-object v1

    .line 283
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 285
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v3, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v4, "tblastmsg"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 996
    if-nez p0, :cond_1

    .line 997
    const/4 v4, 0x0

    .line 1065
    :cond_0
    :goto_0
    return-object v4

    .line 998
    :cond_1
    new-instance v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;-><init>()V

    .line 999
    .local v4, "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 1000
    const/4 v6, 0x2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    .line 1001
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    .line 1002
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    .line 1003
    const/4 v6, 0x6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    .line 1004
    const/4 v6, 0x7

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 1005
    const/16 v6, 0x8

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 1006
    const/16 v6, 0x9

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->fromValue(I)Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 1007
    const/16 v6, 0xa

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    .line 1008
    const/16 v6, 0xb

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1009
    const/16 v6, 0xc

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1010
    const/16 v6, 0xd

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    .line 1011
    const/16 v6, 0xe

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    .line 1012
    const/16 v6, 0xf

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_2
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    .line 1013
    const/16 v6, 0x10

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1014
    const/16 v6, 0x11

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    .line 1015
    const/16 v6, 0x12

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    .line 1016
    const/16 v6, 0x13

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    .line 1017
    const/16 v6, 0x14

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    .line 1018
    const/16 v6, 0x15

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Liat;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMembers:Ljava/util/List;

    .line 1019
    const/16 v6, 0x16

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    .line 1020
    const/16 v6, 0x17

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    .line 1022
    const/16 v6, 0x18

    :try_start_0
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "extInfo":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1024
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "parentId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    .line 1026
    const-string/jumbo v6, "isParent"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_3
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    .line 1027
    const-string/jumbo v6, "flag"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1032
    .end local v2    # "extInfo":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_2
    :goto_4
    const/16 v6, 0x19

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v10, v6

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    .line 1033
    const/16 v6, 0x1a

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    .line 1034
    const/16 v6, 0x1b

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    .line 1035
    const/16 v6, 0x1c

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    .line 1036
    const/16 v6, 0x1d

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    .line 1037
    const/16 v6, 0x1e

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    .line 1038
    const/16 v6, 0x1f

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v6, v7

    :goto_5
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    .line 1039
    const/16 v6, 0x20

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_6
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    .line 1040
    const/16 v6, 0x21

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_8

    move v6, v7

    :goto_7
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    .line 1041
    const/16 v6, 0x22

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    .line 1043
    const/16 v6, 0x23

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    .line 1044
    const/16 v6, 0x24

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_8
    iput-boolean v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    .line 1045
    const/16 v6, 0x25

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_a

    :goto_9
    iput-boolean v7, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    .line 1046
    const/16 v6, 0x26

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    .line 1047
    const/16 v6, 0x27

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    .line 1048
    const/16 v6, 0x28

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    .line 1050
    const/16 v6, 0x29

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "configuration":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1053
    :try_start_1
    const-class v6, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    invoke-static {v0, v6}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    .line 1054
    .local v5, "propertyObject":Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    if-eqz v5, :cond_0

    .line 1055
    iget-object v6, v5, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    .line 1056
    iget-wide v6, v5, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J

    iput-wide v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    .line 1057
    iget-wide v6, v5, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->expireTime:J

    iput-wide v6, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1059
    .end local v5    # "propertyObject":Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    :catch_0
    move-exception v1

    .line 1060
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    const-string/jumbo v6, "[TAG] ConvDB"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[DB] fromCursor parseConfiguration,error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16022
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "configuration":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v6, v8

    .line 1011
    goto/16 :goto_1

    :cond_4
    move v6, v8

    .line 1012
    goto/16 :goto_2

    .restart local v2    # "extInfo":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_5
    move v6, v8

    .line 1026
    goto/16 :goto_3

    .line 1029
    .end local v2    # "extInfo":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 1030
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_6
    move v6, v8

    .line 1038
    goto/16 :goto_5

    :cond_7
    move v6, v8

    .line 1039
    goto/16 :goto_6

    :cond_8
    move v6, v8

    .line 1040
    goto/16 :goto_7

    :cond_9
    move v6, v8

    .line 1044
    goto/16 :goto_8

    :cond_a
    move v7, v8

    .line 1045
    goto/16 :goto_9
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 10
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    const/4 v7, 0x0

    .line 583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 597
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 585
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v3, "tblastmsg"

    const-class v4, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    .line 586
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v6, v8

    const-string/jumbo v8, "0, 1"

    .line 585
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 588
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 590
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    invoke-static {v9, p1}, Libu;->a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 594
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

.method private static a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "oldLastMsg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v0, "sbError":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string/jumbo v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string/jumbo v1, ", oldUnReadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string/jumbo v1, ", newUnreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string/jumbo v1, ", oldRecallStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 19
    .param p1, "dbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "conversations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v5, "tblastmsg"

    const-class v3, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    .line 360
    invoke-static {v3}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    .line 359
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 361
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 363
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, "cid":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 366
    .local v18, "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v18, :cond_2

    .line 367
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Libu;->a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 368
    const-string/jumbo v2, "fillLastMessages while:"

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 5351
    invoke-static {}, Lieb;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 392
    .end local v11    # "cid":Ljava/lang/String;
    .end local v18    # "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 371
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FILL_LAST_MESSAGE"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 372
    .local v16, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Liga;->b(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 373
    .local v15, "fillLastMsg":Z
    if-nez v15, :cond_6

    .line 376
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 377
    .local v14, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 378
    .restart local v18    # "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v18, :cond_4

    .line 379
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v17

    .line 380
    .local v17, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v17, :cond_4

    .line 381
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 382
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 6270
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v17, :cond_4

    .line 6272
    check-cast v17, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v17    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    move-object/from16 v0, v17

    invoke-static {v3, v0}, Libu;->c(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Landroid/content/ContentValues;

    move-result-object v3

    .line 6273
    if-eqz v3, :cond_4

    .line 6275
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v5

    const-class v6, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v7, "tblastmsg"

    invoke-virtual {v5, v4, v6, v7, v3}, Lcom/alibaba/bee/DBManager;->insert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 386
    .end local v14    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v18    # "tmp":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catch_0
    move-exception v13

    .line 387
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "ConversationDB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insert last message error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/context/IMModule;->getPrefsTools()Liga;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Liga;->a(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected static b(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)I
    .locals 11
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    const/4 v10, 0x0

    .line 75
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v10

    .line 101
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    .line 79
    .local v8, "cid":Ljava/lang/String;
    invoke-static {p0}, Liat;->c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Landroid/content/ContentValues;

    move-result-object v4

    .line 80
    .local v4, "values":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    move v0, v10

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-string/jumbo v0, "cid"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/bee/DBManager;->updateWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v9

    .line 87
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "[TAG] ConvDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] update conv err, cid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 101
    goto :goto_0
.end method

.method protected static b(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v2

    .local v2, "dbName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 243
    :cond_0
    const/4 v6, 0x0

    .line 265
    :goto_0
    return v6

    .line 244
    :cond_1
    const/4 v6, 0x0

    .line 245
    .local v6, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 247
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v7, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 249
    .local v1, "co":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_2

    .line 251
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 253
    .local v3, "msg":Lcom/alibaba/wukong/im/Message;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 255
    check-cast v3, Lcom/alibaba/wukong/im/message/MessageImpl;

    .end local v3    # "msg":Lcom/alibaba/wukong/im/Message;
    invoke-static {v0, v3, v7}, Libu;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Landroid/content/ContentValues;)V

    .line 256
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    const-class v10, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v11, "tblastmsg"

    invoke-virtual {v9, v2, v10, v11, v7}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 257
    .local v4, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_2

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "co":Lcom/alibaba/wukong/im/Conversation;
    .end local v4    # "id":J
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v8
.end method

.method protected static b(Ljava/util/Map;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 765
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return v10

    .line 767
    :cond_1
    const/4 v10, 0x0

    .line 768
    .local v10, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 770
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 772
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v2, "unreadCount"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v13, 0x0

    .line 774
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v6, v13

    .line 773
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 775
    .local v9, "r":I
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 776
    if-lez v9, :cond_2

    .line 777
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 779
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "r":I
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 780
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 781
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ConversationDB"

    const-string/jumbo v2, "bulkUpdateUnreadCount error "

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const-string/jumbo v0, "[TAG] ConvDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DB] updateUnread err, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13022
    const-string/jumbo v3, "im"

    invoke-static {v0, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 7
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 291
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const-wide/16 v2, -0x1

    .line 292
    :goto_0
    return-wide v2

    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    const-string/jumbo v3, "tblastmsg"

    const-string/jumbo v4, "cid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    goto :goto_0
.end method

.method private static c(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 849
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 920
    :goto_0
    return-object v5

    .line 850
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 851
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "cid"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string/jumbo v6, "tag"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTag:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 853
    const-string/jumbo v6, "type"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConversationType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string/jumbo v6, "title"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string/jumbo v8, "lastMid"

    iget-object v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 856
    const-string/jumbo v6, "icon"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIcon:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string/jumbo v6, "unreadCount"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string/jumbo v6, "draftContent"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string/jumbo v6, "status"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mStatus:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v7, v7, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string/jumbo v6, "memberCount"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTotalMemberCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    const-string/jumbo v6, "ext"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string/jumbo v6, "memberExt"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string/jumbo v6, "createAt"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCreateAt:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    const-string/jumbo v7, "isNotification"

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsNotification:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string/jumbo v7, "atStatus"

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtStatus:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    const-string/jumbo v6, "desc"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string/jumbo v6, "top"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTop:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 868
    const-string/jumbo v6, "lastModify"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastModify:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 869
    const-string/jumbo v6, "notificationSound"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string/jumbo v6, "authority"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAuthority:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string/jumbo v6, "memberLimit"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mMemberLimit:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string/jumbo v6, "category"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 875
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v6, "parentId"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    const-string/jumbo v7, "isParent"

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 877
    const-string/jumbo v6, "flag"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 878
    const-string/jumbo v6, "extInfo"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v3    # "json":Lorg/json/JSONObject;
    :goto_5
    const-string/jumbo v6, "ownerId"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mOwnerId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 883
    const-string/jumbo v6, "joinValidationType"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mJoinValidationType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 885
    const-string/jumbo v6, "groupIconType"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 886
    const-string/jumbo v6, "groupIcon"

    iget-object v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIcon:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string/jumbo v6, "groupIconTag"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIconTag:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 888
    const-string/jumbo v6, "showHistoryType"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mShowHistoryType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string/jumbo v7, "banWordsType"

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsBanWords:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    const-string/jumbo v7, "inBanWhite"

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanWhite:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    :goto_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    const-string/jumbo v7, "inBanBlack"

    iget-boolean v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mInBanBlack:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string/jumbo v6, "banWordsTime"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mBanWordsTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 895
    const-string/jumbo v6, "groupId"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 896
    const-string/jumbo v6, "groupIdSearchable"

    iget-boolean v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mGroupIdSearchable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 897
    const-string/jumbo v6, "titleSearchable"

    iget-boolean v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mTitleSearchable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 898
    const-string/jumbo v6, "atAllType"

    iget v7, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mAtAllType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string/jumbo v6, "categoryId"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCategoryId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 900
    const-string/jumbo v6, "entranceId"

    iget-wide v8, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mEntranceId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    iget-object v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-wide v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_8

    iget-wide v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_8

    .line 905
    const-string/jumbo v6, "configuration"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 855
    :cond_1
    iget-object v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    goto/16 :goto_1

    .line 864
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 865
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 876
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 879
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 880
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 890
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 891
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 892
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 907
    :cond_8
    new-instance v4, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;-><init>()V

    .line 908
    .local v4, "propertyObject":Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;
    iget-object v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationProperty:Ljava/lang/String;

    iput-object v6, v4, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->property:Ljava/lang/String;

    .line 909
    iget-wide v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationExpireTime:J

    iput-wide v6, v4, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->expireTime:J

    .line 910
    iget-wide v6, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mConfigurationVersion:J

    iput-wide v6, v4, Lcom/alibaba/wukong/im/conversation/entrance/object/EntranceConversationPropertyObject;->version:J

    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, "configuration":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 918
    :goto_9
    const-string/jumbo v6, "configuration"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 914
    :catch_1
    move-exception v2

    .line 915
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 916
    const-string/jumbo v6, "[TAG] ConvDB"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[DB] buildContentValues entranceConfig toJSONString error, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 15022
    const-string/jumbo v8, "im"

    invoke-static {v6, v7, v8}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private c(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "outdated":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 403
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 404
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 405
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 406
    .local v5, "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v5, :cond_2

    .line 408
    iget-object v7, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 409
    .local v7, "oldLastMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageId()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-nez v11, :cond_2

    .line 410
    iget-object v11, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v11, v5}, Liat;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v8

    .line 411
    .local v8, "ret":J
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-lez v11, :cond_5

    .line 412
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v10, "values":Landroid/content/ContentValues;
    iget v11, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v6, v11, -0x5

    .line 415
    .local v6, "newFlag":I
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 416
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "parentId"

    iget-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mParentId:Ljava/lang/String;

    invoke-virtual {v4, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string/jumbo v13, "isParent"

    iget-boolean v11, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mIsParent:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v4, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v11, "flag"

    invoke-virtual {v4, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 419
    const-string/jumbo v11, "extInfo"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .end local v4    # "json":Lorg/json/JSONObject;
    :goto_3
    :try_start_2
    iget-object v11, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v11, v10}, Liat;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v11

    if-lez v11, :cond_4

    .line 424
    iput v6, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 437
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v5    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v6    # "newFlag":I
    .end local v7    # "oldLastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "ret":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v11

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v11

    .line 417
    .restart local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v5    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .restart local v6    # "newFlag":I
    .restart local v7    # "oldLastMsg":Lcom/alibaba/wukong/im/Message;
    .restart local v8    # "ret":J
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 420
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 427
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v11, "[TAG] ConvDB"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "update flag error, "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Liat;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7022
    const-string/jumbo v14, "im"

    invoke-static {v11, v13, v14}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 431
    .end local v6    # "newFlag":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_5
    const-string/jumbo v11, "[TAG] ConvDB"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "[DB] updateOutdatedLastMsg err, "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Liat;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 8022
    const-string/jumbo v14, "im"

    invoke-static {v11, v13, v14}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 435
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v5    # "msg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v7    # "oldLastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "ret":J
    :cond_6
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static d(Ljava/lang/String;)I
    .locals 8
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 717
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v0, -0x1

    .line 720
    :goto_0
    return v0

    .line 718
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 719
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "members"

    const-string/jumbo v2, ""

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static d(Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupIconObject;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupIconObject;>;"
    const/4 v9, 0x0

    .line 812
    invoke-static {}, Liat;->getWritableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v9

    .line 814
    :cond_1
    const/4 v9, 0x0

    .line 815
    .local v9, "ret":I
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 817
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 818
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/GroupIconObject;

    .line 819
    .local v7, "obj":Lcom/alibaba/wukong/im/GroupIconObject;
    const-string/jumbo v0, "groupIconType"

    iget v2, v7, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string/jumbo v0, "groupIcon"

    iget-object v2, v7, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string/jumbo v0, "groupIconTag"

    iget-wide v2, v7, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 822
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/alibaba/wukong/im/GroupIconObject;->conversationId:Ljava/lang/String;

    aput-object v12, v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/bee/DBManager;->update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 824
    .local v8, "r":I
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 825
    if-lez v8, :cond_2

    .line 826
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 828
    .end local v7    # "obj":Lcom/alibaba/wukong/im/GroupIconObject;
    .end local v8    # "r":I
    :cond_3
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    goto :goto_0

    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 745
    const/4 v4, 0x0

    .line 760
    :cond_0
    :goto_0
    return-object v4

    .line 746
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 750
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 751
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 752
    .local v6, "o":Lorg/json/JSONObject;
    new-instance v5, Lcom/alibaba/wukong/im/conversation/MemberRole;

    invoke-direct {v5}, Lcom/alibaba/wukong/im/conversation/MemberRole;-><init>()V

    .line 753
    .local v5, "member":Lcom/alibaba/wukong/im/conversation/MemberRole;
    const-string/jumbo v7, "openId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    .line 754
    const-string/jumbo v7, "role"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    .line 755
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 757
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v5    # "member":Lcom/alibaba/wukong/im/conversation/MemberRole;
    .end local v6    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 484
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v4

    .local v4, "dbName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 485
    const/4 v8, 0x0

    .line 543
    :cond_0
    :goto_0
    return-object v8

    .line 488
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 489
    .local v9, "sqlBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v10, "SELECT * FROM "

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "tbconversation"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " WHERE "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "cid"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " IN ( "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v1, "cidSql":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 495
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 498
    .end local v0    # "cid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 502
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " )"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 504
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    const/4 v3, 0x0

    .line 508
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    const-class v11, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v4, v11, v12, v13}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 509
    if-nez v3, :cond_6

    .line 538
    if-eqz v3, :cond_5

    .line 539
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 513
    :cond_6
    :try_start_1
    const-string/jumbo v10, "ConversationDB"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[queryByCids] result size = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9022
    const-string/jumbo v12, "im"

    invoke-static {v10, v11, v12}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 516
    invoke-static {v3}, Liat;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v7

    .line 518
    .local v7, "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 535
    .end local v7    # "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catch_0
    move-exception v5

    .line 536
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v10, "ConversationDB"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[queryByCids] error: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 10022
    const-string/jumbo v12, "im"

    invoke-static {v10, v11, v12}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    if-eqz v3, :cond_0

    .line 539
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 522
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_7
    :try_start_3
    invoke-direct {p0, v8}, Liat;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    .line 523
    .local v6, "lastMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v6, :cond_9

    .line 524
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 528
    .local v2, "conv":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 530
    .restart local v0    # "cid":Ljava/lang/String;
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/Message;

    iput-object v10, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 538
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "conv":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .end local v6    # "lastMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_8

    .line 539
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v10

    .line 538
    .restart local v6    # "lastMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_9
    if-eqz v3, :cond_0

    .line 539
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private f(Ljava/util/List;)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 602
    :cond_0
    const/16 v16, 0x0

    .line 699
    :cond_1
    :goto_0
    return-object v16

    .line 606
    :cond_2
    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v10

    .local v10, "dbName":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 607
    const/16 v16, 0x0

    goto :goto_0

    .line 611
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    .local v17, "size":I
    const/16 v21, 0x1f4

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 612
    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1f4

    move/from16 v20, v0

    .line 613
    .local v20, "times":I
    move/from16 v0, v17

    rem-int/lit16 v14, v0, 0x1f4

    .line 615
    .local v14, "leftover":I
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 616
    .local v16, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    const/4 v12, 0x0

    .line 617
    .local v12, "end":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v13, v0, :cond_5

    .line 618
    mul-int/lit16 v0, v13, 0x1f4

    move/from16 v19, v0

    .line 619
    .local v19, "start":I
    move/from16 v0, v19

    add-int/lit16 v12, v0, 0x1f4

    .line 621
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Liat;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v15

    .line 622
    .local v15, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v15, :cond_4

    .line 623
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 617
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 627
    .end local v15    # "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v19    # "start":I
    :cond_5
    if-eqz v14, :cond_6

    .line 628
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v12, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Liat;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v15

    .line 629
    .restart local v15    # "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz v15, :cond_6

    .line 630
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 634
    .end local v15    # "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1

    .line 638
    const/16 v16, 0x0

    goto :goto_0

    .line 641
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v14    # "leftover":I
    .end local v16    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    .end local v20    # "times":I
    :cond_7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 642
    .local v7, "convMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 643
    .local v6, "conv":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v6, :cond_8

    .line 645
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 646
    .local v5, "cid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 648
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 651
    .end local v5    # "cid":Ljava/lang/String;
    .end local v6    # "conv":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_9
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 653
    .restart local v16    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v18

    .line 654
    .local v18, "sqlBuild":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v21, "SELECT * FROM "

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    const-string/jumbo v22, "tblastmsg"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    const-string/jumbo v22, " WHERE "

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    const-string/jumbo v22, "cid"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    const-string/jumbo v22, " IN ("

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v4, "argsBuild":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_a
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 658
    .local v8, "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v8, :cond_a

    .line 660
    invoke-virtual {v8}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 661
    .restart local v5    # "cid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 662
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 665
    .end local v5    # "cid":Ljava/lang/String;
    .end local v8    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 666
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 669
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v21

    const-string/jumbo v22, " )"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 671
    const/4 v9, 0x0

    .line 674
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v21

    const-class v22, Lcom/alibaba/wukong/im/conversation/LastMessageEntry;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 675
    if-nez v9, :cond_e

    .line 694
    if-eqz v9, :cond_d

    .line 695
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 679
    :cond_e
    :try_start_1
    const-string/jumbo v21, "ConversationDB"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "[queryLastMessageByCids] result size = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 11022
    const-string/jumbo v23, "im"

    invoke-static/range {v21 .. v23}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_f
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 682
    const-string/jumbo v21, "cid"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 683
    .restart local v5    # "cid":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 684
    .restart local v8    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v8, :cond_f

    .line 685
    invoke-static {v9, v8}, Libu;->a(Landroid/database/Cursor;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 691
    .end local v5    # "cid":Ljava/lang/String;
    .end local v8    # "conversation":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catch_0
    move-exception v11

    .line 692
    .local v11, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v21, "ConversationDB"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "queryLastMessageByCids error: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 12022
    const-string/jumbo v23, "im"

    invoke-static/range {v21 .. v23}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    if-eqz v9, :cond_10

    .line 695
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 694
    .end local v11    # "e":Ljava/lang/Throwable;
    :cond_11
    if-eqz v9, :cond_1

    .line 695
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 694
    :catchall_0
    move-exception v21

    if-eqz v9, :cond_12

    .line 695
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v21
.end method

.method private static g(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/MemberRole;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/MemberRole;>;"
    if-nez p0, :cond_0

    .line 726
    const/4 v4, 0x0

    .line 740
    :goto_0
    return-object v4

    .line 727
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 728
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/conversation/MemberRole;

    .line 729
    .local v2, "m":Lcom/alibaba/wukong/im/conversation/MemberRole;
    if-eqz v2, :cond_1

    .line 732
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 733
    .local v3, "o":Lorg/json/JSONObject;
    const-string/jumbo v5, "openId"

    iget-wide v6, v2, Lcom/alibaba/wukong/im/conversation/MemberRole;->mOpenId:J

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 734
    const-string/jumbo v5, "role"

    iget v6, v2, Lcom/alibaba/wukong/im/conversation/MemberRole;->mRole:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 736
    .end local v3    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 740
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "m":Lcom/alibaba/wukong/im/conversation/MemberRole;
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)I
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 186
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v6, -0x1

    .line 192
    :cond_1
    :goto_0
    return v6

    .line 187
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-string/jumbo v4, "cid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 189
    .local v6, "ret":I
    if-lez v6, :cond_1

    .line 190
    invoke-static {p1}, Liat;->b(Ljava/lang/String;)J

    goto :goto_0
.end method

.method protected final a(Ljava/util/Map;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wukong/im/base/WKException;
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "outdated":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v3

    .local v3, "dbName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 316
    new-instance v2, Lcom/alibaba/wukong/im/base/WKException;

    const-string/jumbo v4, "database not readable"

    invoke-direct {v2, v4}, Lcom/alibaba/wukong/im/base/WKException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v4, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v5, "tbconversation"

    const-class v6, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    .line 318
    invoke-static {v6}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 317
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 319
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v11, "conversations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v12, :cond_4

    .line 321
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 322
    .local v18, "retCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "conv count "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    :try_start_0
    new-instance v16, Ljava/util/HashMap;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 325
    .local v16, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    invoke-static {v12}, Liat;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v17

    .line 327
    .local v17, "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v17, :cond_1

    .line 329
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 331
    .local v14, "lastMid":J
    const-wide/16 v4, 0x0

    cmp-long v2, v14, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 332
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v2, v14, v15, v0}, Libu;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v13

    .line 333
    .local v13, "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 335
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v2, "queryConversations outdated:"

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;

    .line 4351
    invoke-static {}, Lieb;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    .end local v13    # "lastMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    .end local v14    # "lastMid":J
    .end local v16    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v17    # "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 338
    .restart local v14    # "lastMid":J
    .restart local v16    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .restart local v17    # "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 341
    .end local v14    # "lastMid":J
    .end local v17    # "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_3
    invoke-direct/range {p0 .. p1}, Liat;->c(Ljava/util/Map;)V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Liat;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v16    # "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v18    # "retCount":I
    :cond_4
    return-object v11
.end method

.method protected final c(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    .locals 11
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liat;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 479
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 465
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    const-string/jumbo v3, "tbconversation"

    const-class v4, Lcom/alibaba/wukong/im/conversation/ConversationDBEntry;

    .line 466
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const-string/jumbo v8, "0, 1"

    .line 465
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 468
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 470
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    invoke-static {v9}, Liat;->a(Landroid/database/Cursor;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v10

    .line 472
    .local v10, "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    iget-object v0, v10, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-static {v0, v10}, Liat;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mLastMessage:Lcom/alibaba/wukong/im/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v10

    goto :goto_0

    .end local v10    # "object":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final c(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 548
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    .line 577
    :cond_0
    :goto_0
    return-object v4

    .line 551
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    const/16 v8, 0x1f4

    if-le v5, v8, :cond_4

    .line 553
    div-int/lit16 v7, v5, 0x1f4

    .line 554
    .local v7, "times":I
    rem-int/lit16 v3, v5, 0x1f4

    .line 556
    .local v3, "leftover":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    const/4 v1, 0x0

    .line 558
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 559
    mul-int/lit16 v6, v2, 0x1f4

    .line 560
    .local v6, "start":I
    add-int/lit16 v1, v6, 0x1f4

    .line 561
    invoke-interface {p1, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Liat;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 562
    .local v0, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v0, :cond_2

    .line 563
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 558
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 567
    .end local v0    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v6    # "start":I
    :cond_3
    if-eqz v3, :cond_0

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Liat;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 569
    .restart local v0    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 577
    .end local v0    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "leftover":I
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/conversation/ConversationImpl;>;"
    .end local v7    # "times":I
    :cond_4
    invoke-direct {p0, p1}, Liat;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method
