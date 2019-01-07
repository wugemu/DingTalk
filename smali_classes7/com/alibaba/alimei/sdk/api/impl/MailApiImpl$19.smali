.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$mailServerIds:[Ljava/lang/String;

.field final synthetic val$readStatus:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;->val$readStatus:Z

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;->val$mailServerIds:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1297
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 1298
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$1300(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;->val$readStatus:Z

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$19;->val$mailServerIds:[Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changeMailReadStatus(JLjava/lang/String;Z[Ljava/lang/String;)V

    .line 1301
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeReadStatusCommand;

    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeReadStatusCommand;-><init>(Ljava/lang/String;J)V

    .line 1302
    .local v0, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1303
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1304
    return-void
.end method
