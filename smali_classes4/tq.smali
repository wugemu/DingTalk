.class public final Ltq;
.super Lto;
.source "CopyDentryTask.java"


# instance fields
.field private i:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private j:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "srcDentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "targetDentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "autoRename"    # Z
    .param p5, "autoFixPath"    # Z

    .prologue
    .line 34
    const-string/jumbo v0, "cspace_dentry_copy"

    const-string/jumbo v1, "CopyDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 36
    iput-object p3, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 37
    iput-boolean p5, p0, Ltq;->l:Z

    .line 38
    iput-boolean p4, p0, Ltq;->k:Z

    .line 39
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 113
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6b718

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 114
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 128
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 130
    :cond_2
    return-void

    .line 115
    :cond_3
    const-wide/32 v0, 0xc6bb02

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 116
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 117
    :cond_4
    const-wide/32 v0, 0xc6b719

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 118
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 119
    :cond_5
    const-wide/32 v0, 0xc6bb00

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 120
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 121
    :cond_6
    const-wide/32 v0, 0xc6b71b

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 122
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0

    .line 123
    :cond_7
    const-wide/32 v0, 0xc6c2d0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltq;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;)V
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;)V

    .line 90
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;

    .line 92
    .local v0, "booleanResult":Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 95
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    .line 96
    .local v1, "datasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v5, p0, Ltq;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v4, p0, Ltq;->b:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 103
    .end local v1    # "datasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .end local v2    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;->getErrorCode()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Ltq;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0    # "booleanResult":Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;
    :cond_2
    return-void
.end method

.method protected final f()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_0

    .line 46
    iget-object v4, p0, Ltq;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v5, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "dentryCopyItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;>;"
    new-instance v0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;-><init>()V

    .line 49
    .local v0, "dentryCopyItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setAction(I)V

    .line 50
    iget-boolean v4, p0, Ltq;->k:Z

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setAutoRename(Z)V

    .line 51
    iget-boolean v4, p0, Ltq;->l:Z

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setAuthFixPath(Z)V

    .line 52
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setSrcPath(Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltq;->m:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 55
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 56
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 57
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "fileName":Ljava/lang/String;
    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltq;->m:Ljava/lang/String;

    .line 63
    :goto_1
    iget-object v4, p0, Ltq;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setTargetPath(Ljava/lang/String;)V

    .line 70
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "index":I
    :goto_2
    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setTargetSpaceId(Ljava/lang/String;)V

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v4, p0, Ltq;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v4, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 74
    .end local v0    # "dentryCopyItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;
    .end local v1    # "dentryCopyItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;>;"
    :cond_0
    const/4 v4, 0x1

    return v4

    .line 52
    .restart local v0    # "dentryCopyItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;
    .restart local v1    # "dentryCopyItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;>;"
    :cond_1
    iget-object v4, p0, Ltq;->i:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 61
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltq;->m:Ljava/lang/String;

    goto :goto_1

    .line 65
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setTargetPath(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    .end local v3    # "index":I
    :cond_4
    iget-object v4, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->setTargetPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v2, p0, Ltq;->j:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v1, v2, v0, v0}, Ltq;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
