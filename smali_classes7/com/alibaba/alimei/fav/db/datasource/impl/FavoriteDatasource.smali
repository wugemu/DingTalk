.class public Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "FavoriteDatasource.java"

# interfaces
.implements Lcom/alibaba/alimei/fav/db/datasource/IFavoriteDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private checkDumplicate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .locals 12
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;
    .param p6, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v6, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 95
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v9, "msgId"

    invoke-virtual {v6, v9, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v9, "account_name"

    invoke-virtual {v6, v9, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v9, "_delete"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .line 99
    .local v2, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    if-nez v2, :cond_1

    .line 100
    const/4 v3, 0x0

    .line 117
    :cond_0
    :goto_0
    return-object v3

    .line 102
    :cond_1
    new-instance v3, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    invoke-direct {v3, p2, v2}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V

    .line 103
    .local v3, "model":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    new-instance v8, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v8, v9}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 104
    .local v8, "update":Lcom/alibaba/alimei/orm/query/Update;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 105
    .local v4, "modifiedTime":J
    const-string/jumbo v9, "modified_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string/jumbo v9, "_dirty"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string/jumbo v9, "_type"

    invoke-virtual {v8, v9, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string/jumbo v9, "_title"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string/jumbo v9, "_summary"

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string/jumbo v9, "_content"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string/jumbo v9, "_id"

    iget-wide v10, v2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v7, 0x1

    .line 113
    .local v7, "success":Z
    :goto_1
    if-eqz v7, :cond_0

    .line 114
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->setDirty(Z)V

    .line 115
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->setModifiedTime(J)V

    goto :goto_0

    .line 112
    .end local v7    # "success":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getFavoriteEntry(Lcom/alibaba/alimei/fav/model/FavoriteModel;)Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .locals 11
    .param p1, "favoriteModel"    # Lcom/alibaba/alimei/fav/model/FavoriteModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v5, 0x0

    .line 336
    :goto_0
    return-object v5

    .line 301
    :cond_0
    new-instance v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v5}, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;-><init>()V

    .line 302
    .local v5, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getAccountName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->accountName:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContent()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->content:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->type:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->title:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getServerId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->serverId:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getSummary()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->summary:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->isDirty()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    :goto_1
    iput v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->dirty:I

    .line 309
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->isDelete()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    iput v9, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->delete:I

    .line 310
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getTag()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->tag:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getCreateTime()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->createTime:J

    .line 312
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getModifiedTime()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->modifiedTime:J

    .line 313
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getMsgId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->msgId:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContentJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 317
    .local v2, "contentObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 318
    const-string/jumbo v8, "cname"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "cname":Ljava/lang/String;
    const-string/jumbo v8, "nick"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "nick":Ljava/lang/String;
    const-string/jumbo v8, "alias"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v8, "realname"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "readName":Ljava/lang/String;
    iput-object v1, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->conversationName:Ljava/lang/String;

    .line 323
    iput-object v6, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->nick:Ljava/lang/String;

    .line 324
    iput-object v0, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->alias:Ljava/lang/String;

    .line 325
    iput-object v7, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->realName:Ljava/lang/String;

    .line 327
    const-string/jumbo v8, "dingExt"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 328
    .local v3, "dingObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 329
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "dingText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 331
    iput-object v4, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->dingText:Ljava/lang/String;

    .line 335
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cname":Ljava/lang/String;
    .end local v3    # "dingObj":Lorg/json/JSONObject;
    .end local v4    # "dingText":Ljava/lang/String;
    .end local v6    # "nick":Ljava/lang/String;
    .end local v7    # "readName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getTypes(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->typeList:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "contentObj":Lorg/json/JSONObject;
    :cond_2
    move v8, v10

    .line 308
    goto :goto_1

    :cond_3
    move v9, v10

    .line 309
    goto :goto_2
.end method

.method private getTypes(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "contentObj"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "sbTypes":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    :goto_1
    return-object v2

    .end local v0    # "sbTypes":Ljava/lang/StringBuilder;
    :cond_0
    move-object v2, p1

    .line 340
    goto :goto_0

    .line 344
    .restart local v0    # "sbTypes":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v2, "src"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "src":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_2
    const-string/jumbo v2, "oa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 351
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v2, "link"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 353
    :cond_4
    const-string/jumbo v2, "link"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v2, "oa"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 356
    :cond_5
    const-string/jumbo v2, "file"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string/jumbo v2, "space"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 359
    :cond_6
    const-string/jumbo v2, "space"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string/jumbo v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public clearData()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 420
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 421
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 422
    return-void
.end method

.method public deleteAllFavorite(Ljava/lang/String;)I
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 426
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 427
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "account_name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v1

    return v1
.end method

.method public deleteFavorite(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 230
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v3, "_id=?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteFavorite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 237
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v3, "account_name=?"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v3, "server_id"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getByServerId(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 87
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "server_id"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "_delete"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    return-object v1
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getCSpaceDataBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteModel(J)Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 217
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 218
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .line 220
    .local v0, "favoriteEntry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    const/4 v1, 0x0

    .line 221
    .local v1, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .end local v1    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    iget-object v3, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->accountName:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V

    .line 224
    .restart local v1    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :cond_0
    return-object v1
.end method

.method public insertFavorite(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "favorite"    # Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    invoke-direct {v2, p1, p2}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)V

    .line 73
    .local v2, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getByServerId(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    move-result-object v0

    .line 74
    .local v0, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getFavoriteEntry(Lcom/alibaba/alimei/fav/model/FavoriteModel;)Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    move-result-object v1

    .line 76
    .local v1, "entryInsert":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    invoke-virtual {v1}, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->save()J

    move-result-wide v4

    .line 77
    .local v4, "id":J
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->setId(J)V

    .line 82
    .end local v1    # "entryInsert":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .end local v4    # "id":J
    :goto_0
    return-object v2

    .line 79
    :cond_0
    iget-wide v6, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->id:J

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->setId(J)V

    .line 80
    iget-wide v6, v0, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->id:J

    invoke-virtual {p0, v6, v7, p2}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->updateFavorite(JLcom/alibaba/alimei/restfulapi/v2/data/Favorite;)V

    goto :goto_0
.end method

.method public insertFavorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .locals 12
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getMsgId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->checkDumplicate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v9

    .line 39
    .local v9, "model":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    if-eqz v9, :cond_0

    .line 46
    .end local v9    # "model":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :goto_0
    return-object v9

    .line 43
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getFavoriteEntry(Lcom/alibaba/alimei/fav/model/FavoriteModel;)Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    move-result-object v8

    .line 44
    .local v8, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->save()J

    move-result-wide v10

    .line 45
    .local v10, "id":J
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->setId(J)V

    move-object v9, v0

    .line 46
    goto :goto_0
.end method

.method public insertFavorites(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 51
    .local p2, "favoriteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v12, "resultModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz p2, :cond_1

    .line 53
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    .line 54
    .local v8, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContent()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->checkDumplicate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v9

    .line 56
    .local v9, "model":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    if-eqz v9, :cond_0

    .line 57
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    .end local v9    # "model":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :cond_0
    invoke-direct {p0, v8}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getFavoriteEntry(Lcom/alibaba/alimei/fav/model/FavoriteModel;)Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    move-result-object v7

    .line 62
    .local v7, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    invoke-virtual {v7}, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->save()J

    move-result-wide v10

    .line 63
    .local v10, "id":J
    invoke-virtual {v8, v10, v11}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->setId(J)V

    .line 64
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v7    # "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .end local v8    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .end local v10    # "id":J
    :cond_1
    return-object v12
.end method

.method public markAsDelete(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 156
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v3, "_delete"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v3, "_dirty"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string/jumbo v3, "_id=?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public queryAll(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 244
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 245
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v5, "_delete"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string/jumbo v5, "modified_time DESC"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 248
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;>;"
    const/4 v3, 0x0

    .line 250
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz v0, :cond_0

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .line 253
    .local v1, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    invoke-direct {v2, p1, v1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V

    .line 254
    .local v2, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v1    # "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .end local v2    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :cond_0
    return-object v3
.end method

.method public queryByModifiedTime(Ljava/lang/String;J)Ljava/util/List;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "modifiedTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 280
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 281
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v5, "_delete"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v5, "modified_time>?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 285
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;>;"
    const/4 v3, 0x0

    .line 286
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz v0, :cond_0

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .line 289
    .local v1, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    invoke-direct {v2, p1, v1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V

    .line 290
    .local v2, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v1    # "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .end local v2    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :cond_0
    return-object v3
.end method

.method public queryDirtyFavorite(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 263
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v5, "_dirty"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v5, "modified_time ASC"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 266
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;>;"
    const/4 v3, 0x0

    .line 268
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz v0, :cond_0

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .line 271
    .local v1, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    invoke-direct {v2, p1, v1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V

    .line 272
    .local v2, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    .end local v1    # "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    .end local v2    # "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    :cond_0
    return-object v3
.end method

.method public searchFavorites(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 15
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 368
    .local p3, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    .line 369
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->queryAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 415
    :cond_1
    return-object v6

    .line 371
    :cond_2
    new-instance v10, Lcom/alibaba/alimei/orm/query/Select;

    const-class v12, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v10, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 372
    .local v10, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v12, "account_name=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-virtual {v10, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v12, "_delete"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 375
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    new-array v11, v12, [Ljava/lang/String;

    .line 376
    .local v11, "typeLikeList":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "("

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .local v9, "sbTypes":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 378
    const-string/jumbo v12, "type_list LIKE ? "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_3

    .line 380
    const-string/jumbo v12, " OR "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "%"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .local v8, "sbLike":Ljava/lang/StringBuilder;
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string/jumbo v12, "%"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v8    # "sbLike":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v12, ") "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .end local v4    # "i":I
    .end local v9    # "sbTypes":Ljava/lang/StringBuilder;
    .end local v11    # "typeLikeList":[Ljava/lang/String;
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "%"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v8    # "sbLike":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v12, "%"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "keyLike":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "("

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .local v7, "sbKey":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "_title LIKE ? OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v12, "_summary LIKE ? OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string/jumbo v12, "ding_text LIKE ? OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v12, "nick LIKE ? OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string/jumbo v12, "alias LIKE ? OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v12, "real_name LIKE ? OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v12, "c_name LIKE ?) "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    const/4 v14, 0x3

    aput-object v5, v13, v14

    const/4 v14, 0x4

    aput-object v5, v13, v14

    const/4 v14, 0x5

    aput-object v5, v13, v14

    const/4 v14, 0x6

    aput-object v5, v13, v14

    invoke-virtual {v10, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .end local v5    # "keyLike":Ljava/lang/String;
    .end local v7    # "sbKey":Ljava/lang/StringBuilder;
    .end local v8    # "sbLike":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v12, "modified_time DESC "

    invoke-virtual {v10, v12}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 407
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 408
    .local v3, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v6, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/fav/model/FavoriteModel;>;"
    if-eqz v3, :cond_1

    .line 410
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .line 411
    .local v1, "entry":Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
    new-instance v2, Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V

    .line 412
    .local v2, "favoriteModel":Lcom/alibaba/alimei/fav/model/FavoriteModel;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public updateFavorite(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/fav/model/FavoriteModel;
    .locals 15
    .param p1, "id"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "summary"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v10, Lcom/alibaba/alimei/orm/query/Update;

    const-class v11, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v10, v11}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 123
    .local v10, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v11, "_type"

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string/jumbo v11, "_content"

    move-object/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string/jumbo v11, "_title"

    move-object/from16 v0, p5

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string/jumbo v11, "_summary"

    move-object/from16 v0, p6

    invoke-virtual {v10, v11, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v11, "_dirty"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string/jumbo v11, "modified_time"

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    invoke-static/range {p4 .. p4}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContentJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 130
    .local v4, "contentObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 131
    const-string/jumbo v11, "cname"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "cname":Ljava/lang/String;
    const-string/jumbo v11, "nick"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "nick":Ljava/lang/String;
    const-string/jumbo v11, "alias"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "alias":Ljava/lang/String;
    const-string/jumbo v11, "realname"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "readName":Ljava/lang/String;
    const-string/jumbo v11, "c_name"

    invoke-virtual {v10, v11, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string/jumbo v11, "nick"

    invoke-virtual {v10, v11, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string/jumbo v11, "alias"

    invoke-virtual {v10, v11, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string/jumbo v11, "real_name"

    invoke-virtual {v10, v11, v8}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string/jumbo v11, "dingExt"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 141
    .local v5, "dingObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 142
    const-string/jumbo v11, "title"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "dingText":Ljava/lang/String;
    const-string/jumbo v11, "ding_text"

    invoke-virtual {v10, v11, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cname":Ljava/lang/String;
    .end local v5    # "dingObj":Lorg/json/JSONObject;
    .end local v6    # "dingText":Ljava/lang/String;
    .end local v7    # "nick":Ljava/lang/String;
    .end local v8    # "readName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getTypes(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "types":Ljava/lang/String;
    const-string/jumbo v11, "type_list"

    invoke-virtual {v10, v11, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string/jumbo v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 150
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getFavoriteModel(J)Lcom/alibaba/alimei/fav/model/FavoriteModel;

    move-result-object v11

    return-object v11
.end method

.method public updateFavorite(JLcom/alibaba/alimei/restfulapi/v2/data/Favorite;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "favorite"    # Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    .prologue
    const/4 v8, 0x0

    .line 164
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 165
    .local v3, "update":Lcom/alibaba/alimei/orm/query/Update;
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    const-string/jumbo v4, "_type"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 169
    const-string/jumbo v4, "_content"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContentJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_9

    .line 172
    const-string/jumbo v4, "msgId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    const-string/jumbo v4, "msgId"

    const-string/jumbo v5, "msgId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    :cond_1
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const-string/jumbo v4, "_title"

    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    :cond_2
    const-string/jumbo v4, "summary"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 179
    const-string/jumbo v4, "_summary"

    const-string/jumbo v5, "summary"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    :cond_3
    const-string/jumbo v4, "nick"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    const-string/jumbo v4, "nick"

    const-string/jumbo v5, "nick"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    :cond_4
    const-string/jumbo v4, "alias"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    const-string/jumbo v4, "alias"

    const-string/jumbo v5, "alias"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_5
    const-string/jumbo v4, "realname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 188
    const-string/jumbo v4, "real_name"

    const-string/jumbo v5, "realname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_6
    const-string/jumbo v4, "cname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    const-string/jumbo v4, "c_name"

    const-string/jumbo v5, "cname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    :cond_7
    const-string/jumbo v4, "dingExt"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    .local v0, "dingObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_8

    .line 195
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    const-string/jumbo v4, "ding_text"

    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :cond_8
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/alibaba/alimei/fav/db/datasource/impl/FavoriteDatasource;->getTypes(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "types":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 201
    const-string/jumbo v4, "type_list"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .end local v0    # "dingObj":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "types":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "_dirty"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 208
    const-string/jumbo v4, "server_id"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    :cond_a
    const-string/jumbo v4, "modified_time"

    invoke-virtual {p3}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getModifiedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 213
    return-void
.end method
