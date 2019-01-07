.class public final Lud;
.super Lto;
.source "TransferDentryTask.java"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ltn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "targetSpaceId"    # Ljava/lang/String;
    .param p4, "targetPath"    # Ljava/lang/String;
    .param p5, "isCut"    # Z
    .param p6, "autoRename"    # Z
    .param p7, "orverWrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-string/jumbo v0, "cspace_dentry_transfer"

    const-string/jumbo v1, "TransterDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lud;->i:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lud;->j:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lud;->k:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lud;->l:Z

    .line 44
    iput-boolean p6, p0, Lud;->m:Z

    .line 45
    iput-boolean p7, p0, Lud;->n:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 105
    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 106
    :cond_0
    iget-boolean v0, p0, Lud;->l:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    :goto_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 123
    :cond_1
    :goto_1
    iget-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 124
    iget-boolean v0, p0, Lud;->l:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    :goto_2
    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 126
    :cond_2
    return-void

    .line 106
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 107
    :cond_4
    const-wide/32 v0, 0xc6bb02

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 108
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 109
    :cond_5
    const-wide/32 v0, 0xc6b719

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 110
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 111
    :cond_6
    const-wide/32 v0, 0xc6b71b

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 112
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 113
    :cond_7
    const-wide/32 v0, 0xc6b718

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 114
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 115
    :cond_8
    const-wide/32 v0, 0xc6bb00

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 116
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 117
    :cond_9
    const-wide/32 v0, 0xc6b71c

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 118
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryPathUnEnable:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 119
    :cond_a
    const-wide/32 v0, 0xc6c2d0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 120
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lud;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto/16 :goto_1

    .line 124
    :cond_b
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_2
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;)V
    .locals 9
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;)V

    .line 76
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;->getItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResult;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;

    .line 78
    .local v4, "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;->getValue()Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;

    move-result-object v2

    .line 80
    .local v2, "dentryTransfer":Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getDentries()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getDentries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;->getDentries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 85
    .local v0, "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v7, p0, Lud;->b:Ljava/lang/String;

    iget-object v8, p0, Lud;->j:Ljava/lang/String;

    invoke-direct {v1, v0, v7, v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v7, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    .end local v0    # "dentry":Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 89
    iget-object v6, p0, Lud;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v7, p0, Lud;->b:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 93
    .end local v3    # "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_1
    new-instance v6, Ltn;

    invoke-direct {v6, v2}, Ltn;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;)V

    iput-object v6, p0, Lud;->p:Ltn;

    goto :goto_0

    .line 96
    .end local v2    # "dentryTransfer":Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;->getErrorCode()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lud;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v4    # "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;
    :cond_3
    return-void
.end method

.method protected final f()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-object v4, p0, Lud;->i:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "repathItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;>;"
    iget-object v5, p0, Lud;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v4, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lud;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lud;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lud;->o:Ljava/lang/String;

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, "srcPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 56
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 58
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;-><init>()V

    .line 59
    .local v1, "repathItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setAction(I)V

    .line 60
    iget-boolean v4, p0, Lud;->m:Z

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setAutoRename(Z)V

    .line 61
    iget-boolean v4, p0, Lud;->l:Z

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setCut(Z)V

    .line 62
    iget-boolean v4, p0, Lud;->n:Z

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setOverwrite(Z)V

    .line 63
    iget-object v4, p0, Lud;->i:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setSrcSpaceId(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lud;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setTargetSpaceId(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lud;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setTargetFolderPath(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->setSrcPaths(Ljava/util/List;)V

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v4, p0, Lud;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v4, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 70
    .end local v1    # "repathItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;
    .end local v2    # "repathItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;>;"
    .end local v3    # "srcPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lud;->p:Ltn;

    iget-object v1, p0, Lud;->p:Ltn;

    iget-object v2, p0, Lud;->o:Ljava/lang/String;

    iget-object v3, p0, Lud;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lud;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method
