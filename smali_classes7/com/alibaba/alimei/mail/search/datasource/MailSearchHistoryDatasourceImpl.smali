.class public Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "MailSearchHistoryDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private buildHistoryModel(Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;)Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .locals 4
    .param p1, "history"    # Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;-><init>()V

    .line 135
    .local v0, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    iget-wide v2, p1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->id:J

    .line 136
    iget v1, p1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mType:I

    iput v1, v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    .line 137
    iget-object v1, p1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mSearchKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    .line 138
    iget-wide v2, p1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mAccountKey:J

    iput-wide v2, v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->accountKey:J

    .line 139
    iget-wide v2, p1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mVisitTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->lastVisitTime:J

    .line 140
    iget-object v1, p1, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mExtend:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->extend:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearHistory(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->clearHistory(JI)V

    .line 94
    return-void
.end method

.method public clearHistory(JI)V
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    .line 98
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SearchHistory"

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v5, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    if-ltz p3, :cond_0

    .line 101
    const-string/jumbo v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 105
    .local v3, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;-><init>(J)V

    .line 110
    .local v1, "groupModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    .line 111
    .local v2, "history":Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->buildHistoryModel(Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;)Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    move-result-object v4

    .line 112
    .local v4, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addToDeleteList(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V

    goto :goto_1

    .line 115
    .end local v2    # "history":Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;
    .end local v4    # "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    :cond_3
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SearchHistory"

    invoke-direct {v0, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v6, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 119
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 120
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v6

    const-class v7, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    invoke-virtual {v6, v7, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    goto :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "mailsearchhistory.db"

    return-object v0
.end method

.method public queryAllSearchHistory(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SearchHistory"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_key"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 28
    .local v1, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 40
    :cond_1
    return-object v3

    .line 32
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .local v3, "historyModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    .line 34
    .local v0, "history":Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->buildHistoryModel(Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;)Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    move-result-object v2

    .line 35
    .local v2, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public saveHistory(JILjava/lang/String;)V
    .locals 7
    .param p1, "accountKey"    # J
    .param p3, "type"    # I
    .param p4, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->saveHistory(JILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public saveHistory(JILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accountKey"    # J
    .param p3, "type"    # I
    .param p4, "searchKey"    # Ljava/lang/String;
    .param p5, "extend"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v11, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SearchHistory"

    invoke-direct {v9, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v9, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v11, "account_key"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v11, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v11, "history_key"

    move-object/from16 v0, p4

    invoke-virtual {v9, v11, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v8

    .line 56
    .local v8, "isExisit":Z
    new-instance v3, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    move-wide/from16 v0, p1

    invoke-direct {v3, v0, v1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;-><init>(J)V

    .line 57
    .local v3, "groupModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;
    if-eqz v8, :cond_2

    .line 58
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    const-class v11, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SearchHistory"

    invoke-direct {v10, v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v10, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "visit_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string/jumbo v11, "account_key"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v11, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v11, "history_key"

    move-object/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v11, "extend"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v2

    .line 65
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 66
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    .line 67
    .local v4, "history":Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->buildHistoryModel(Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;)Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    move-result-object v5

    .line 68
    .local v5, "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addToChangeList(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V

    .line 86
    .end local v2    # "count":I
    .end local v4    # "history":Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;
    .end local v5    # "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    .end local v10    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 87
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v11

    const-class v12, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    invoke-virtual {v11, v12, v3}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 89
    :cond_1
    return-void

    .line 71
    :cond_2
    new-instance v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;

    invoke-direct {v4}, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;-><init>()V

    .line 72
    .restart local v4    # "history":Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mAccountKey:J

    .line 73
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mSearchKey:Ljava/lang/String;

    .line 74
    move/from16 v0, p3

    iput v0, v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mType:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mVisitTime:J

    .line 76
    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mExtend:Ljava/lang/String;

    .line 77
    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->save()J

    move-result-wide v6

    .line 78
    .local v6, "id":J
    iput-wide v6, v4, Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;->mId:J

    .line 80
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-lez v11, :cond_0

    .line 81
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/search/datasource/MailSearchHistoryDatasourceImpl;->buildHistoryModel(Lcom/alibaba/alimei/mail/search/db/MailSearchHistory;)Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    move-result-object v5

    .line 82
    .restart local v5    # "historyModel":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addToAddList(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V

    goto :goto_0
.end method
