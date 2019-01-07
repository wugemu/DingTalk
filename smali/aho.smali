.class public final Laho;
.super Lyq;
.source "SyncTagsTask.java"


# instance fields
.field protected a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncTagResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "fullForceSync"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Lyq;-><init>()V

    .line 40
    iput-object p1, p0, Laho;->c:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Laho;->b:Z

    .line 42
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    iput-object v0, p0, Laho;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 43
    return-void
.end method

.method static synthetic a(Laho;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laho;

    .prologue
    .line 30
    iget-object v0, p0, Laho;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Laho;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Laho;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Laho;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Laho;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laho;

    .prologue
    .line 30
    iget-object v0, p0, Laho;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Laho;)Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .locals 1
    .param p0, "x0"    # Laho;

    .prologue
    .line 30
    iget-object v0, p0, Laho;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    return-object v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "SyncTagsTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v1, Lyc;

    const-string/jumbo v5, "basic_SyncTag"

    iget-object v6, p0, Laho;->c:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .local v1, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 52
    .local v0, "eventCenter":Lya;
    iput v8, v1, Lyc;->c:I

    .line 53
    iget-object v5, p0, Laho;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v5, :cond_0

    .line 54
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v5

    iget-object v6, p0, Laho;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v5

    iput-object v5, p0, Laho;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 55
    iget-object v5, p0, Laho;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v5, :cond_0

    .line 56
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    iput-object v4, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 57
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sync beebox for not exist account: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laho;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->a(Ljava/lang/String;)I

    .line 116
    :goto_0
    return v3

    .line 63
    :cond_0
    iget-boolean v5, p0, Laho;->b:Z

    if-eqz v5, :cond_3

    .line 64
    const-string/jumbo v5, "0"

    iput-object v5, p0, Laho;->d:Ljava/lang/String;

    .line 72
    :cond_1
    :goto_1
    const-string/jumbo v5, "SyncTagsTask"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "sync Tags for accountName: "

    aput-object v7, v6, v4

    iget-object v7, p0, Laho;->c:Ljava/lang/String;

    invoke-static {v7}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string/jumbo v3, ", syncKey: "

    aput-object v3, v6, v8

    const/4 v3, 0x3

    iget-object v7, p0, Laho;->d:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Laho;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-nez v3, :cond_2

    .line 75
    new-instance v3, Laho$1;

    invoke-direct {v3, p0}, Laho$1;-><init>(Laho;)V

    iput-object v3, p0, Laho;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 114
    :cond_2
    iget-object v3, p0, Laho;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getSyncService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;

    move-result-object v2

    .line 115
    .local v2, "service":Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;
    iget-object v3, p0, Laho;->d:Ljava/lang/String;

    iget-object v5, p0, Laho;->e:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v2, v3, v5}, Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;->syncTags(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move v3, v4

    .line 116
    goto :goto_0

    .line 66
    .end local v2    # "service":Lcom/alibaba/alimei/restfulapi/service/RpcSyncService;
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v5

    iget-object v6, p0, Laho;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->getTagSyncKey(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Laho;->d:Ljava/lang/String;

    .line 67
    iget-object v5, p0, Laho;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const-string/jumbo v5, "0"

    iput-object v5, p0, Laho;->d:Ljava/lang/String;

    goto :goto_1
.end method
