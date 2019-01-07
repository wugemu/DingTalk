.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->changeMailReadStatusByTag(Ljava/lang/String;ZLxv;)V
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

.field final synthetic val$readStatus:Z

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;->val$tag:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;->val$readStatus:Z

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
    .line 1612
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 1613
    .local v1, "msgDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$1900(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;->val$tag:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$27;->val$readStatus:Z

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->changeMailReadStatusByTag(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1616
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/ChangeReadStatusCommand;

    iget-object v2, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lcom/alibaba/alimei/sdk/task/update/command/ChangeReadStatusCommand;-><init>(Ljava/lang/String;J)V

    .line 1617
    .local v0, "command":Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->executeCommand()V

    .line 1618
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1619
    return-void
.end method
