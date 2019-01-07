.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;
.super Luv;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

.field final synthetic val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic val$dbMessage:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$dbMessage:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchMailDetailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 7
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 558
    invoke-super/range {p0 .. p5}, Luv;->fetchMailDetailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V

    .line 560
    const-string/jumbo v0, ""

    .line 561
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 562
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fetchMailDetail failed:"

    aput-object v4, v3, v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v1, :cond_1

    .line 567
    instance-of v1, p5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    check-cast p5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .end local p5    # "exception":Ljava/lang/Exception;
    invoke-static {p5}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 573
    :cond_1
    :goto_0
    return-void

    .line 570
    .restart local p5    # "exception":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0
.end method

.method public fetchMailDetailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 17
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "part"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 520
    invoke-super/range {p0 .. p5}, Luv;->fetchMailDetailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 521
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "fetchMailDetail finish:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v7, 0x0

    .line 525
    .local v7, "html":Ljava/lang/String;
    const/4 v8, 0x0

    .line 526
    .local v8, "text":Ljava/lang/String;
    const/16 v16, 0x0

    .line 529
    .local v16, "summary":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-static {v4, v0}, Lvj;->a(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/mail/Message;)Lvj$i;

    move-result-object v9

    .line 531
    .local v9, "viewableContainer":Lvj$i;
    iget-object v7, v9, Lvj$i;->c:Ljava/lang/String;

    .line 532
    iget-object v8, v9, Lvj$i;->a:Ljava/lang/String;

    .line 533
    invoke-static {v7, v8}, Lair;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 543
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v3

    .line 544
    .local v3, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v6, v6, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailHtmlBody(JLjava/lang/String;Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v6, v6, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$mailServerId:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailBody(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v4, v4, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v4, :cond_0

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v4, v4, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v5, v5, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v3, v10, v11, v5}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMailDetailByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    invoke-interface {v4, v5}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 551
    :cond_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$accountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v13, v4, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->val$dbMessage:Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    iget-wide v14, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-object v10, v3

    invoke-interface/range {v10 .. v16}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->updateMailSummary(JLjava/lang/String;JLjava/lang/String;)V

    .line 554
    .end local v3    # "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .end local v9    # "viewableContainer":Lvj$i;
    :cond_1
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v10, "loadMailBodyFromServer exception "

    aput-object v10, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v4, v4, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v4, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;

    iget-object v4, v4, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    invoke-static {v2}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v5

    invoke-interface {v4, v5}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0
.end method

.method public fetchMailDetailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-super/range {p0 .. p5}, Luv;->fetchMailDetailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 516
    return-void
.end method
