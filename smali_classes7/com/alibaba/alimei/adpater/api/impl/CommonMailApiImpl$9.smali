.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->saveMailDraft(Lagz;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$isSyncToServer:Z

.field final synthetic val$newMail:Lagz;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$newMail:Lagz;

    iput-boolean p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$isSyncToServer:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 21
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 732
    new-instance v8, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v8}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 733
    .local v8, "currentAccount":Lcom/alibaba/alimei/sdk/model/AddressModel;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 735
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 736
    .local v3, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$accountName:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$newMail:Lagz;

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveOrUpdateDraft(JLjava/lang/String;ZLcom/alibaba/alimei/sdk/model/AddressModel;Lagz;Z)J

    move-result-wide v14

    .line 739
    .local v14, "msgId":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$isSyncToServer:Z

    if-eqz v4, :cond_1

    .line 741
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v2

    .line 742
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$1000(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getCopySentMailHasSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$1100(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsCopySentMail(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$602(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Z)Z

    .line 746
    :cond_0
    new-instance v10, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->val$newMail:Lagz;

    iget-wide v0, v4, Lagz;->k:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$9;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$600(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Z

    move-result v20

    invoke-direct/range {v10 .. v20}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;-><init>(Ljava/lang/String;JJJZZZ)V

    .line 747
    .local v10, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;
    invoke-virtual {v10}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->executeCommand()V

    .line 750
    .end local v2    # "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .end local v10    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;
    :cond_1
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 751
    return-void
.end method
