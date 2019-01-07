.class public final Ltx;
.super Lto;
.source "RepathDentryTask.java"


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

.field private k:Z

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p3, "newPath"    # Ljava/lang/String;
    .param p4, "autoRename"    # Z
    .param p5, "rename"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p5, :cond_0

    const-string/jumbo v0, "cspace_dentry_rename"

    :goto_0
    const-string/jumbo v1, "RepathDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Ltx;->i:Ljava/util/List;

    .line 40
    iput-object p3, p0, Ltx;->j:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Ltx;->k:Z

    .line 42
    iput-boolean p5, p0, Ltx;->l:Z

    .line 43
    return-void

    .line 38
    :cond_0
    const-string/jumbo v0, "cspace_dentry_repath"

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 5
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 159
    iget-object v1, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v2, p0, Ltx;->b:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v0, "dentryModelParent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-interface {v1, v0, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 165
    .end local v0    # "dentryModelParent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lto;->a()V

    .line 91
    iget-boolean v0, p0, Ltx;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    :goto_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 92
    invoke-virtual {p0}, Ltx;->e_()V

    .line 93
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0
.end method

.method protected final a(JLjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 170
    const-wide/32 v0, 0xc6ab63

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab60

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xc6ab61

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 171
    :cond_0
    iget-boolean v0, p0, Ltx;->l:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryRenameBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    :goto_0
    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 186
    :cond_1
    :goto_1
    iget-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_2

    .line 187
    iget-boolean v0, p0, Ltx;->l:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryRenameBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    :goto_2
    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 189
    :cond_2
    return-void

    .line 171
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 172
    :cond_4
    const-wide/32 v0, 0xc6bb02

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 173
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 174
    :cond_5
    const-wide/32 v0, 0xc6b719

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 175
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 176
    :cond_6
    const-wide/32 v0, 0xc6b71b

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 177
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 178
    :cond_7
    const-wide/32 v0, 0xc6b718

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 179
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 180
    :cond_8
    const-wide/32 v0, 0xc6bb00

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 181
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 182
    :cond_9
    const-wide/32 v0, 0xc6b71c

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 183
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryPathUnEnable:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Ltx;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    goto :goto_1

    .line 187
    :cond_a
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_2
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V
    .locals 11
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 113
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ltx;->n:Ljava/util/List;

    .line 116
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "index":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ltx;->m:Ljava/util/List;

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    .line 120
    .local v3, "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    move-result-object v7

    iget-object v8, p0, Ltx;->b:Ljava/lang/String;

    iget-object v4, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v7, v8, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v4, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 123
    iget-object v4, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v7, p0, Ltx;->b:Ljava/lang/String;

    invoke-interface {v4, v7, v0}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 124
    iget-object v4, p0, Ltx;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string/jumbo v4, "folder"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v7, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v4, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ltx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v4, v8, v9, v10}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->loopUpdateSubFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v4, p0, Ltx;->m:Ljava/util/List;

    iget-object v7, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 134
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorCode()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v9, v4}, Ltx;->a(JLjava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v3    # "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    :cond_2
    iget-object v4, p0, Ltx;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 136
    iget-object v6, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v7, p0, Ltx;->m:Ljava/util/List;

    iget-boolean v4, p0, Ltx;->l:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    invoke-interface {v6, v7, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 137
    iget-boolean v4, p0, Ltx;->l:Z

    if-nez v4, :cond_3

    .line 138
    iget-object v4, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v6, p0, Ltx;->n:Ljava/util/List;

    invoke-interface {v4, v6, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 141
    :cond_3
    iget-object v4, p0, Ltx;->m:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1152
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v4, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    .line 1153
    invoke-direct {p0, v4}, Ltx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 144
    iget-object v4, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ltx;->j:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 145
    .local v2, "newDentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-direct {p0, v2}, Ltx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 149
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "index":I
    .end local v2    # "newDentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    return-void

    .line 136
    .restart local v1    # "index":I
    :cond_5
    const/4 v4, 0x5

    goto :goto_2
.end method

.method protected final f()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 47
    iget-object v6, p0, Ltx;->i:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v6, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v5, "repathItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;>;"
    iget-object v8, p0, Ltx;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v6, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, "index":I
    iget-object v6, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 52
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-nez v6, :cond_0

    .line 53
    iget-object v6, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v9, p0, Ltx;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 54
    .local v2, "dentryModelLocal":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_0

    .line 55
    move-object v1, v2

    .line 56
    iget-object v6, p0, Ltx;->i:Ljava/util/List;

    invoke-interface {v6, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .end local v2    # "dentryModelLocal":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    new-instance v4, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;

    invoke-direct {v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;-><init>()V

    .line 60
    .local v4, "repathItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setAction(I)V

    .line 61
    iget-boolean v6, p0, Ltx;->k:Z

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setAutoRename(Z)V

    .line 62
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setOldPath(Ljava/lang/String;)V

    .line 63
    iget-boolean v6, p0, Ltx;->l:Z

    if-eqz v6, :cond_4

    .line 64
    const-string/jumbo v6, "file"

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 65
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Ltx;->j:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setNewPath(Ljava/lang/String;)V

    .line 73
    :goto_2
    iget-object v6, p0, Ltx;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v9, p0, Ltx;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->getNewPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->dentryExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 74
    .local v0, "dentryExist":Z
    if-eqz v0, :cond_5

    move v6, v7

    .line 85
    .end local v0    # "dentryExist":Z
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "index":I
    .end local v4    # "repathItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;
    .end local v5    # "repathItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;>;"
    :goto_3
    return v6

    .line 62
    .restart local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .restart local v3    # "index":I
    .restart local v4    # "repathItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;
    .restart local v5    # "repathItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 68
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Ltx;->j:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setNewPath(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Ltx;->j:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setNewPath(Ljava/lang/String;)V

    goto :goto_2

    .line 1096
    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1097
    const-string/jumbo v6, "file"

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1098
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltx;->j:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    :goto_4
    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;->setNewPath(Ljava/lang/String;)V

    .line 80
    :cond_5
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto/16 :goto_0

    .line 1100
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltx;->j:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1103
    :cond_7
    iget-object v6, p0, Ltx;->j:Ljava/lang/String;

    goto :goto_4

    .line 83
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v4    # "repathItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;
    :cond_8
    iget-object v6, p0, Ltx;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v6, v5}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 85
    .end local v3    # "index":I
    .end local v5    # "repathItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryRepathItem;>;"
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_3
.end method

.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Ltx;->n:Ljava/util/List;

    iget-object v1, p0, Ltx;->i:Ljava/util/List;

    iget-object v2, p0, Ltx;->j:Ljava/lang/String;

    iget-object v3, p0, Ltx;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Ltx;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
