.class public Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
.source "TagDisplayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagDisplayer"


# instance fields
.field private volatile mFirstLoad:Z

.field private volatile mRelease:Z

.field private mTagContentObserver:Lxm;

.field private mTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mRelease:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mFirstLoad:Z

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->fillData()V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;Lcom/alibaba/alimei/sdk/api/TagApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/api/TagApi;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->loadFromServer(Lcom/alibaba/alimei/sdk/api/TagApi;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->loadTagsFromLocal(Z)V

    return-void
.end method

.method private fillData()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mListDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->handleDataSorting(Ljava/util/List;)V

    .line 194
    return-void
.end method

.method private declared-synchronized handleAddTags(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    .local p1, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 257
    .local v1, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 258
    .local v0, "tagId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 262
    invoke-static {v0}, Laiv;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 268
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    .end local v0    # "tagId":Ljava/lang/String;
    .end local v1    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v3, "TagDisplayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handle add tags"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 251
    .end local v2    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized handleChangeTags(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    .local p1, "changeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 226
    .local v2, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v1, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 227
    .local v1, "tagId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 231
    invoke-static {v1}, Laiv;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 238
    .local v0, "oldModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    .end local v0    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    .end local v1    # "tagId":Ljava/lang/String;
    .end local v2    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :catch_0
    move-exception v3

    .line 246
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "TagDisplayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handle change tags"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 220
    .end local v3    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized handleDataChangedGroup(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V
    .locals 4
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 167
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getDeletedTags()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getChangedTags()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "changeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/TagGroupModel;->getAddedTags()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->handleDeleteTags(Ljava/util/List;)V

    .line 179
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->handleChangeTags(Ljava/util/List;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->handleAddTags(Ljava/util/List;)V

    .line 184
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->fillData()V

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->notifyDataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "addList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    .end local v1    # "changeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    .end local v2    # "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized handleDeleteTags(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    .local p1, "deleteList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 203
    .local v2, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v1, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    .line 204
    .local v1, "tagId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 208
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 210
    .local v0, "oldModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 214
    .end local v0    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .end local v1    # "tagId":Ljava/lang/String;
    .end local v2    # "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "TagDisplayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handle delete tags"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 197
    .end local v3    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private loadFromServer(Lcom/alibaba/alimei/sdk/api/TagApi;)V
    .locals 1
    .param p1, "tagApi"    # Lcom/alibaba/alimei/sdk/api/TagApi;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alibaba/alimei/sdk/api/TagApi;->startSyncTags(Z)V

    goto :goto_0
.end method

.method private loadTagsFromLocal(Z)V
    .locals 3
    .param p1, "fromServer"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lafv;->i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v1

    .line 60
    .local v1, "tagApi":Lcom/alibaba/alimei/sdk/api/TagApi;
    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;ZLcom/alibaba/alimei/sdk/api/TagApi;)V

    .line 88
    .local v0, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    invoke-interface {v1, v0}, Lcom/alibaba/alimei/sdk/api/TagApi;->queryAllTags(Lxv;)V

    .line 90
    .end local v0    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailTagModel;>;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected executeLoad()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->initTagObserver()V

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->loadTagsFromLocal(Z)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mRelease:Z

    .line 56
    return-void
.end method

.method public getTagColors(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 140
    :cond_0
    return-object v0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 131
    .local v2, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isFollowTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->isCompleteTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected initTagObserver()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    .line 162
    const-class v0, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    invoke-static {v0, v1}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    if-eqz v0, :cond_2

    .line 111
    const-class v0, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    invoke-static {v0, v1}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 112
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mTagContentObserver:Lxm;

    .line 114
    :cond_2
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;->mRelease:Z

    .line 116
    return-void
.end method
