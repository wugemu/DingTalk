.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->deleteLocalMailDraft(Lagz;Lxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$draft:Lagz;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Lagz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;->val$draft:Lagz;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 567
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 568
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$22;->val$draft:Lagz;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->deleteLocalDraft(JLjava/lang/String;Lagz;)V

    .line 569
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 570
    return-void
.end method
