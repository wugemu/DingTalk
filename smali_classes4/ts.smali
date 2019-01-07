.class public final Lts;
.super Lyq;
.source "CreateUploadIdTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "size"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Lyq;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lts;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 44
    iput-object p1, p0, Lts;->a:Ljava/lang/String;

    .line 45
    iput-wide p2, p0, Lts;->b:J

    .line 46
    iput-wide p4, p0, Lts;->c:J

    .line 47
    return-void
.end method

.method static synthetic a(Lts;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lts;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 32
    iput-object p1, p0, Lts;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic a(Lts;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 32
    iget-object v0, p0, Lts;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lts;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lts;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lts;)J
    .locals 2
    .param p0, "x0"    # Lts;

    .prologue
    .line 32
    iget-wide v0, p0, Lts;->b:J

    return-wide v0
.end method

.method static synthetic c(Lts;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lts;

    .prologue
    .line 32
    iget-object v0, p0, Lts;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lts;)J
    .locals 2
    .param p0, "x0"    # Lts;

    .prologue
    .line 32
    iget-wide v0, p0, Lts;->c:J

    return-wide v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string/jumbo v0, "CreateUploadIdTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 51
    new-instance v3, Lyc;

    const-string/jumbo v6, "cspace_dentry_create_upload_id"

    iget-object v7, p0, Lts;->a:Ljava/lang/String;

    invoke-direct {v3, v6, v7, v11}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    .local v3, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v2

    .line 54
    .local v2, "eventCenter":Lya;
    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    .line 56
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v6

    iget-object v7, p0, Lts;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v4

    .line 57
    .local v4, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v4, :cond_0

    .line 58
    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v6}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v6

    iput-object v6, v3, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 59
    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "not exist account: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lts;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzb;->e(Ljava/lang/String;)I

    .line 130
    :goto_0
    return v10

    .line 64
    :cond_0
    iget-wide v6, p0, Lts;->c:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 65
    iput v12, v3, Lyc;->c:I

    .line 66
    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v6}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v6

    iput-object v6, v3, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 67
    iget-wide v6, p0, Lts;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lyc;->g:Ljava/lang/Object;

    .line 68
    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 74
    .local v0, "dentryDatasouce":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v6, p0, Lts;->a:Ljava/lang/String;

    invoke-static {v6, v11}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v5

    .line 75
    .local v5, "rpcAttachmentService":Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;
    iget-wide v6, p0, Lts;->c:J

    new-instance v8, Lts$1;

    invoke-direct {v8, p0, v0}, Lts$1;-><init>(Lts;Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;)V

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->createUploadId(JLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 117
    iget-object v6, p0, Lts;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v6, :cond_2

    iget-object v6, p0, Lts;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    :cond_2
    iput v12, v3, Lyc;->c:I

    .line 119
    iget-object v6, p0, Lts;->e:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v6, v3, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 120
    iget-wide v6, p0, Lts;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lyc;->g:Ljava/lang/Object;

    .line 121
    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 123
    :cond_3
    iput v10, v3, Lyc;->c:I

    .line 124
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 125
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-wide v6, p0, Lts;->b:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 126
    iget-object v6, p0, Lts;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadId(Ljava/lang/String;)V

    .line 127
    iput-object v1, v3, Lyc;->g:Ljava/lang/Object;

    .line 128
    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
