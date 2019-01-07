.class public abstract Lto;
.super Lyq;
.source "AbsCspaceTask.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

.field protected d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

.field protected e:Lya;

.field protected f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field protected g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

.field protected h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lyq;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 43
    iput-object p1, p0, Lto;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lto;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lto;->i:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    iput-object v1, p0, Lto;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    .line 47
    invoke-static {p1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getDentryService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    move-result-object v1

    iput-object v1, p0, Lto;->d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    .line 48
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    iput-object v1, p0, Lto;->e:Lya;

    .line 49
    new-instance v0, Lyc;

    invoke-direct {v0, p2, p1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .local v0, "eventMessage":Lyc;
    iget-object v1, p0, Lto;->e:Lya;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 51
    const-string/jumbo v1, "cspace_dentry_sync"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cspace_dentry_info"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cspace_dentry_search"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cspace_dentry_loadmore"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cspace_dentry_update"

    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cspace_dentry_capacity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;-><init>()V

    iput-object v1, p0, Lto;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;-><init>()V

    iput-object v1, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    goto :goto_0
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lto;->d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    iget-object v1, p0, Lto;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    new-instance v2, Lto$1;

    invoke-direct {v2, p0}, Lto$1;-><init>(Lto;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->syncDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 135
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 346
    const-wide/32 v0, 0x1ed2a0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1ed2a2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1ed688

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 347
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->SpaceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const-wide/32 v0, 0xc6c6b7

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 349
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryServiceUpgrade:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;

    .prologue
    .line 306
    return-void
.end method

.method protected a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;

    .prologue
    .line 313
    return-void
.end method

.method protected a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;

    .prologue
    .line 299
    return-void
.end method

.method protected a(Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SpaceUpdateResult;

    .prologue
    .line 331
    return-void
.end method

.method protected a(Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/SyncDentryResult;

    .prologue
    .line 328
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "successData"    # Ljava/lang/Object;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lto;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "successData"    # Ljava/lang/Object;
    .param p2, "failedData"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 246
    iget-object v1, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v1, :cond_1

    .line 247
    new-instance v0, Lyc;

    iget-object v1, p0, Lto;->i:Ljava/lang/String;

    iget-object v2, p0, Lto;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    .local v0, "eventMessage":Lyc;
    iget-object v1, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 249
    if-eqz p2, :cond_0

    .line 250
    iput-object p2, v0, Lyc;->g:Ljava/lang/Object;

    .line 252
    :cond_0
    iget-object v1, p0, Lto;->e:Lya;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 260
    :goto_0
    return-void

    .line 254
    .end local v0    # "eventMessage":Lyc;
    :cond_1
    new-instance v0, Lyc;

    iget-object v1, p0, Lto;->i:Ljava/lang/String;

    iget-object v2, p0, Lto;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    .restart local v0    # "eventMessage":Lyc;
    if-eqz p1, :cond_2

    .line 256
    iput-object p1, v0, Lyc;->g:Ljava/lang/Object;

    .line 258
    :cond_2
    iget-object v1, p0, Lto;->e:Lya;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "successData"    # Ljava/lang/Object;
    .param p2, "failedData"    # Ljava/lang/Object;
    .param p3, "successParam3"    # Ljava/lang/String;
    .param p4, "failParam3"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    iget-object v1, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v1, :cond_1

    .line 264
    new-instance v0, Lyc;

    iget-object v1, p0, Lto;->i:Ljava/lang/String;

    iget-object v2, p0, Lto;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    .local v0, "eventMessage":Lyc;
    iget-object v1, p0, Lto;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 266
    if-eqz p2, :cond_0

    .line 267
    iput-object p2, v0, Lyc;->g:Ljava/lang/Object;

    .line 269
    :cond_0
    iput-object p4, v0, Lyc;->f:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lto;->e:Lya;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 279
    :goto_0
    return-void

    .line 272
    .end local v0    # "eventMessage":Lyc;
    :cond_1
    new-instance v0, Lyc;

    iget-object v1, p0, Lto;->i:Ljava/lang/String;

    iget-object v2, p0, Lto;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    .restart local v0    # "eventMessage":Lyc;
    if-eqz p1, :cond_2

    .line 274
    iput-object p1, v0, Lyc;->g:Ljava/lang/Object;

    .line 276
    :cond_2
    iput-object p3, v0, Lyc;->f:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lto;->e:Lya;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    goto :goto_0
.end method

.method protected final c()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0}, Lto;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lto;->a()V

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 1060
    :cond_1
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v2, p0, Lto;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 1061
    if-nez v0, :cond_3

    .line 1062
    new-instance v0, Lyc;

    iget-object v2, p0, Lto;->i:Ljava/lang/String;

    iget-object v3, p0, Lto;->b:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1063
    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1064
    iget-object v2, p0, Lto;->e:Lya;

    invoke-interface {v2, v0}, Lya;->a(Lyc;)V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lto;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not exist account: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lto;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    move v0, v1

    .line 84
    :goto_1
    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_sync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-direct {p0}, Lto;->k()V

    .line 106
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lto;->g()V

    goto :goto_0

    .line 1068
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_create"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_save"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_repath"

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_rename"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_restore"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1165
    :cond_5
    iget-object v0, p0, Lto;->d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    iget-object v2, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    new-instance v3, Lto$3;

    invoke-direct {v3, p0}, Lto$3;-><init>(Lto;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->updateDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto :goto_2

    .line 93
    :cond_6
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_copy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    :cond_7
    iget-object v0, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1218
    iget-object v0, p0, Lto;->d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    iget-object v2, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    new-instance v3, Lto$5;

    invoke-direct {v3, p0}, Lto$5;-><init>(Lto;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->updateBooleanDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto/16 :goto_2

    .line 97
    :cond_8
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    :cond_9
    invoke-direct {p0}, Lto;->k()V

    goto/16 :goto_2

    .line 99
    :cond_a
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_transfer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2192
    iget-object v0, p0, Lto;->d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    iget-object v2, p0, Lto;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    new-instance v3, Lto$4;

    invoke-direct {v3, p0}, Lto$4;-><init>(Lto;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->transferDentrys(Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto/16 :goto_2

    .line 101
    :cond_b
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_loadmore"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-direct {p0}, Lto;->k()V

    goto/16 :goto_2

    .line 103
    :cond_c
    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lto;->i:Ljava/lang/String;

    const-string/jumbo v2, "cspace_dentry_capacity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3138
    :cond_d
    iget-object v0, p0, Lto;->d:Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;

    iget-object v2, p0, Lto;->h:Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;

    new-instance v3, Lto$2;

    invoke-direct {v3, p0}, Lto$2;-><init>(Lto;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/v2/service/RpcDentryService;->getSpaceUpdateInfo(Lcom/alibaba/alimei/restfulapi/v2/request/V2SyncReqeustData;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    goto/16 :goto_2
.end method

.method protected final e_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 286
    .line 3282
    invoke-virtual {p0, v0, v0}, Lto;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()V
.end method
