.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;
.super Luv;
.source "CommonAccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 8
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-super {p0, p1}, Luv;->checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 250
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v3

    const-class v5, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 251
    .local v0, "accountDatasource":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    const/4 v2, 0x0

    .line 252
    .local v2, "accountModelResult":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Lcom/alibaba/alimei/framework/model/UserAccountModel;-><init>(J)V

    .line 254
    .local v1, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    const/16 v3, 0xa

    iput v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    .line 255
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$mail:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 256
    const-string/jumbo v3, "oauth"

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$incomingServer:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$incomingPort:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    .line 259
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-boolean v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$incomingSsl:Z

    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    .line 260
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$smtpServer:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    .line 261
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$smtpPort:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-boolean v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$smtpSecurity:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    .line 263
    const-string/jumbo v3, "oauth"

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    .line 264
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$oauthToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    .line 265
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$refreshToken:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthRefreshToken:Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-wide v6, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$expiresTime:J

    iput-wide v6, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    .line 267
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthLastRefreshTime:J

    .line 268
    invoke-interface {v0, v1, v4}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->insertCommonAccount(Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 269
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v3

    invoke-virtual {v3, v1}, Lxr;->a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 271
    .end local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$listener:Lxv;

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$listener:Lxv;

    invoke-interface {v3, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 274
    :cond_1
    return-void

    .restart local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_2
    move v3, v4

    .line 262
    goto :goto_0
.end method

.method public checkAccountFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    invoke-super {p0, p1}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;

    iget-object v1, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$4;->val$listener:Lxv;

    const-string/jumbo v0, "error_unable_to_connect"

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    .line 280
    :goto_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    invoke-interface {v1, v0}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 284
    :cond_0
    return-void

    .line 281
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountAuthError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0
.end method
