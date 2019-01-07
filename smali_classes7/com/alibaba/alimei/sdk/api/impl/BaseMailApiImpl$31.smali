.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->saveQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

.field final synthetic val$mail:Lcom/alibaba/alimei/sdk/model/MailDetailModel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;->val$mail:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 711
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 712
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;

    invoke-static {v4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;->access$500(Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailApiImpl$31;->val$mail:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->saveQuickReplyContent(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Z

    move-result v1

    .line 713
    .local v1, "result":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 714
    return-void
.end method
