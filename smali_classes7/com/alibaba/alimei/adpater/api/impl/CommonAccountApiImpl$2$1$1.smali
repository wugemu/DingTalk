.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;
.super Luv;
.source "CommonAccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;->this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSmtp(Lcom/alibaba/alimei/emailcommon/Account;I)V
    .locals 2
    .param p1, "a"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "securityType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Luv;->checkSmtp(Lcom/alibaba/alimei/emailcommon/Account;I)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;->this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;->this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method

.method public checkSmtpFailed(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    invoke-super {p0, p1}, Luv;->checkSmtpFailed(Ljava/lang/Exception;)V

    .line 137
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;->this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 138
    instance-of v1, p1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .line 140
    .local v0, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;->this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    invoke-static {v0}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 147
    .end local v0    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1$1;->this$2:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;

    iget-object v2, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$2;->val$listener:Lxv;

    const-string/jumbo v1, "error_unable_to_connect"

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    .line 142
    :goto_1
    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-interface {v2, v1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0

    .line 143
    :cond_2
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_1
.end method
