.class public final Ltw;
.super Lyq;
.source "PreviewDocTask.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 42
    invoke-direct {p0}, Lyq;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ltw;->b:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 43
    iput-object p1, p0, Ltw;->d:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ltw;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 45
    return-void
.end method

.method static synthetic a(Ltw;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Ltw;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 28
    iput-object p1, p0, Ltw;->b:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method


# virtual methods
.method protected final c()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 49
    new-instance v1, Lyc;

    const-string/jumbo v4, "cspace_dentry_preview_doc"

    iget-object v5, p0, Ltw;->d:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v6}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    .local v1, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v0

    .line 52
    .local v0, "eventCenter":Lya;
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 54
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    iget-object v5, p0, Ltw;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v2

    .line 55
    .local v2, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v2, :cond_0

    .line 56
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 57
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "not exist account: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ltw;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->e(Ljava/lang/String;)I

    .line 96
    :goto_0
    return v8

    .line 62
    :cond_0
    iget-object v4, p0, Ltw;->d:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getDentryService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    move-result-object v3

    .line 63
    .local v3, "rpcDentryService":Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;
    iget-object v4, p0, Ltw;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Ltw;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Ltw;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string/jumbo v6, "file"

    new-instance v7, Ltw$1;

    invoke-direct {v7, p0}, Ltw$1;-><init>(Ltw;)V

    invoke-interface {v3, v5, v4, v6, v7}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->previewDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 87
    iget-object v4, p0, Ltw;->b:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v4, :cond_1

    iget-object v4, p0, Ltw;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    :cond_1
    const/4 v4, 0x2

    iput v4, v1, Lyc;->c:I

    .line 89
    iget-object v4, p0, Ltw;->b:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v4, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 90
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v4, p0, Ltw;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 92
    :cond_3
    iput v8, v1, Lyc;->c:I

    .line 93
    iget-object v4, p0, Ltw;->a:Ljava/lang/String;

    iput-object v4, v1, Lyc;->g:Ljava/lang/Object;

    .line 94
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
