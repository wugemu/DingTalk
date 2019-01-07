.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->loadHistoryMails(JILjava/lang/String;Lxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

.field final synthetic val$folderId:J

.field final synthetic val$folderType:I

.field final synthetic val$listener:Lxv;

.field final synthetic val$oldestSerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLjava/lang/String;ILxv;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$folderId:J

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$oldestSerId:Ljava/lang/String;

    iput p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$folderType:I

    iput-object p7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$listener:Lxv;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 14
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 448
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v1

    .line 449
    .local v1, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$folderId:J

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$oldestSerId:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->loadHistoryMailsFromDB(JJLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 450
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 452
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 453
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 454
    sget-object v2, Lagy;->a:Lagy;

    .line 1030
    iget v0, v2, Lagy;->b:I

    .line 455
    .local v0, "windowSize":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 465
    .end local v0    # "windowSize":I
    :goto_0
    return-void

    .line 458
    :cond_0
    iget v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$folderType:I

    invoke-static {v2}, Laja;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 464
    :cond_1
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iget-wide v10, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$folderId:J

    iget v12, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$folderType:I

    iget-object v13, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$6;->val$listener:Lxv;

    move-object v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v7 .. v13}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$400(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;JILxv;)V

    goto :goto_0
.end method
