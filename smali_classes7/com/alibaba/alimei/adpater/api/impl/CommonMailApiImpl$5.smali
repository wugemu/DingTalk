.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;
.super Ljava/lang/Object;
.source "CommonMailApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->loadMailBodyFromServer(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$listener:Lxv;

.field final synthetic val$mailServerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lxv;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$mailServerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 462
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$300(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 463
    .local v0, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$400(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    .line 465
    .local v2, "commonAccount":Lcom/alibaba/alimei/emailcommon/Account;
    if-nez v2, :cond_1

    .line 466
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-interface {v1, v3}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v13

    .line 473
    .local v13, "messageDatasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$mailServerId:Ljava/lang/String;

    invoke-interface {v13, v4, v5, v1}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v10

    .line 475
    .local v10, "dbMessage":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v10, :cond_2

    .line 476
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-interface {v1, v3}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v1, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlPartId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 486
    iget-object v6, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlPartId:Ljava/lang/String;

    .line 487
    .local v6, "partId":Ljava/lang/String;
    iget-object v7, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlEncoding:Ljava/lang/String;

    .line 488
    .local v7, "encoding":Ljava/lang/String;
    iget-object v8, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mHtmlConentType:Ljava/lang/String;

    .line 500
    .local v8, "contentType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v12

    .line 501
    .local v12, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-interface {v12, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v11

    .line 503
    .local v11, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v11, :cond_5

    .line 504
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-interface {v1, v3}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0

    .line 489
    .end local v6    # "partId":Ljava/lang/String;
    .end local v7    # "encoding":Ljava/lang/String;
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v11    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v12    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_3
    iget-object v1, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextPartId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 490
    iget-object v6, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextPartId:Ljava/lang/String;

    .line 491
    .restart local v6    # "partId":Ljava/lang/String;
    iget-object v7, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextEncoding:Ljava/lang/String;

    .line 492
    .restart local v7    # "encoding":Ljava/lang/String;
    iget-object v8, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mTextContentType:Ljava/lang/String;

    .restart local v8    # "contentType":Ljava/lang/String;
    goto :goto_1

    .line 494
    .end local v6    # "partId":Ljava/lang/String;
    .end local v7    # "encoding":Ljava/lang/String;
    .end local v8    # "contentType":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;->val$listener:Lxv;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    invoke-interface {v1, v3}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0

    .line 510
    .restart local v6    # "partId":Ljava/lang/String;
    .restart local v7    # "encoding":Ljava/lang/String;
    .restart local v8    # "contentType":Ljava/lang/String;
    .restart local v11    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .restart local v12    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_5
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v1

    iget-object v3, v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mUid:J

    new-instance v9, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;

    invoke-direct {v9, p0, v0, v10}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$5;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)V

    invoke-virtual/range {v1 .. v9}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V

    goto/16 :goto_0
.end method
