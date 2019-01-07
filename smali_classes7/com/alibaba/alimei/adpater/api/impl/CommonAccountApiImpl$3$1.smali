.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;
.super Luv;
.source "CommonAccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 10
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-super {p0, p1}, Luv;->checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 186
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v3

    const-class v5, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 187
    .local v0, "accountDatasource":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    const/4 v2, 0x0

    .line 188
    .local v2, "accountModelResult":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    .line 189
    new-instance v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Lcom/alibaba/alimei/framework/model/UserAccountModel;-><init>(J)V

    .line 190
    .local v1, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    const/16 v3, 0xa

    iput v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    .line 191
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$mail:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 192
    const-string/jumbo v3, "oauth"

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingServer:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    .line 194
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingPort:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-boolean v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$incomingSsl:Z

    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    .line 196
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$smtpServer:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$smtpPort:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-boolean v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$smtpSecurity:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    .line 199
    const-string/jumbo v3, "oauth"

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    .line 200
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$oauthToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    .line 201
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$tokenExpireTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    :goto_1
    iput-wide v6, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    .line 202
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    .line 203
    invoke-interface {v0, v1, v4}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->insertCommonAccount(Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 204
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lxr;->a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 206
    .end local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$listener:Lxv;

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$listener:Lxv;

    invoke-interface {v3, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 209
    :cond_1
    return-void

    .restart local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_2
    move v3, v4

    .line 198
    goto :goto_0

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$tokenExpireTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1
.end method

.method public checkAccountFailed(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 213
    invoke-super {p0, p1}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    .line 219
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 220
    instance-of v1, p1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 221
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .line 223
    .local v0, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const-string/jumbo v1, "IMAP- OAUTH LOGIN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$listener:Lxv;

    invoke-static {v0}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 232
    .end local v0    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;

    iget-object v2, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$3;->val$listener:Lxv;

    const-string/jumbo v1, "error_unable_to_connect"

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    .line 227
    :goto_1
    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-interface {v2, v1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0

    .line 228
    :cond_2
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountAuthError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1
.end method
