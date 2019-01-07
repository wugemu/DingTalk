.class public final Lahm;
.super Lyq;
.source "SyncPushDataTask.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folders"    # Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    .param p3, "isHandleSendStatus"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lyq;-><init>()V

    .line 42
    iput-object p1, p0, Lahm;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lahm;->b:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .line 44
    iput-boolean p3, p0, Lahm;->c:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "SyncPushDataTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 30

    .prologue
    .line 49
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v7

    .line 52
    .local v7, "config":Lafy;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v23

    .line 53
    .local v23, "store":Lxz;
    if-nez v23, :cond_0

    .line 54
    const-string/jumbo v10, "sync push data error, sdk not initialized---->>"

    .line 55
    .local v10, "errorMsg":Ljava/lang/String;
    invoke-static {v10}, Lzb;->d(Ljava/lang/String;)I

    .line 56
    const-string/jumbo v25, "SyncPushDataTask"

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Lzd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 v25, 0x1

    .line 176
    .end local v10    # "errorMsg":Ljava/lang/String;
    :goto_0
    return v25

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v24

    .line 60
    .local v24, "userAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v24, :cond_1

    .line 61
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "sync push check mAccountName "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " not login!!!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 62
    .restart local v10    # "errorMsg":Ljava/lang/String;
    invoke-static {v10}, Lzb;->d(Ljava/lang/String;)I

    .line 63
    const-string/jumbo v25, "SyncPushDataTask"

    move-object/from16 v0, v25

    invoke-static {v0, v10}, Lzd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/16 v25, 0x1

    goto :goto_0

    .line 67
    .end local v10    # "errorMsg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v9

    .line 69
    .local v9, "datasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lahm;->c:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 70
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v26

    const/16 v25, 0x5

    move-wide/from16 v0, v26

    move/from16 v2, v25

    invoke-interface {v9, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v22

    .line 71
    .local v22, "sentMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v22, :cond_2

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v26, v0

    invoke-static/range {v25 .. v27}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildPushNewMailTaskCommand(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    move-result-object v6

    .line 74
    .local v6, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    if-eqz v6, :cond_2

    .line 75
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 78
    .end local v6    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_2
    const/16 v25, 0x1

    goto :goto_0

    .line 82
    .end local v22    # "sentMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->b:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-object/from16 v25, v0

    if-nez v25, :cond_4

    .line 83
    const/16 v25, 0x1

    goto :goto_0

    .line 86
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->b:Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->getFolders()Ljava/util/List;

    move-result-object v14

    .line 92
    .local v14, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    const/16 v16, 0x1

    .line 93
    .local v16, "hasSpecifiedFolder":Z
    if-eqz v14, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_7

    .line 94
    :cond_5
    const/16 v16, 0x0

    .line 95
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ": \u670d\u52a1\u5668\u7aef\u672a\u8bc6\u522b\u51fa\u53d8\u5316\u7684\u6587\u4ef6\u5939\u662f\u54ea\u4e2a\uff0c\u5ba2\u6237\u7aef\u5c06\u5bf9\u6240\u6709\u8fdb\u884c\u4e86\u6d88\u606f\u8ba2\u9605\u7684\u6587\u4ef6\u5939\u8fdb\u884c\u6570\u636e\u7684\u540c\u6b65\u5904\u7406"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 96
    .restart local v10    # "errorMsg":Ljava/lang/String;
    invoke-static {v10}, Lzb;->d(Ljava/lang/String;)I

    .line 97
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-interface {v9, v0, v1}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryAllPushFolders(J)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "allPushFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-nez v14, :cond_6

    .line 99
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .restart local v14    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 102
    .local v21, "model":Lcom/alibaba/alimei/sdk/model/FolderModel;
    new-instance v12, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    invoke-direct {v12}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;-><init>()V

    .line 103
    .local v12, "folder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->setFolderId(Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverType:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->setFolderType(I)V

    .line 105
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v4    # "allPushFolders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v10    # "errorMsg":Ljava/lang/String;
    .end local v12    # "folder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    .end local v21    # "model":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v5, "changedFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_8
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    .line 112
    .restart local v12    # "folder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "sync push folder = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lzb;->d(Ljava/lang/String;)I

    .line 113
    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderType()I

    move-result v13

    .line 114
    .local v13, "folderType":I
    invoke-static {v13}, Laja;->c(I)I

    move-result v20

    .line 115
    .local v20, "localType":I
    sparse-switch v20, :sswitch_data_0

    goto :goto_2

    .line 141
    :sswitch_0
    const-string/jumbo v27, "SyncPushDataTask"

    monitor-enter v27

    .line 142
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v28

    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderId()Ljava/lang/String;

    move-result-object v25

    move-wide/from16 v0, v28

    move-object/from16 v2, v25

    invoke-interface {v9, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v11

    .line 143
    .local v11, "foderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v11, :cond_a

    .line 145
    if-eqz v7, :cond_b

    invoke-virtual {v7, v11}, Lafy;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v17

    .line 147
    .local v17, "isAutoSync":Z
    :goto_3
    if-eqz v17, :cond_9

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual {v11}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;->buildPushNewMailTaskCommand(Ljava/lang/String;J)Lcom/alibaba/alimei/sdk/task/cmmd/SyncMailsTaskCommnad;

    move-result-object v6

    .line 149
    .restart local v6    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    if-eqz v6, :cond_9

    .line 150
    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 154
    .end local v6    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_9
    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getDataType()I

    move-result v8

    .line 155
    .local v8, "dataType":I
    if-eqz v16, :cond_c

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v28, 0x0

    const/16 v29, 0x2

    aput v29, v25, v28

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->containDataType(I[I)Z

    move-result v25

    if-eqz v25, :cond_c

    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v25

    iput-boolean v0, v11, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    .line 157
    iget-boolean v0, v11, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 158
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v8    # "dataType":I
    .end local v17    # "isAutoSync":Z
    :cond_a
    monitor-exit v27

    goto/16 :goto_2

    .end local v11    # "foderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :catchall_0
    move-exception v25

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 123
    :sswitch_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->getFolderChangeListeners()Ljava/util/List;

    move-result-object v19

    .line 124
    .local v19, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;>;"
    if-eqz v19, :cond_8

    .line 126
    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;

    .line 127
    .local v18, "listener":Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-interface {v0, v13, v1}, Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;->onFolderChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 131
    .end local v18    # "listener":Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;
    :catch_0
    move-exception v25

    goto/16 :goto_2

    .line 145
    .end local v19    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/handler/OnFolderChangeListener;>;"
    .restart local v11    # "foderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_b
    const/16 v17, 0x1

    goto :goto_3

    .line 155
    .restart local v8    # "dataType":I
    .restart local v17    # "isAutoSync":Z
    :cond_c
    const/16 v25, 0x0

    goto :goto_4

    .line 170
    .end local v8    # "dataType":I
    .end local v11    # "foderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v12    # "folder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    .end local v13    # "folderType":I
    .end local v17    # "isAutoSync":Z
    .end local v20    # "localType":I
    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_e

    .line 171
    new-instance v15, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lahm;->a:Ljava/lang/String;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-direct {v15, v0, v1, v2}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;-><init>(JLjava/lang/String;)V

    .line 172
    .local v15, "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;
    invoke-virtual {v15, v5}, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;->setChangedFolders(Ljava/util/List;)V

    .line 173
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v25

    const-class v26, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 176
    .end local v15    # "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;
    :cond_e
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x41 -> :sswitch_1
        0x46 -> :sswitch_1
        0x47 -> :sswitch_1
        0x48 -> :sswitch_1
        0x49 -> :sswitch_1
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
