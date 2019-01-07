.class public final Ltc;
.super Lyq;
.source "UpdateSelfInfoTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lyq;-><init>()V

    .line 41
    iput-object v0, p0, Ltc;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 43
    iput-object v0, p0, Ltc;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 46
    iput-object p1, p0, Ltc;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Ltc;->c:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Ltc;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic a(Ltc;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Ltc;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 29
    iput-object p1, p0, Ltc;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Ltc;)Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .locals 1
    .param p0, "x0"    # Ltc;

    .prologue
    .line 29
    iget-object v0, p0, Ltc;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    return-object v0
.end method

.method static synthetic b(Ltc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltc;

    .prologue
    .line 29
    iget-object v0, p0, Ltc;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ltc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltc;

    .prologue
    .line 29
    iget-object v0, p0, Ltc;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "UpdateSelfInfoTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 53
    new-instance v2, Lyc;

    const-string/jumbo v4, "basic_UpdateSelfInfo"

    iget-object v5, p0, Ltc;->a:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    .local v2, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 56
    .local v1, "eventCenter":Lya;
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 58
    iput v8, v2, Lyc;->c:I

    .line 62
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    iget-object v5, p0, Ltc;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    iput-object v4, p0, Ltc;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 63
    iget-object v4, p0, Ltc;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v4, :cond_0

    .line 64
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 65
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sync contact for a not exist account: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ltc;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->e(Ljava/lang/String;)I

    .line 111
    :goto_0
    return v7

    .line 70
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 71
    .local v0, "boxdatsource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-static {}, Lcom/alibaba/alimei/contact/datasource/ContactDatasource$InstanceHolder;->getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    .line 72
    iget-object v4, p0, Ltc;->a:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getContactService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcContactService;

    move-result-object v3

    .line 74
    .local v3, "service":Lcom/alibaba/alimei/restfulapi/service/RpcContactService;
    iget-object v4, p0, Ltc;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    const/16 v6, 0x50

    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 77
    new-instance v4, Ltc$1;

    invoke-direct {v4, p0}, Ltc$1;-><init>(Ltc;)V

    iput-object v4, p0, Ltc;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 101
    iget-object v4, p0, Ltc;->c:Ljava/lang/String;

    iget-object v5, p0, Ltc;->d:Ljava/lang/String;

    iget-object v6, p0, Ltc;->f:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/restfulapi/service/RpcContactService;->updateSelfInfo(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 103
    iget-object v4, p0, Ltc;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v4, :cond_1

    .line 104
    iput v8, v2, Lyc;->c:I

    .line 105
    iget-object v4, p0, Ltc;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v4, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 106
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 108
    :cond_1
    iput v7, v2, Lyc;->c:I

    .line 109
    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
