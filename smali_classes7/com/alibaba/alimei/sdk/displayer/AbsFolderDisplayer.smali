.class public abstract Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "AbsFolderDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/sdk/displayer/Displayer",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsFolderDisplayer"


# instance fields
.field private mFolderContentObserver:Lxm;

.field private mFolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIncludeVirtualFolders:Z

.field private mTopFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mIsIncludeVirtualFolders:Z

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->addFolders(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->fillData()V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->loadFoldersFromLocal(Z)V

    return-void
.end method

.method private declared-synchronized addFolders(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    .local p1, "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 132
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    :cond_0
    const/4 v7, 0x0

    .line 199
    :goto_0
    monitor-exit p0

    return v7

    .line 137
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v6, "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 139
    .local v3, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget v8, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v8}, Laiv;->a(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 150
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 130
    .end local v3    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v6    # "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 154
    .restart local v6    # "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 155
    .restart local v3    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    iget-object v9, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 157
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 159
    .local v0, "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 164
    .end local v0    # "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v3    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 165
    .restart local v3    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->isTopFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 166
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 170
    :cond_7
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    iget-object v9, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 171
    .local v5, "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :goto_4
    if-eqz v5, :cond_8

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->isTopFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 172
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    iget-object v9, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    check-cast v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .restart local v5    # "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    goto :goto_4

    .line 174
    :cond_8
    if-eqz v5, :cond_6

    .line 176
    iget-object v2, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 177
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-nez v2, :cond_9

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object v2, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 180
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 183
    :cond_9
    const/4 v4, 0x0

    .line 184
    .local v4, "found":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 185
    .local v1, "childFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v9, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iget-object v10, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 186
    const/4 v4, 0x1

    .line 190
    .end local v1    # "childFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_b
    if-nez v4, :cond_6

    .line 191
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 199
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v3    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "found":Z
    .end local v5    # "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private declared-synchronized changedFolders(Ljava/util/List;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "changedFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-eqz v16, :cond_1

    .line 208
    :cond_0
    const/16 v16, 0x0

    .line 310
    :goto_0
    monitor-exit p0

    return v16

    .line 211
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 212
    .local v5, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Laiv;->a(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 217
    .local v9, "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v9, :cond_2

    .line 220
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v15, 0x0

    .line 225
    .local v15, "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 226
    .local v7, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v0, v7, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 227
    move-object v15, v7

    .line 253
    .end local v7    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_4
    :goto_2
    if-eqz v15, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    .end local v5    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v9    # "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v15    # "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 230
    .restart local v5    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v7    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v9    # "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v15    # "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_5
    :try_start_2
    iget-object v4, v7, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 231
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    .line 234
    const/4 v14, 0x0

    .line 235
    .local v14, "toRemoveFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 236
    .local v2, "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 237
    move-object v14, v2

    .line 241
    .end local v2    # "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_7
    if-eqz v14, :cond_3

    .line 242
    invoke-interface {v4, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v14}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getChildrenFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;

    move-result-object v11

    .line 245
    .local v11, "removeFolderChildren":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 246
    invoke-interface {v4, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 259
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v5    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v7    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v9    # "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v11    # "removeFolderChildren":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v14    # "toRemoveFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v15    # "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 260
    .restart local v5    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    iget v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Laiv;->a(I)Z

    move-result v17

    if-nez v17, :cond_b

    .line 263
    :cond_a
    const-string/jumbo v17, "AbsFolderDisplayer"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "folder can not exist, continue, folder: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 267
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->isTopFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 272
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 273
    .local v10, "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :goto_4
    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->isTopFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    check-cast v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .restart local v10    # "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    goto :goto_4

    .line 276
    :cond_d
    if-eqz v10, :cond_9

    .line 277
    iget-object v4, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 279
    .restart local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getChildrenFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;

    move-result-object v6

    .line 281
    .local v6, "folderChildren":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v13, "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    if-nez v4, :cond_e

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .restart local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iput-object v4, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 288
    :cond_e
    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_f

    .line 290
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_f
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_10
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 295
    .local v12, "toAddFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    const/4 v8, 0x0

    .line 296
    .local v8, "found":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_11
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 297
    .local v3, "childFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v0, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 298
    const/4 v8, 0x1

    .line 302
    .end local v3    # "childFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_12
    if-nez v8, :cond_10

    .line 303
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 310
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v5    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v6    # "folderChildren":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v8    # "found":Z
    .end local v10    # "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v12    # "toAddFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v13    # "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :cond_13
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method private declared-synchronized deleteFolders(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 318
    .local p1, "deleteFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    :cond_0
    const/4 v7, 0x0

    .line 364
    :goto_0
    monitor-exit p0

    return v7

    .line 322
    :cond_1
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "delete folder "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 325
    .local v2, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget v8, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v8}, Laiv;->a(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 329
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    iget-object v9, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 330
    .local v4, "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v4, :cond_2

    .line 335
    const/4 v6, 0x0

    .line 336
    .local v6, "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 337
    .local v3, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v9, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iget-object v10, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 338
    move-object v6, v3

    .line 359
    .end local v3    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_4
    :goto_2
    if-eqz v6, :cond_2

    .line 360
    iget-object v8, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 318
    .end local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v6    # "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 341
    .restart local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v3    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v4    # "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v6    # "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_5
    :try_start_2
    iget-object v1, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 342
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 345
    const/4 v5, 0x0

    .line 346
    .local v5, "toRemoveFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 347
    .local v0, "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iget-object v11, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 348
    move-object v5, v0

    .line 352
    .end local v0    # "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_7
    if-eqz v5, :cond_3

    .line 353
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 364
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v3    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "oldFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v5    # "toRemoveFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v6    # "topFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private fillData()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 487
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->handleDataSorting(Ljava/util/List;)V

    .line 494
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 495
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->handleDataSorting(Ljava/util/List;)V

    goto :goto_0

    .line 500
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    return-void
.end method

.method private static getChildrenFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;
    .locals 6
    .param p0, "folder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 404
    if-nez p0, :cond_1

    .line 427
    :cond_0
    return-object v3

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 409
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, "childrenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 415
    .local v0, "childFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getChildrenFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;

    move-result-object v1

    .line 422
    .local v1, "childList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private isTopFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z
    .locals 6
    .param p1, "folder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v2

    .line 377
    :cond_1
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "0"

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v3

    .line 378
    .local v0, "isTop":Z
    :goto_1
    if-eqz v0, :cond_4

    move v2, v3

    .line 379
    goto :goto_0

    .end local v0    # "isTop":Z
    :cond_3
    move v0, v2

    .line 377
    goto :goto_1

    .line 383
    .restart local v0    # "isTop":Z
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSystemFolder()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 384
    goto :goto_0

    .line 387
    :cond_5
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 389
    .local v1, "parentFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSystemFolder()Z

    move-result v2

    goto :goto_0
.end method

.method private declared-synchronized loadFoldersFromLocal(Z)V
    .locals 4
    .param p1, "isSyncFromServer"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 78
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 80
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;Z)V

    .line 100
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getFolderApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 101
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    iget-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mIsIncludeVirtualFolders:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 102
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryVisibleFoldersForDingTalk(ZLxv;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    .line 104
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryVisibleFolders(ZLxv;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v0    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 106
    .restart local v0    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    .restart local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;>;"
    :cond_1
    :try_start_2
    const-string/jumbo v2, "AbsFolderDisplayer"

    const-string/jumbo v3, "loadFoldersFromLocal fail for folderApi is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public ennableIncludeVirtualFolders(Z)V
    .locals 0
    .param p1, "isEnnable"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mIsIncludeVirtualFolders:Z

    .line 64
    return-void
.end method

.method public executeLoad()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mUserAccount:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->initFolderObserver()V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->notifyLoadStarted()V

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->loadFoldersFromLocal(Z)V

    .line 74
    return-void
.end method

.method public abstract getFolderApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;
.end method

.method protected declared-synchronized handleDataChangedGroup(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V
    .locals 3
    .param p1, "folderGroup"    # Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_1
    const/4 v1, 0x0

    .line 463
    .local v1, "result":Z
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getDeletedFolders()Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 465
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->deleteFolders(Ljava/util/List;)Z

    move-result v2

    or-int/lit8 v1, v2, 0x0

    .line 468
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getAddedFolders()Ljava/util/List;

    move-result-object v0

    .line 470
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->addFolders(Ljava/util/List;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 475
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->getChangedFolders()Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 477
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->changedFolders(Ljava/util/List;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 480
    :cond_4
    if-eqz v1, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->fillData()V

    .line 482
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->notifyDataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    .end local v0    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected initFolderObserver()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    .line 520
    const-class v0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    invoke-static {v0, v1}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 522
    :cond_0
    return-void
.end method

.method protected loadFromServer()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 123
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->getFolderApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 124
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->startSyncFolder(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mTopFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    if-eqz v0, :cond_0

    .line 117
    const-class v0, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    invoke-static {v0, v1}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mFolderContentObserver:Lxm;

    .line 120
    :cond_0
    return-void
.end method

.method public queryMailMovableFolders(J)Ljava/util/List;
    .locals 7
    .param p1, "excludeFolderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 440
    .local v0, "f":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    .line 444
    iget v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v3}, Laja;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v0    # "f":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_1
    return-object v1
.end method
