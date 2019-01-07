.class public Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "MailAdditionalDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;


# static fields
.field private static final TAG:Ljava/lang/String; = "MailAdditionalDatasourceImpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    .line 49
    return-void
.end method

.method private static final buildMailParticipantsModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;)Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    .locals 2
    .param p0, "entry"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    .line 361
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 362
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->mailServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->mailServerId:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientName:Ljava/lang/String;

    .line 365
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientAddressType:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 366
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method private static buildMailReadStatusModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;)Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
    .locals 2
    .param p0, "entry"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;-><init>()V

    .line 109
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->mailServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->mailServerId:Ljava/lang/String;

    .line 110
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->unreadCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    .line 111
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->totalCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->totalToCount:I

    .line 112
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->unknownCount:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->hasUnknowStatus:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static buildRevokeModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;)Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;
    .locals 4
    .param p0, "rs"    # Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    .prologue
    .line 562
    new-instance v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;-><init>()V

    .line 563
    .local v0, "sm":Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mFailedList:Ljava/lang/String;

    invoke-static {v1}, Lair;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    .line 564
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mProcessCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mProcessCount:I

    .line 565
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mTotalCount:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mTotalCount:I

    .line 566
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mServerId:Ljava/lang/String;

    .line 567
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mId:J

    .line 568
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mStatus:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    .line 569
    return-object v0
.end method

.method private static buildRevokeStatus(Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;)Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;
    .locals 4
    .param p0, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;

    .prologue
    .line 551
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;-><init>()V

    .line 552
    .local v0, "revokeStatus":Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;
    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->elapsedTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mElapsedTime:J

    .line 553
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->getFailedItemList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lair;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mFailedList:Ljava/lang/String;

    .line 554
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->processedItems:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mProcessCount:I

    .line 555
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->getMailId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mServerId:Ljava/lang/String;

    .line 556
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->getStatus()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mStatus:I

    .line 557
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->getTotalItems()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mTotalCount:I

    .line 558
    return-object v0
.end method

