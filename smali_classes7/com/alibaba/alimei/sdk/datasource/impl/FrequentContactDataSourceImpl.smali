.class public Lcom/alibaba/alimei/sdk/datasource/impl/FrequentContactDataSourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "FrequentContactDataSourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private buildFrequentContactModel(Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;)Lcom/alibaba/alimei/sdk/model/FrequentContactModel;
    .locals 4
    .param p1, "frequentContactEntry"    # Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;-><init>()V

    .line 204
    .local v0, "frequentContactModel":Lcom/alibaba/alimei/sdk/model/FrequentContactModel;
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->setDisplayName(Ljava/lang/String;)V

    .line 205
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->setPinyinAll(Ljava/lang/String;)V

    .line 206
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinInitial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->setPinyinInitial(Ljava/lang/String;)V

    .line 207
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->mailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->setMailAddress(Ljava/lang/String;)V

    .line 208
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->modifyTime:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->setModifyTime(J)V

    .line 209
    iget v1, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->useCount:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/model/FrequentContactModel;->setUseCount(I)V

    goto :goto_0
.end method

.method private makeDisplayNameAndPinyin(Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;Ljava/lang/String;)V
    .locals 7
    .param p1, "frequentContactEntry"    # Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    .param p2, "alias"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {p2}, Lain;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v4

    invoke-virtual {v4, p2}, Lagr;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 126
    .local v3, "tokens":Ljava/util/List;, "Ljava/util/List<Lagr$a;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "pinyinAll":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "pinyinInitial":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lagr$a;

    .line 131
    .local v2, "token":Lagr$a;
    iget-object v5, v2, Lagr$a;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v5, v2, Lagr$a;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    .end local v2    # "token":Lagr$a;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinAll:Ljava/lang/String;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinInitial:Ljava/lang/String;

    goto :goto_0

    .line 140
    .end local v0    # "pinyinAll":Ljava/lang/StringBuilder;
    .end local v1    # "pinyinInitial":Ljava/lang/StringBuilder;
    .end local v3    # "tokens":Ljava/util/List;, "Ljava/util/List<Lagr$a;>;"
    :cond_3
    iput-object p2, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinAll:Ljava/lang/String;

    .line 141
    iput-object p2, p1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinInitial:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public checkAndDeleteTopByModifyTimeOrder(IILjava/lang/String;)V
    .locals 6
    .param p1, "max"    # I
    .param p2, "topNum"    # I
    .param p3, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 216
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "frequent_contact"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "account_id"

    invoke-virtual {v1, v3, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->count()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 222
    :cond_0
    if-le p2, p1, :cond_1

    .line 223
    move p2, p1

    .line 226
    :cond_1
    const-string/jumbo v3, "EmailProvider.db"

    invoke-static {v3}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 228
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v2, "sqlStringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string/jumbo v3, "frequent_contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v3, "(select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v3, "frequent_contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v3, "account_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string/jumbo v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string/jumbo v3, "\' order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v3, "modify_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v3, " asc limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "EmailProvider.db"

    return-object v0
.end method

.method public insertOrUpdateFrequentContactsInAddress(Ljava/lang/String;JLjava/util/List;)V
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailDate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 111
    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 70
    .local v0, "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "frequent_contact"

    invoke-direct {v3, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "use_count"

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v6, "display_name"

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v6, "account_id"

    invoke-virtual {v3, v6, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v6, "mail_address"

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    .line 79
    .local v2, "frequentContactEntryInDataBase":Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    if-eqz v2, :cond_3

    .line 81
    new-instance v4, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "frequent_contact"

    invoke-direct {v4, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v4, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "use_count"

    iget v7, v2, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->useCount:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string/jumbo v6, "modify_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->displayName:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 86
    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/FrequentContactDataSourceImpl;->makeDisplayNameAndPinyin(Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v6, "display_name"

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string/jumbo v6, "pin_yin_all"

    iget-object v7, v2, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinAll:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v6, "pin_yin_initial"

    iget-object v7, v2, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->pinyinInitial:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_2
    const-string/jumbo v6, "account_id"

    invoke-virtual {v4, v6, p1}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v6, "mail_address"

    iget-object v7, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto/16 :goto_0

    .line 100
    .end local v4    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :cond_3
    new-instance v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;-><init>()V

    .line 101
    .local v1, "frequentContactEntry":Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->mailAddress:Ljava/lang/String;

    .line 102
    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    iput-object v6, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->displayName:Ljava/lang/String;

    .line 103
    iput-object p1, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->accountId:Ljava/lang/String;

    .line 104
    iput-wide p2, v1, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->modifyTime:J

    .line 106
    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/FrequentContactDataSourceImpl;->makeDisplayNameAndPinyin(Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;->save()J

    goto/16 :goto_0
.end method

.method public insertOrUpdateFrequentContactsInMails(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Mail;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    .local p2, "addMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Mail;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/Mail;

    .line 44
    .local v0, "mail":Lcom/alibaba/alimei/restfulapi/data/Mail;
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    if-eqz v3, :cond_2

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "newFrequentContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    iget-object v3, v3, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 52
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->to:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_3
    :goto_1
    iget-wide v4, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->date:J

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/FrequentContactDataSourceImpl;->insertOrUpdateFrequentContactsInAddress(Ljava/lang/String;JLjava/util/List;)V

    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/Mail;->from:Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public queryFrequentContacts(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "isIntelligent"    # Z
    .param p4, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 148
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    const-string/jumbo v9, "EmailProvider.db"

    const-string/jumbo v10, "frequent_contact"

    invoke-direct {v4, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v8, "display_name"

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v8, "mail_address"

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v8, "pin_yin_all"

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v8, "pin_yin_initial"

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v8, "modify_time"

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v8, "mail_address"

    invoke-virtual {v4, v8, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnLikeOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v8, "display_name"

    invoke-virtual {v4, v8, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnLikeOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v8, "pin_yin_all"

    invoke-virtual {v4, v8, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnLikeOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v8, "pin_yin_initial"

    invoke-virtual {v4, v8, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-eqz p3, :cond_1

    .line 161
    invoke-static {p1}, Lain;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v1, "pinyinAll":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v2, "pinyinInitial":Ljava/lang/StringBuilder;
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v8

    invoke-virtual {v8, p1}, Lagr;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 169
    .local v7, "tokens":Ljava/util/List;, "Ljava/util/List<Lagr$a;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lagr$a;

    .line 170
    .local v6, "token":Lagr$a;
    iget-object v9, v6, Lagr$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v9, v6, Lagr$a;->c:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    .end local v6    # "token":Lagr$a;
    :cond_0
    const-string/jumbo v8, "pin_yin_all"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnLikeOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v8, "pin_yin_initial"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v1    # "pinyinAll":Ljava/lang/StringBuilder;
    .end local v2    # "pinyinInitial":Ljava/lang/StringBuilder;
    .end local v7    # "tokens":Ljava/util/List;, "Ljava/util/List<Lagr$a;>;"
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->bracket()V

    .line 181
    const-string/jumbo v8, "account_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v9, v10

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v8, "modify_time DESC"

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 183
    invoke-virtual {v4, p2}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FrequentContactModel;>;"
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 189
    .local v5, "tempResult":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;>;"
    if-eqz v5, :cond_2

    .line 190
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    .line 191
    .local v0, "frequentContactEntry":Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/FrequentContactDataSourceImpl;->buildFrequentContactModel(Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;)Lcom/alibaba/alimei/sdk/model/FrequentContactModel;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v0    # "frequentContactEntry":Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
    :cond_2
    return-object v3
.end method
