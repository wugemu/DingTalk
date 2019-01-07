.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->deleteMailByServerId(Lxv;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$listener:Lxv;

.field final synthetic val$mailServerIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;[Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$mailServerIds:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$listener:Lxv;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 24
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 795
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 798
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v20

    .line 799
    .local v20, "trashMailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    .line 802
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$mailServerIds:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 803
    .local v12, "deleteServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$mailServerIds:[Ljava/lang/String;

    array-length v3, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 805
    .local v16, "moveServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v18

    .line 806
    .local v18, "settingDatasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v4, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsFolderTypeSync2Server(Ljava/lang/String;I)Z

    move-result v9

    .line 807
    .local v9, "sync2Server":Z
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v4, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 809
    .local v21, "userDefineDeleteServerId":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-interface {v3, v4, v5, v0}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v20

    .line 814
    :cond_0
    const/4 v7, 0x0

    .line 815
    .local v7, "targetIds":[Ljava/lang/String;
    if-nez v20, :cond_3

    .line 816
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$mailServerIds:[Ljava/lang/String;

    .line 853
    :goto_0
    if-eqz v7, :cond_1

    array-length v3, v7

    if-lez v3, :cond_1

    .line 854
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move v6, v9

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteMailByServerIds(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteMailByServerId targetIds="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v11, Lcom/alibaba/alimei/adpater/task/cmmd/MailDeleteImapCommand;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v11, v3, v4, v5}, Lcom/alibaba/alimei/adpater/task/cmmd/MailDeleteImapCommand;-><init>(Ljava/lang/String;J)V

    .line 857
    .local v11, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v11}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 861
    .end local v11    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 862
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteMailByServerId moveServerIds="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v11, Lcom/alibaba/alimei/adpater/task/cmmd/MailMoveImapCommand;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v11, v3, v4, v5}, Lcom/alibaba/alimei/adpater/task/cmmd/MailMoveImapCommand;-><init>(Ljava/lang/String;J)V

    .line 864
    .restart local v11    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v11}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 866
    .end local v11    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    :cond_2
    return-void

    .line 818
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$mailServerIds:[Ljava/lang/String;

    invoke-interface {v2, v4, v5, v3}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMailFoldersByServerId(J[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 819
    .local v15, "mailFolderMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v15, :cond_2

    .line 822
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object/from16 v19, v7

    .line 823
    .end local v7    # "targetIds":[Ljava/lang/String;
    .local v19, "targetIds":[Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 824
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 825
    .local v17, "serverId":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 828
    .local v13, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 829
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v17, v6, v8

    invoke-interface {v2, v4, v5, v3, v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteMailByServerIdByUser(JLjava/lang/String;[Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$listener:Lxv;

    if-eqz v3, :cond_4

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$10;->val$listener:Lxv;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 837
    :cond_5
    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isTrashFolder()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v13}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v22, v0

    cmp-long v3, v4, v22

    if-nez v3, :cond_7

    .line 838
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 840
    .end local v19    # "targetIds":[Ljava/lang/String;
    .restart local v7    # "targetIds":[Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "targetIds":[Ljava/lang/String;
    check-cast v7, [Ljava/lang/String;

    .restart local v7    # "targetIds":[Ljava/lang/String;
    move-object/from16 v19, v7

    .end local v7    # "targetIds":[Ljava/lang/String;
    .restart local v19    # "targetIds":[Ljava/lang/String;
    goto :goto_1

    .line 842
    :cond_7
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/16 v22, 0x0

    aput-object v17, v10, v22

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->moveMailToNewFolder(JLjava/lang/String;JLjava/lang/String;Z[Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v13    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v17    # "serverId":Ljava/lang/String;
    :cond_8
    move-object/from16 v7, v19

    .end local v19    # "targetIds":[Ljava/lang/String;
    .restart local v7    # "targetIds":[Ljava/lang/String;
    goto/16 :goto_0
.end method
