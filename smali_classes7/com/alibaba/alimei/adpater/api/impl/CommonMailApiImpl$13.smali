.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->changeMailAllReadStatus(JZLjava/lang/String;Lxv;)V
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

.field final synthetic val$mailboxId:J

.field final synthetic val$readStatus:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 994
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;->val$mailboxId:J

    iput-boolean p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;->val$readStatus:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 998
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 999
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;->val$mailboxId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMailItemIdsByFolderId(JJ)Ljava/util/List;

    move-result-object v7

    .line 1001
    .local v7, "serverIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1002
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    .line 1003
    .local v6, "serverIds":[Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1004
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$13;->val$readStatus:Z

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changeMailReadStatus(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 1007
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapReadStatusCommand;

    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapReadStatusCommand;-><init>(Ljava/lang/String;J)V

    .line 1008
    .local v0, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1009
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1011
    .end local v0    # "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    .end local v6    # "serverIds":[Ljava/lang/String;
    :cond_0
    return-void
.end method
