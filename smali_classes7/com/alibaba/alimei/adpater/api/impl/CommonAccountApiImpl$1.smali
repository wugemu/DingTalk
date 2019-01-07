.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;
.super Ljava/lang/Object;
.source "CommonAccountApiImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

.field final synthetic val$incomingPassword:Ljava/lang/String;

.field final synthetic val$incomingPort:Ljava/lang/String;

.field final synthetic val$incomingServer:Ljava/lang/String;

.field final synthetic val$incomingSsl:Z

.field final synthetic val$listener:Lxv;

.field final synthetic val$mail:Ljava/lang/String;

.field final synthetic val$smtpPassword:Ljava/lang/String;

.field final synthetic val$smtpPort:Ljava/lang/String;

.field final synthetic val$smtpServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$mail:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingServer:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingPort:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingSsl:Z

    iput-object p7, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$smtpServer:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$smtpPort:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$smtpPassword:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "smtpSecurity"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v4

    const-class v5, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 78
    .local v0, "accountDatasource":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    const/4 v2, 0x0

    .line 79
    .local v2, "accountModelResult":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v0, :cond_2

    .line 80
    new-instance v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Lcom/alibaba/alimei/framework/model/UserAccountModel;-><init>(J)V

    .line 81
    .local v1, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    const/16 v4, 0xa

    iput v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountType:I

    .line 82
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$mail:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingPassword:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    .line 84
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingServer:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingPort:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    .line 86
    iget-boolean v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$incomingSsl:Z

    iput-boolean v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    .line 87
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$smtpServer:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    .line 88
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$smtpPort:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    .line 90
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$smtpPassword:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    .line 92
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->insertCommonAccount(Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 93
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v3

    .line 94
    .local v3, "store":Lxz;
    if-eqz v3, :cond_0

    .line 95
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$mail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxz;->deleteAccountFromCache(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-static {}, Lxr;->a()Lxr;

    move-result-object v4

    if-eqz v2, :cond_1

    move-object v1, v2

    .end local v1    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    invoke-virtual {v4, v1}, Lxr;->a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 100
    .end local v3    # "store":Lxz;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$listener:Lxv;

    if-eqz v4, :cond_3

    .line 101
    iget-object v4, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->val$listener:Lxv;

    invoke-interface {v4, v2}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 103
    :cond_3
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
