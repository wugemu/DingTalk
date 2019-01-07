.class public final Ltr;
.super Lto;
.source "CreateDentryTask.java"


# static fields
.field private static o:Z


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

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "autoRename"    # Z
    .param p6, "overWrite"    # Z

    .prologue
    .line 44
    const-string/jumbo v0, "cspace_dentry_save"

    const-string/jumbo v1, "CreateDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Ltr;->o:Z

    .line 46
    iput-object p2, p0, Ltr;->j:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Ltr;->k:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Ltr;->l:Ljava/lang/String;

    .line 49
    iput-boolean p5, p0, Ltr;->m:Z

    .line 50
    iput-boolean p6, p0, Ltr;->n:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-string/jumbo v0, "cspace_dentry_create"

    const-string/jumbo v1, "CreateDentryTask"

    invoke-direct {p0, p1, v0, v1}, Lto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Ltr;->i:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Ltr;->o:Z

    .line 41
    return-void
.end method

.method public static a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 4
    .param p0, "errorCode"    # J

    .prologue
    .line 192
    const-wide/32 v2, 0x1ed2a0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    const-wide/32 v2, 0x1ed2a2

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    const-wide/32 v2, 0x1ed688

    cmp-long v1, p0, v2

    if-nez v1, :cond_1

    .line 193
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->SpaceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 213
    :goto_0
    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    .line 215
    .local v0, "throwable":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    :goto_1
    return-object v0

    .line 194
    .end local v0    # "throwable":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    :cond_1
    const-wide/32 v2, 0xc6ab63

    cmp-long v1, p0, v2

    if-eqz v1, :cond_2

    const-wide/32 v2, 0xc6ab65

    cmp-long v1, p0, v2

    if-eqz v1, :cond_2

    const-wide/32 v2, 0xc6ab60

    cmp-long v1, p0, v2

    if-eqz v1, :cond_2

    const-wide/32 v2, 0xc6ab61

    cmp-long v1, p0, v2

    if-eqz v1, :cond_2

    const-wide/32 v2, 0xc6b721

    cmp-long v1, p0, v2

    if-nez v1, :cond_4

    .line 195
    :cond_2
    sget-boolean v1, Ltr;->o:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySaveError:Lcom/alibaba/alimei/framework/SDKError;

    :goto_2
    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    .restart local v0    # "throwable":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    goto :goto_1

    .end local v0    # "throwable":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    :cond_3
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryCreateBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_2

    .line 196
    :cond_4
    const-wide/32 v2, 0xc6bb02

    cmp-long v1, p0, v2

    if-nez v1, :cond_5

    .line 197
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 198
    :cond_5
    const-wide/32 v2, 0xc6b719

    cmp-long v1, p0, v2

    if-nez v1, :cond_6

    .line 199
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 200
    :cond_6
    const-wide/32 v2, 0xc6bb00

    cmp-long v1, p0, v2

    if-nez v1, :cond_7

    .line 201
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 202
    :cond_7
    const-wide/32 v2, 0xc6b71b

    cmp-long v1, p0, v2

    if-eqz v1, :cond_8

    const-wide/32 v2, 0xc6b71c

    cmp-long v1, p0, v2

    if-nez v1, :cond_9

    .line 203
    :cond_8
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 204
    :cond_9
    const-wide/32 v2, 0xc6c2d0

    cmp-long v1, p0, v2

    if-nez v1, :cond_a

    .line 205
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

    goto :goto_0

    .line 206
    :cond_a
    const-wide/32 v2, 0xc6b71e

    cmp-long v1, p0, v2

    if-nez v1, :cond_b

    .line 207
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryTempUrlNotFound:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_0

    .line 208
    :cond_b
    const-wide/32 v2, 0xc6b718

    cmp-long v1, p0, v2

    if-nez v1, :cond_c

    .line 209
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_0

    .line 210
    :cond_c
    const-wide/32 v2, 0xc6c6b7

    cmp-long v1, p0, v2

    if-nez v1, :cond_d

    .line 211
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryServiceUpgrade:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_0

    .line 213
    :cond_d
    sget-boolean v1, Ltr;->o:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySaveError:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_0

    :cond_e
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryCreateBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;
    .locals 3
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 175
    new-instance v0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;-><init>()V

    .line 176
    .local v0, "dentryCreateItem":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setAction(I)V

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setTempUrl(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setPath(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isAutoRename()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setAutoRename(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isOverWrite()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setOverWrite(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtend()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;-><init>()V

    .line 183
    .local v1, "extend":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtend()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;->setMessage(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setExtend(Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;)V

    .line 186
    .end local v1    # "extend":Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItemExtend;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a(JLjava/lang/String;)V
    .locals 9
    .param p1, "errorCode"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 161
    invoke-super {p0, p1, p2, p3}, Lto;->a(JLjava/lang/String;)V

    .line 162
    const-wide/32 v2, 0xc6b71e

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Ltr;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 165
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 166
    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateUploadedSizeAndUrl(JJLjava/lang/String;)Z

    goto :goto_0

    .line 171
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    invoke-static {p1, p2}, Ltr;->a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, p0, Ltr;->f:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 172
    return-void
.end method

.method protected final a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V
    .locals 10
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 65
    invoke-super {p0, p1}, Lto;->a(Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;)V

    .line 67
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 68
    sget-boolean v4, Ltr;->o:Z

    if-nez v4, :cond_6

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "index":I
    const/4 v2, 0x0

    .line 71
    .local v2, "isFolder":Z
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    .line 72
    .local v3, "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    move-result-object v4

    iget-object v6, p0, Ltr;->b:Ljava/lang/String;

    iget-object v7, p0, Ltr;->j:Ljava/lang/String;

    invoke-direct {v0, v4, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v4, "folder"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const/4 v2, 0x1

    .line 77
    :cond_0
    iget-object v4, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 79
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v6, p0, Ltr;->b:Ljava/lang/String;

    invoke-interface {v4, v6, v0}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 80
    iget-object v4, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2114
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v6, p0, Ltr;->b:Ljava/lang/String;

    iget-object v7, p0, Ltr;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    .line 2115
    if-eqz v4, :cond_1

    .line 2116
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 2117
    iget-object v6, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v7, p0, Ltr;->b:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 2119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2120
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-interface {v4, v6, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 90
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_0

    .line 84
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    iget-object v4, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 85
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_3

    const-string/jumbo v4, "folder"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->delete(J)Z

    .line 88
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorCode()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v7, v4}, Ltr;->a(JLjava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    :cond_4
    if-eqz v2, :cond_5

    .line 93
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v4, v5, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 111
    .end local v1    # "index":I
    .end local v2    # "isFolder":Z
    :cond_5
    :goto_2
    return-void

    .line 96
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ltr;->i:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    .line 98
    .restart local v3    # "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 99
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    move-result-object v5

    iget-object v6, p0, Ltr;->b:Ljava/lang/String;

    iget-object v7, p0, Ltr;->j:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v5, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_7
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorCode()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v7, v5}, Ltr;->a(JLjava/lang/String;)V

    goto :goto_3

    .line 105
    .end local v3    # "resultItem":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    :cond_8
    iget-object v4, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 106
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltr;->b:Ljava/lang/String;

    iget-object v6, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 107
    iget-object v4, p0, Ltr;->c:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v5, p0, Ltr;->i:Ljava/util/List;

    const/4 v6, 0x4

    invoke-interface {v4, v5, v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    goto :goto_2
.end method

.method protected final f()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 55
    sget-boolean v0, Ltr;->o:Z

    if-nez v0, :cond_2

    .line 1134
    iget-object v0, p0, Ltr;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    iget-object v0, p0, Ltr;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltr;->j:Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Ltr;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v2, p0, Ltr;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Ltr;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1139
    invoke-static {v0}, Ltr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;

    move-result-object v0

    .line 1140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Ltr;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    .line 60
    :cond_1
    :goto_1
    return v3

    .line 1147
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    iget-object v1, p0, Ltr;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    iget-object v2, p0, Ltr;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setSpaceId(Ljava/lang/String;)V

    .line 1149
    new-instance v1, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;-><init>()V

    .line 1150
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setAction(I)V

    .line 1151
    iget-object v2, p0, Ltr;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setPath(Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Ltr;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setDownloadUrl(Ljava/lang/String;)V

    .line 1153
    iget-boolean v2, p0, Ltr;->m:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setAutoRename(Z)V

    .line 1154
    iget-boolean v2, p0, Ltr;->n:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCreateItem;->setOverWrite(Z)V

    .line 1155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    iget-object v1, p0, Ltr;->g:Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/v2/request/V2UpdateRequestData;->setItems(Ljava/util/List;)V

    goto :goto_1
.end method

.method protected final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Ltr;->i:Ljava/util/List;

    iget-object v1, p0, Ltr;->i:Ljava/util/List;

    iget-object v2, p0, Ltr;->k:Ljava/lang/String;

    iget-object v3, p0, Ltr;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Ltr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
