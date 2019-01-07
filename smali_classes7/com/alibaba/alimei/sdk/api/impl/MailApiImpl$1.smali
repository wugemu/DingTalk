.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->queryMailByTagFromServer(Ljava/lang/String;JJLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$endTime:J

.field final synthetic val$startTime:J

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$tag:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$startTime:J

    iput-wide p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$endTime:J

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 19
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 164
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 165
    .local v6, "mAccountName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    .line 167
    .local v4, "mAccountId":J
    new-instance v2, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;JLjava/lang/String;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 198
    .local v2, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    sget-object v3, Lagy;->a:Lagy;

    .line 1030
    iget v10, v3, Lagy;->b:I

    .line 200
    .local v10, "windowSize":I
    const/4 v3, 0x0

    invoke-static {v6, v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$tag:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$startTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$1;->val$endTime:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    invoke-interface/range {v7 .. v18}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->searchMail(Ljava/lang/String;IIILjava/lang/String;IJJLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 202
    return-void
.end method