.method private handle(JLjava/lang/String;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/restfulapi/data/AliAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "select"    # Lcom/alibaba/alimei/orm/query/Select;
    .param p5, "ali"    # Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .param p6, "recipientType"    # Ljava/lang/String;

    .prologue
    .line 187
    if-eqz p5, :cond_0

    iget-object v1, p5, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-nez p4, :cond_2

    .line 191
    new-instance p4, Lcom/alibaba/alimei/orm/query/Select;

    .end local p4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    invoke-direct {p4, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 195
    .restart local p4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :goto_1
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string/jumbo v1, "mailServerId"

    invoke-virtual {p4, v1, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v1, "recpAddr"

    iget-object v2, p5, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v1, "recpType"

    invoke-virtual {p4, v1, p6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p4}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;-><init>()V

    .line 205
    .local v0, "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;
    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->accountKey:J

    .line 206
    iput-object p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->mailServerId:Ljava/lang/String;

    .line 207
    iget-object v1, p5, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientAddress:Ljava/lang/String;

    .line 208
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientAddressType:I

    .line 209
    iput-object p6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientType:Ljava/lang/String;

    .line 210
    invoke-static {p5}, Lair;->b(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->recipientName:Ljava/lang/String;

    .line 211
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;->save()J

    goto :goto_0

    .line 193
    .end local v0    # "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;
    :cond_2
    invoke-virtual {p4}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    goto :goto_1
.end method

.method private handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;I)V
    .locals 38
    .param p1, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p2, "accountId"    # J
    .param p4, "mailServerId"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .param p6, "addressType"    # I

    .prologue
    .line 257
    if-nez p5, :cond_0

    .line 280
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getRead()Ljava/util/List;

    move-result-object v5

    .line 262
    .local v5, "reads":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    const-string/jumbo v7, "read"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 264
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getUnread()Ljava/util/List;

    move-result-object v11

    .line 265
    .local v11, "unreads":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    const-string/jumbo v13, "unread"

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 267
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getSending()Ljava/util/List;

    move-result-object v17

    .line 268
    .local v17, "sending":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    const-string/jumbo v19, "sending"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-object/from16 v16, p4

    move/from16 v18, p6

    invoke-direct/range {v12 .. v19}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 270
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getSent()Ljava/util/List;

    move-result-object v23

    .line 271
    .local v23, "send":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    const-string/jumbo v25, "sent"

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v20, p2

    move-object/from16 v22, p4

    move/from16 v24, p6

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 274
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getFail()Ljava/util/List;

    move-result-object v29

    .line 275
    .local v29, "fail":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    const-string/jumbo v31, "fail"

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-wide/from16 v26, p2

    move-object/from16 v28, p4

    move/from16 v30, p6

    invoke-direct/range {v24 .. v31}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 278
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;->getUnknown()Ljava/util/List;

    move-result-object v35

    .line 279
    .local v35, "unkown":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    const-string/jumbo v37, "unknown"

    move-object/from16 v30, p0

    move-object/from16 v31, p1

    move-wide/from16 v32, p2

    move-object/from16 v34, p4

    move/from16 v36, p6

    invoke-direct/range {v30 .. v37}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 6
    .param p1, "update"    # Lcom/alibaba/alimei/orm/query/Update;
    .param p2, "accountId"    # J
    .param p4, "mailServerId"    # Ljava/lang/String;
    .param p6, "addressType"    # I
    .param p7, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/orm/query/Update;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    .local p5, "emails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;>;"
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 310
    :cond_0
    return-void

    .line 287
    :cond_1
    if-nez p1, :cond_4

    .line 288
    new-instance p1, Lcom/alibaba/alimei/orm/query/Update;

    .end local p1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "mailParticipants"

    invoke-direct {p1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .restart local p1    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;

    .line 294
    .local v1, "mailItem":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;
    if-eqz v1, :cond_2

    .line 297
    iget-object v0, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;->email:Ljava/lang/String;

    .line 298
    .local v0, "email":Ljava/lang/String;
    iget-object v2, v1, Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;->name:Ljava/lang/String;

    .line 299
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 300
    const-string/jumbo v4, "recpAddrType"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string/jumbo v4, "_status"

    invoke-virtual {p1, v4, p7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 303
    const-string/jumbo v4, "recpName"

    invoke-virtual {p1, v4, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_3
    const-string/jumbo v4, "accountKey"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v4, "mailServerId"

    invoke-virtual {p1, v4, p4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v4, "recpAddr"

    invoke-virtual {p1, v4, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_1

    .line 290
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "mailItem":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult$MailAddrItem;
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    goto :goto_0
.end method

.method private final declared-synchronized insertOrUpdateSentStatus(JLjava/lang/String;IIZ)I
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "totalCount"    # I
    .param p5, "unreadCount"    # I
    .param p6, "shouldDetail"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    invoke-direct {v2, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 64
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "unreadCount"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "totalCount"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "unknownCount"

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 66
    const-string/jumbo v6, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v6, "mailServerId"

    invoke-virtual {v2, v6, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    .line 69
    .local v1, "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;
    if-nez v1, :cond_1

    .line 70
    new-instance v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    .end local v1    # "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;
    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;-><init>()V

    .line 71
    .restart local v1    # "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;
    iput-wide p1, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->accountKey:J

    .line 72
    iput-object p3, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->mailServerId:Ljava/lang/String;

    .line 73
    iput p5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->unreadCount:I

    .line 74
    iput p4, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->totalCount:I

    .line 75
    if-eqz p6, :cond_0

    :goto_0
    iput v5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->unknownCount:I

    .line 76
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->save()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v5, v0

    .line 75
    goto :goto_0

    .line 79
    :cond_1
    if-eqz p6, :cond_2

    move v3, v5

    .line 81
    .local v3, "unknowCount":I
    :goto_2
    :try_start_1
    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->unreadCount:I

    if-ne v6, p5, :cond_3

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->unknownCount:I

    if-ne v6, v3, :cond_3

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->totalCount:I

    if-ne v6, p4, :cond_3

    .line 83
    const/4 v0, -0x1

    goto :goto_1

    .end local v3    # "unknowCount":I
    :cond_2
    move v3, v0

    .line 79
    goto :goto_2

    .line 85
    .restart local v3    # "unknowCount":I
    :cond_3
    new-instance v4, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    invoke-direct {v4, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 86
    .local v4, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "unreadCount"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string/jumbo v6, "totalCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string/jumbo v6, "unknownCount"

    if-eqz p6, :cond_4

    move v0, v5

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string/jumbo v5, "_id"

    iget-wide v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 91
    .local v0, "count":I
    goto :goto_1

    .line 63
    .end local v0    # "count":I
    .end local v1    # "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;
    .end local v2    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v3    # "unknowCount":I
    .end local v4    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public blurredLookUpQuery(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 391
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    :cond_1
    :goto_0
    return-object v1

    .line 396
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laiw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "nameNormalizer":Ljava/lang/String;
    const-string/jumbo v3, "(email like ? or lookup like ?) and account=?"

    .line 400
    .local v3, "selection":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "recipient_lookup"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "%"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 403
    .local v1, "recipientLookupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    if-nez v1, :cond_3

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "recipientLookupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 407
    .restart local v1    # "recipientLookupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p3, :cond_1

    .line 411
    invoke-interface {v1, v8, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public deleteAllRevokeStatus(J)V
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 469
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MailRevokeStatus"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 472
    return-void
.end method

.method public deleteRevokeStatus(JLjava/lang/String;)V
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MailRevokeStatus"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string/jumbo v1, "serverId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 535
    return-void
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    const-string/jumbo v0, "EmailProvider.db"

    return-object v0
.end method

.method public handleMailInfoStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 431
    if-nez p4, :cond_1

    .line 432
    const-string/jumbo v3, "MailAdditionalDatasourceImpl"

    const-string/jumbo v4, "handleMailInfoStatus fail for result is null"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    const-string/jumbo v3, "MailAdditionalDatasourceImpl"

    const-string/jumbo v4, "handleMailInfoStatus fail for serverId is empty"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_2
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->successItems:Ljava/util/List;

    .line 442
    .local v1, "successList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    :cond_3
    const-string/jumbo v3, "MailAdditionalDatasourceImpl"

    const-string/jumbo v4, "handleMailInfo fail for succeList is empty"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_4
    new-instance v2, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "mailParticipants"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v2, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;

    .line 449
    .local v0, "infoItem":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 450
    iget v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->accountType:I

    if-ne v6, v4, :cond_6

    .line 451
    const-string/jumbo v4, "recpAddrType"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    :goto_2
    iget-object v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 458
    const-string/jumbo v4, "recpName"

    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->alias:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    :cond_5
    const-string/jumbo v4, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v4, "mailServerId"

    invoke-virtual {v2, v4, p3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v4, "recpAddr"

    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->email:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_1

    .line 452
    :cond_6
    iget v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;->accountType:I

    if-ne v7, v4, :cond_7

    .line 453
    const-string/jumbo v4, "recpAddrType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 455
    :cond_7
    const-string/jumbo v4, "recpAddrType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public declared-synchronized handleMailReadListResult(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;)V
    .locals 27
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "mailServerId"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;

    .prologue
    .line 218
    monitor-enter p0

    if-nez p5, :cond_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_0
    new-instance v5, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "mailParticipants"

    invoke-direct {v5, v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v5, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->getOutdomain()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    move-result-object v9

    .line 227
    .local v9, "outdomain":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;I)V

    .line 232
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->getMaillist()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    move-result-object v15

    .line 233
    .local v15, "maillist":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    const/16 v16, 0x2

    move-object/from16 v10, p0

    move-object v11, v5

    move-wide/from16 v12, p1

    move-object/from16 v14, p4

    invoke-direct/range {v10 .. v16}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;I)V

    .line 238
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->getEmail()Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-wide/from16 v18, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v22}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleReadList(Lcom/alibaba/alimei/orm/query/Update;JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;I)V

    .line 241
    move-object/from16 v0, p5

    iget v4, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->recipientCount:I

    if-lez v4, :cond_0

    .line 242
    move-object/from16 v0, p5

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->recipientCount:I

    move/from16 v21, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->unreadCount:I

    move/from16 v22, v0

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/alibaba/alimei/restfulapi/response/data/MailReadListResult;->shouldDetail:Z

    move/from16 v23, v0

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-object/from16 v20, p4

    invoke-direct/range {v17 .. v23}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->insertOrUpdateSentStatus(JLjava/lang/String;IIZ)I

    move-result v26

    .line 244
    .local v26, "updateCount":I
    if-lez v26, :cond_0

    .line 245
    new-instance v24, Lyc;

    const-string/jumbo v4, "ptcpUnreadCountChanged"

    const/4 v6, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    .local v24, "eventMessage":Lyc;
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    iput-object v0, v1, Lyc;->f:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->queryMailReadStatus(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    move-result-object v25

    .line 249
    .local v25, "statusModel":Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lyc;->g:Ljava/lang/Object;

    .line 250
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lya;->a(Lyc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 218
    .end local v5    # "update":Lcom/alibaba/alimei/orm/query/Update;
    .end local v9    # "outdomain":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .end local v15    # "maillist":Lcom/alibaba/alimei/restfulapi/response/data/MailReadSingleResult;
    .end local v24    # "eventMessage":Lyc;
    .end local v25    # "statusModel":Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
    .end local v26    # "updateCount":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public handleMailRecipientIntoParticipants(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/data/AliAddress;)V
    .locals 27
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p7, "from"    # Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p4, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    .local p5, "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    .local p6, "bccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    invoke-direct {v5, v0}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 165
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v0, "_id"

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 166
    if-eqz p4, :cond_0

    .line 167
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 168
    .local v6, "to":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    const-string/jumbo v7, "to"

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handle(JLjava/lang/String;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/restfulapi/data/AliAddress;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v6    # "to":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    :cond_0
    if-eqz p5, :cond_1

    .line 172
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 173
    .local v12, "cc":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    const-string/jumbo v13, "cc"

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-object v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handle(JLjava/lang/String;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/restfulapi/data/AliAddress;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    .end local v12    # "cc":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    :cond_1
    if-eqz p6, :cond_2

    .line 177
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 178
    .local v18, "bcc":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    const-string/jumbo v19, "bcc"

    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    move-object/from16 v16, p3

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v19}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handle(JLjava/lang/String;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/restfulapi/data/AliAddress;Ljava/lang/String;)V

    goto :goto_2

    .line 181
    .end local v18    # "bcc":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    :cond_2
    if-eqz p7, :cond_3

    .line 182
    const-string/jumbo v25, "from"

    move-object/from16 v19, p0

    move-wide/from16 v20, p1

    move-object/from16 v22, p3

    move-object/from16 v23, v5

    move-object/from16 v24, p7

    invoke-direct/range {v19 .. v25}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handle(JLjava/lang/String;Lcom/alibaba/alimei/orm/query/Select;Lcom/alibaba/alimei/restfulapi/data/AliAddress;Ljava/lang/String;)V

    .line 184
    :cond_3
    return-void
.end method

.method public handleMailSendStatus(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;)I
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "sendStatus"    # Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;

    .prologue
    .line 54
    if-nez p4, :cond_0

    .line 55
    const/4 v0, -0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    iget v5, p4, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->recipientCount:I

    iget v6, p4, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->unreadCount:I

    iget-boolean v7, p4, Lcom/alibaba/alimei/restfulapi/data/MailSendStatus;->shouldDetail:Z

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->insertOrUpdateSentStatus(JLjava/lang/String;IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public handleRevokeStatus(JLjava/util/List;)V
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 477
    :cond_0
    const-string/jumbo v6, "MailAdditionalDatasourceImpl"

    const-string/jumbo v7, "handleRevokeStatus fail for resultList is null"

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    return-void

    .line 481
    :cond_2
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "MailRevokeStatus"

    invoke-direct {v3, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "_id"

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 484
    new-instance v5, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "MailRevokeStatus"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .local v5, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;

    .line 486
    .local v1, "revokeItem":Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;
    if-eqz v1, :cond_3

    .line 489
    iget-object v4, v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->mailId:Ljava/lang/String;

    .line 490
    .local v4, "serverId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 491
    const-string/jumbo v7, "serverId"

    invoke-virtual {v3, v7, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v7, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v0

    .line 494
    .local v0, "isExist":Z
    if-eqz v0, :cond_4

    .line 496
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 497
    const-string/jumbo v7, "elapsedTime"

    iget-wide v8, v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->elapsedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    const-string/jumbo v7, "processedCount"

    iget v8, v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->processedItems:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    const-string/jumbo v7, "failedMailAddrList"

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->getFailedItemList()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lair;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string/jumbo v7, "status"

    iget v8, v1, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->status:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string/jumbo v7, "serverId"

    invoke-virtual {v5, v7, v4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v7, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto :goto_0

    .line 506
    :cond_4
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->buildRevokeStatus(Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;)Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    move-result-object v2

    .line 507
    .local v2, "revokeStatus":Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;
    iput-wide p1, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->mAccountKey:J

    .line 508
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;->save()J

    goto :goto_0
.end method

.method public insertLookUp(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 374
    .local p1, "recipientLookupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 385
    :goto_0
    return v1

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->beginTransaction()V

    .line 379
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    .line 380
    .local v0, "lookup":Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;->save()J

    goto :goto_1

    .line 382
    .end local v0    # "lookup":Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->setTransactionSuccessful()V

    .line 383
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->endTransaction()V

    .line 385
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized loadMailRecipientIntoParticipants(JLjava/lang/String;Z)V
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "forceLoad"    # Z

    .prologue
    .line 120
    monitor-enter p0

    if-nez p4, :cond_1

    .line 121
    :try_start_0
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    invoke-direct {v12, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 122
    .local v12, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "_id"

    invoke-virtual {v12, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v3, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v3, "mailServerId"

    move-object/from16 v0, p3

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v3, "recpType"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "to"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "cc"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "bcc"

    aput-object v6, v4, v5

    invoke-virtual {v12, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v13

    .line 131
    .local v13, "toccbcccount":Z
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 132
    const-string/jumbo v3, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v3, "mailServerId"

    move-object/from16 v0, p3

    invoke-virtual {v12, v3, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v3, "recpType"

    const-string/jumbo v4, "from"

    invoke-virtual {v12, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 138
    .local v10, "from":Z
    if-eqz v13, :cond_1

    if-eqz v10, :cond_1

    .line 155
    .end local v10    # "from":Z
    .end local v12    # "select":Lcom/alibaba/alimei/orm/query/Select;
    .end local v13    # "toccbcccount":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Message"

    invoke-direct {v11, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v11, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "toList"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "bccList"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "ccList"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "fromList"

    aput-object v5, v3, v4

    invoke-virtual {v11, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 145
    const-string/jumbo v3, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v3, "syncServerId"

    move-object/from16 v0, p3

    invoke-virtual {v11, v3, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 148
    .local v2, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v2, :cond_0

    .line 149
    iget-object v3, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 150
    .local v7, "to":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iget-object v3, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 151
    .local v8, "cc":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iget-object v3, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mBcc:Ljava/lang/String;

    invoke-static {v3}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 152
    .local v9, "bcc":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iget-object v3, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lair;->g(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-result-object v10

    .local v10, "from":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    .line 153
    invoke-virtual/range {v3 .. v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->handleMailRecipientIntoParticipants(JLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/alimei/restfulapi/data/AliAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v2    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    .end local v7    # "to":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    .end local v8    # "cc":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    .end local v9    # "bcc":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    .end local v10    # "from":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v11    # "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public lookupContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "recipient_lookup"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "_id"

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string/jumbo v3, "account"

    invoke-virtual {v1, v3, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    .line 426
    .local v0, "result":Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryAllRevokeStatus(J)Ljava/util/List;
    .locals 7
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MailRevokeStatus"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 518
    .local v2, "rsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;>;"
    if-nez v2, :cond_1

    .line 519
    const/4 v0, 0x0

    .line 526
    :cond_0
    return-object v0

    .line 522
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    .line 524
    .local v1, "rs":Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->buildRevokeModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;)Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryMailParticipantsMap(JLjava/lang/String;Z)Ljava/util/Map;
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "includeMailSender"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    const-string/jumbo v11, "EmailProvider.db"

    const-string/jumbo v12, "mailParticipants"

    invoke-direct {v8, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v8, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v10, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v10, "mailServerId"

    move-object/from16 v0, p3

    invoke-virtual {v8, v10, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    if-nez p4, :cond_0

    .line 319
    const-string/jumbo v10, "recpType != ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "from"

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 322
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;>;"
    new-instance v6, Ljava/util/HashMap;

    const/4 v10, 0x3

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 323
    .local v6, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    if-nez v3, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-object v6

    .line 327
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v9, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v2, "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v1, "bccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v5, "froms":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    if-eqz v3, :cond_7

    .line 332
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    .line 333
    .local v4, "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->buildMailParticipantsModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;)Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    move-result-object v7

    .line 334
    .local v7, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    if-eqz v7, :cond_3

    .line 337
    const-string/jumbo v11, "to"

    iget-object v12, v7, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 338
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    :cond_4
    const-string/jumbo v11, "cc"

    iget-object v12, v7, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 340
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_5
    const-string/jumbo v11, "bcc"

    iget-object v12, v7, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 342
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_6
    const-string/jumbo v11, "from"

    iget-object v12, v7, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 344
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    .end local v4    # "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;
    .end local v7    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_7
    const-string/jumbo v10, "to"

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v10, "cc"

    invoke-virtual {v6, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v10, "bcc"

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    if-eqz p4, :cond_1

    .line 352
    const-string/jumbo v10, "from"

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public queryMailReadStatus(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 98
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v2, "mailServerId"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    .line 101
    .local v0, "entry":Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->buildMailReadStatusModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;)Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    move-result-object v2

    return-object v2
.end method

.method public queryRevokeStatus(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MailRevokeStatus"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v2, "serverId"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    .line 543
    .local v0, "revokeStatus":Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;
    if-nez v0, :cond_0

    .line 544
    const/4 v2, 0x0

    .line 547
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;->buildRevokeModel(Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;)Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    move-result-object v2

    goto :goto_0
.end method
