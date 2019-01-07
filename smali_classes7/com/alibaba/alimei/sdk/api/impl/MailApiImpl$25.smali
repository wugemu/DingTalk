.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->getOnlinePreviewUrl(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$accountName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 12
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1531
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v8

    .line 1532
    .local v8, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v10, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    invoke-interface {v8, v4, v5, v10, v11}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMailDetailById(JJ)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v7

    .line 1533
    .local v7, "mailDetailModel":Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    .line 1534
    .local v3, "BIZ_TYPE":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$accountName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getDentryService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    move-result-object v0

    .line 1535
    .local v0, "rpcDentryService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v7, :cond_0

    iget-object v4, v7, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;->val$attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25$1;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$25;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->previewDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 1567
    return-void

    .line 1535
    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method
