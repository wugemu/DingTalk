.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->sendMail(Lagz;Lxv;)V
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

.field final synthetic val$newMail:Lagz;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;Ljava/lang/String;Lagz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->val$newMail:Lagz;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 21
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 694
    new-instance v8, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v8}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 695
    .local v8, "currentAccount":Lcom/alibaba/alimei/sdk/model/AddressModel;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 696
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->nickName:Ljava/lang/String;

    iput-object v4, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 697
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 701
    .local v3, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->val$accountName:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->val$newMail:Lagz;

    const/4 v10, 0x1

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveOrUpdateDraft(JLjava/lang/String;ZLcom/alibaba/alimei/sdk/model/AddressModel;Lagz;Z)J

    move-result-wide v14

    .line 703
    .local v14, "msgId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sendMail msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", newMail id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->val$newMail:Lagz;

    iget-wide v6, v5, Lagz;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I

    .line 705
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v14, v15}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveSendMailOrDraftSyncMessage(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 707
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v2

    .line 708
    .local v2, "datasource":Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$800(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getCopySentMailHasSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$900(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->getIsCopySentMail(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$602(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Z)Z

    .line 712
    :cond_0
    new-instance v10, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 713
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->val$newMail:Lagz;

    iget-wide v0, v4, Lagz;->k:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$8;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$600(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Z

    move-result v20

    invoke-direct/range {v10 .. v20}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;-><init>(Ljava/lang/String;JJJZZZ)V

    .line 714
    .local v10, "command":Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;
    invoke-virtual {v10}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->executeCommand()V

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "after, command.executeCommand()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I

    .line 716
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 717
    return-void
.end method
