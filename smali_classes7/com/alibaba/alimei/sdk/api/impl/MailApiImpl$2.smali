.class Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->loadMailHistoryByTag(Ljava/lang/String;JJLxv;)V
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

.field final synthetic val$endTime:J

.field final synthetic val$listener:Lxv;

.field final synthetic val$startTime:J

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;Ljava/lang/String;JJLxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$tag:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$endTime:J

    iput-wide p6, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$startTime:J

    iput-object p8, p0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$listener:Lxv;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 20
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 217
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 218
    .local v17, "accountName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v3

    .line 219
    .local v3, "accountId":J
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$endTime:J

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->loadHistoryMailsFromDBByTag(JLjava/lang/String;J)Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    sget-object v2, Lagy;->a:Lagy;

    .line 1030
    iget v0, v2, Lagy;->b:I

    move/from16 v19, v0

    .line 221
    .local v19, "windowSize":I
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    .local v18, "result":Ljava/lang/Boolean;
    if-eqz v5, :cond_1

    .line 223
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_0

    .line 224
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 228
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$startTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$endTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl$2;->val$listener:Lxv;

    move-object/from16 v16, v0

    move-object/from16 v7, v17

    move-wide v8, v3

    move-object/from16 v10, p1

    invoke-static/range {v6 .. v16}, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;->access$100(Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;Ljava/lang/String;JLcom/alibaba/alimei/framework/api/ApiResult;Ljava/lang/String;JJLxv;)V

    .line 231
    :cond_2
    return-void
.end method
