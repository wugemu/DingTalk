.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;
.super Luv;
.source "CommonAccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 123
    invoke-super {p0, p1}, Luv;->checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 125
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v2, v2, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$mail:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v3, v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v4, v4, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpServer:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v5, v5, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpPort:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-boolean v6, v6, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$smtpSsl:Z

    iget-object v7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-boolean v7, v7, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$allowInvalidCertificates:Z

    new-instance v8, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;

    invoke-direct {v8, p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;)V

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSmtp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V

    .line 150
    return-void
.end method

.method public checkAccountFailed(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 154
    invoke-super {p0, p1}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 157
    instance-of v1, p1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 158
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .line 160
    .local v0, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const-string/jumbo v1, "IMAP-LOGIN"

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

    .line 162
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    invoke-static {v0}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 169
    .end local v0    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v2, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    const-string/jumbo v1, "error_unable_to_connect"

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    .line 164
    :goto_1
    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-interface {v2, v1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0

    .line 165
    :cond_2
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1
.end method
