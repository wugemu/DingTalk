.class public Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "DentryDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private buiddDentryEntry(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .locals 10
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 839
    if-nez p1, :cond_0

    .line 840
    const/4 v0, 0x0

    .line 931
    :goto_0
    return-object v0

    .line 843
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fillDentryDetail()V

    .line 845
    new-instance v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;-><init>()V

    .line 846
    .local v0, "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    .line 847
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->accountName:Ljava/lang/String;

    .line 848
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceId:Ljava/lang/String;

    .line 849
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    .line 850
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->name:Ljava/lang/String;

    .line 851
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->sortKey:Ljava/lang/String;

    .line 852
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->contentType:Ljava/lang/String;

    .line 853
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->extension:Ljava/lang/String;

    .line 854
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreateTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->createTime:J

    .line 855
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifiedTime:J

    .line 856
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorEmail:Ljava/lang/String;

    .line 857
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorNick()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorNick:Ljava/lang/String;

    .line 858
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierEmail:Ljava/lang/String;

    .line 859
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierNick()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierNick:Ljava/lang/String;

    .line 860
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getVersionType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->versionType:Ljava/lang/String;

    .line 861
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    .line 862
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->localUrl:Ljava/lang/String;

    .line 864
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    .line 865
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 871
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->size:J

    .line 872
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->type:Ljava/lang/String;

    .line 873
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->dirty:I

    .line 874
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentPath:Ljava/lang/String;

    .line 875
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isOverWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->overWrite:I

    .line 876
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isAutoRename()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->autoRename:I

    .line 877
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadedSize:J

    .line 878
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->uploadedSize:J

    .line 879
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->uploadId:Ljava/lang/String;

    .line 880
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtend()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->extendInfo:Ljava/lang/String;

    .line 881
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->serverId:Ljava/lang/String;

    .line 882
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->expireTime:J

    .line 883
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->wifiOnly:I

    .line 885
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPreviewCount()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->previewCount:J

    .line 886
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadCount()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadCount:J

    .line 887
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTransferCount()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->transferCount:J

    .line 889
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->appId:Ljava/lang/String;

    .line 890
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->corpId:Ljava/lang/String;

    .line 891
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getProirity()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->proirity:Ljava/lang/String;

    .line 892
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isCrypt:I

    .line 894
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    .line 895
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCommentCount()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->commentCount:J

    .line 896
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLikeCount()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->likeCount:J

    .line 898
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentId:Ljava/lang/String;

    .line 899
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authFlag:Ljava/lang/String;

    .line 901
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDuration()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->duration:J

    .line 902
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picUrl:Ljava/lang/String;

    .line 903
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicWidth()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picWidth:I

    .line 904
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicHeight()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picHeight:I

    .line 905
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicUrl:Ljava/lang/String;

    .line 906
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicCode:Ljava/lang/String;

    .line 907
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicRotation()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picRotation:I

    .line 908
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picSize:J

    .line 910
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getEditorCount()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->editorCount:I

    .line 911
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWaitingForEdit()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->waitingForEdit:Z

    .line 912
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->cid:Ljava/lang/String;

    .line 913
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getMessageId()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->messageId:J

    .line 914
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUnFinishEditorCount()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->unFinishEditorCount:I

    .line 915
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceTypeBelong:Ljava/lang/String;

    .line 916
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getFeatureFlag()I

    move-result v2

    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->featureFlag:I

    .line 918
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    :goto_6
    iput v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isESafeNetEncrypt:I

    .line 920
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDisplayAlbumUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->displayAlbumUrl:Ljava/lang/String;

    .line 922
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_7
    iput v3, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isSoft:I

    .line 923
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceId:Ljava/lang/String;

    .line 924
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceType:Ljava/lang/String;

    .line 925
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceName:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetDentryId:Ljava/lang/String;

    .line 927
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetDentryPath:Ljava/lang/String;

    .line 929
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->orgId:J

    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 873
    goto/16 :goto_1

    :cond_3
    move v2, v4

    .line 875
    goto/16 :goto_2

    :cond_4
    move v2, v4

    .line 876
    goto/16 :goto_3

    :cond_5
    move v2, v4

    .line 883
    goto/16 :goto_4

    :cond_6
    move v2, v4

    .line 892
    goto/16 :goto_5

    :cond_7
    move v2, v4

    .line 918
    goto :goto_6

    :cond_8
    move v3, v4

    .line 922
    goto :goto_7
.end method

.method private buildContentValues(Lcom/alibaba/alimei/cspace/model/DentryModel;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 935
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 937
    .local v0, "contentValue":Landroid/content/ContentValues;
    if-nez p1, :cond_0

    .line 1022
    :goto_0
    return-object v0

    .line 941
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fillDentryDetail()V

    .line 943
    const-string/jumbo v2, "account_name"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v2, "space_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string/jumbo v2, "path"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const-string/jumbo v2, "name"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const-string/jumbo v2, "sort_key"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string/jumbo v2, "content_type"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string/jumbo v2, "extension"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string/jumbo v2, "create_time"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 951
    const-string/jumbo v2, "expire_time"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 952
    const-string/jumbo v2, "modified_time"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 953
    const-string/jumbo v2, "create_email"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string/jumbo v2, "create_nick"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorNick()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string/jumbo v2, "modifier_email"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string/jumbo v2, "modifier_nick"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierNick()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string/jumbo v2, "version_type"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getVersionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    const-string/jumbo v2, "temp_url"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 964
    const-string/jumbo v2, "local_url"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 967
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    .line 968
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 970
    :cond_2
    const-string/jumbo v2, "downloaded_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    const-string/jumbo v2, "size"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 977
    const-string/jumbo v2, "type"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string/jumbo v5, "dirty"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string/jumbo v2, "parent_path"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string/jumbo v5, "over_write"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isOverWrite()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string/jumbo v5, "auto_rename"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isAutoRename()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    const-string/jumbo v5, "wifi_only"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    const-string/jumbo v2, "extend_info"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtend()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string/jumbo v2, "server_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string/jumbo v5, "crypt"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string/jumbo v5, "crypt_status"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCryptStatus()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string/jumbo v2, "app_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string/jumbo v2, "corp_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string/jumbo v2, "proirity"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getProirity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string/jumbo v2, "crypt_local_url"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string/jumbo v5, "last_comment_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "0"

    :goto_8
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string/jumbo v2, "parent_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string/jumbo v2, "auth_flag"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v2, "duraion"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 999
    const-string/jumbo v2, "pic_url"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v2, "pic_width"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    const-string/jumbo v2, "pic_height"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string/jumbo v2, "auth_pic_url"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string/jumbo v2, "auth_pic_code"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v2, "pic_rotation"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicRotation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string/jumbo v2, "pic_size"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    const-string/jumbo v2, "space_type_belong"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v2, "cid"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v5, "is_e_safe_net_encrypt"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1011
    const-string/jumbo v2, "display_album_url"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDisplayAlbumUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v2, "is_soft"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1014
    const-string/jumbo v2, "target_sapce_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v2, "target_sapce_type"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v2, "target_space_name"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v2, "target_dentry_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v2, "target_dentry_path"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v2, "org_id"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 972
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    const-string/jumbo v2, "downloaded_size"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .end local v1    # "file":Ljava/io/File;
    :cond_5
    move v2, v4

    .line 978
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 980
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 981
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 982
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 987
    goto/16 :goto_6

    :cond_a
    move v2, v4

    .line 988
    goto/16 :goto_7

    .line 993
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLastCommentId()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_c
    move v2, v4

    .line 1009
    goto/16 :goto_9

    :cond_d
    move v3, v4

    .line 1013
    goto :goto_a
.end method

.method private buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 6
    .param p1, "dentryEntry"    # Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1026
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 1027
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz p1, :cond_0

    .line 1028
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    .line 1029
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 1030
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 1032
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 1033
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setContentType(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 1036
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->size:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 1037
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->createTime:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 1038
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->expireTime:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExpireTime(J)V

    .line 1039
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifiedTime:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 1040
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreatorEmail(Ljava/lang/String;)V

    .line 1041
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreatorNick(Ljava/lang/String;)V

    .line 1042
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifierEmail(Ljava/lang/String;)V

    .line 1043
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifierNick(Ljava/lang/String;)V

    .line 1044
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->versionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setVersionType(Ljava/lang/String;)V

    .line 1045
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 1046
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 1047
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->dirty:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 1048
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    .line 1049
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->overWrite:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOverWrite(Z)V

    .line 1050
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->autoRename:I

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAutoRename(Z)V

    .line 1051
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->uploadedSize:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 1052
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadedSize:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 1053
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadId(Ljava/lang/String;)V

    .line 1054
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->extendInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtend(Ljava/lang/String;)V

    .line 1055
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 1056
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->wifiOnly:I

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setWifiOnly(Z)V

    .line 1057
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadCount:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadCount(J)V

    .line 1058
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->previewCount:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPreviewCount(J)V

    .line 1059
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->transferCount:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTransferCount(J)V

    .line 1060
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isCrypt:I

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCrypt(Z)V

    .line 1061
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->cryptStatus:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptStatus(Z)V

    .line 1062
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->cryptLocalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCryptLocalUrl(Ljava/lang/String;)V

    .line 1063
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAppId(Ljava/lang/String;)V

    .line 1064
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->corpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCorpId(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->proirity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setProirity(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLastCommentId(Ljava/lang/String;)V

    .line 1067
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->commentCount:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCommentCount(J)V

    .line 1068
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->likeCount:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLikeCount(J)V

    .line 1069
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentId(Ljava/lang/String;)V

    .line 1070
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 1072
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->duration:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 1073
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 1074
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picWidth:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 1075
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picHeight:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 1076
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 1077
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 1078
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picRotation:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 1079
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picSize:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 1081
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->editorCount:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setEditorCount(I)V

    .line 1082
    iget-boolean v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->waitingForEdit:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setWaitingForEdit(Z)V

    .line 1083
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 1084
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->messageId:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setMessageId(J)V

    .line 1085
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->unFinishEditorCount:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUnFinishEditorCount(I)V

    .line 1086
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceTypeBelong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 1087
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->featureFlag:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setFeatureFlag(I)V

    .line 1089
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isESafeNetEncrypt:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setESafeNetEncrypt(Z)V

    .line 1090
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->displayAlbumUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDisplayAlbumUrl(Ljava/lang/String;)V

    .line 1092
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isSoft:I

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSoft(Z)V

    .line 1093
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceId(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceType(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceName(Ljava/lang/String;)V

    .line 1096
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetDentryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetDentryId(Ljava/lang/String;)V

    .line 1097
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetDentryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetDentryPath(Ljava/lang/String;)V

    .line 1099
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->orgId:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setOrgId(J)V

    .line 1101
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->dirty:I

    if-ne v1, v2, :cond_9

    .line 1102
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 1108
    :cond_0
    :goto_8
    return-object v0

    :cond_1
    move v1, v3

    .line 1047
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 1049
    goto/16 :goto_1

    :cond_3
    move v1, v3

    .line 1050
    goto/16 :goto_2

    :cond_4
    move v1, v3

    .line 1056
    goto/16 :goto_3

    :cond_5
    move v1, v3

    .line 1060
    goto/16 :goto_4

    :cond_6
    move v1, v3

    .line 1061
    goto/16 :goto_5

    :cond_7
    move v1, v3

    .line 1089
    goto :goto_6

    :cond_8
    move v1, v3

    .line 1092
    goto :goto_7

    .line 1104
    :cond_9
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    goto :goto_8
.end method

.method private getLastCommentIdInMixedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mixedString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 223
    const-string/jumbo v1, ""

    .line 224
    .local v1, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 235
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 228
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, "oldIndex":I
    if-lez v0, :cond_1

    .line 230
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 235
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method private update(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)J
    .locals 7
    .param p1, "dentryEntry"    # Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 278
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v2, "cspace.db"

    const-string/jumbo v3, "cspace_dentry"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->accountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const-string/jumbo v1, "account_name"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_0
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    const-string/jumbo v1, "space_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_1
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    const-string/jumbo v1, "path"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    :cond_2
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    const-string/jumbo v1, "name"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    const-string/jumbo v1, "sort_key"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    :cond_3
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 294
    const-string/jumbo v1, "type"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_4
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->contentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 297
    const-string/jumbo v1, "content_type"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_5
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->extension:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 300
    const-string/jumbo v1, "extension"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    :cond_6
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 303
    const-string/jumbo v1, "size"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    :cond_7
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->createTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    .line 306
    const-string/jumbo v1, "create_time"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    :cond_8
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifiedTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 309
    const-string/jumbo v1, "modified_time"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifiedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_9
    const-string/jumbo v1, "expire_time"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->expireTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 314
    const-string/jumbo v1, "create_email"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    :cond_a
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 317
    const-string/jumbo v1, "create_nick"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->creatorNick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    :cond_b
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 320
    const-string/jumbo v1, "modifier_email"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_c
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 323
    const-string/jumbo v1, "modifier_nick"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->modifierNick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    :cond_d
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->versionType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 326
    const-string/jumbo v1, "version_type"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->versionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    :cond_e
    const-string/jumbo v1, "local_url"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 332
    const-string/jumbo v1, "temp_url"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    :cond_f
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 335
    const-string/jumbo v1, "parent_path"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    :cond_10
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->serverId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 338
    const-string/jumbo v1, "server_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_11
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->uploadedSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_12

    .line 341
    const-string/jumbo v1, "uploaded_size"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->uploadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_12
    const-string/jumbo v1, "downloaded_size"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v1, "dirty"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->dirty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isCrypt:I

    if-ne v1, v6, :cond_15

    .line 350
    const-string/jumbo v1, "crypt"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isCrypt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 352
    const-string/jumbo v1, "app_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    :cond_13
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->corpId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 355
    const-string/jumbo v1, "corp_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->corpId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    :cond_14
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->proirity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 359
    const-string/jumbo v1, "proirity"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->proirity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    :cond_15
    const-string/jumbo v1, "previewCount"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->previewCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    const-string/jumbo v1, "downloadCount"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    const-string/jumbo v1, "transferCount"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->transferCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 369
    const-string/jumbo v1, "last_comment_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    :cond_16
    const-string/jumbo v1, "commnet_count"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->commentCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    const-string/jumbo v1, "like_count"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->likeCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string/jumbo v1, "parent_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const-string/jumbo v1, "auth_flag"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->duration:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_17

    .line 379
    const-string/jumbo v1, "duraion"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    :cond_17
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 383
    const-string/jumbo v1, "pic_url"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    :cond_18
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picWidth:I

    if-lez v1, :cond_19

    .line 387
    const-string/jumbo v1, "pic_width"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_19
    iget v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picHeight:I

    if-lez v1, :cond_1a

    .line 391
    const-string/jumbo v1, "pic_height"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    :cond_1a
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 395
    const-string/jumbo v1, "auth_pic_url"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    :cond_1b
    iget-object v1, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 399
    const-string/jumbo v1, "auth_pic_code"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->authPicCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    :cond_1c
    const-string/jumbo v1, "pic_rotation"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1d

    .line 405
    const-string/jumbo v1, "pic_size"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->picSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    :cond_1d
    const-string/jumbo v1, "editor_count"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->editorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const-string/jumbo v1, "waiting_edit"

    iget-boolean v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->waitingForEdit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string/jumbo v1, "cid"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    const-string/jumbo v1, "message_id"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    const-string/jumbo v1, "un_finish_editor_count"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->unFinishEditorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    const-string/jumbo v1, "space_type_belong"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceTypeBelong:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    const-string/jumbo v1, "feature_flag"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->featureFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    const-string/jumbo v1, "is_e_safe_net_encrypt"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isESafeNetEncrypt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    const-string/jumbo v1, "display_album_url"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->displayAlbumUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const-string/jumbo v1, "is_soft"

    iget v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->isSoft:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    const-string/jumbo v1, "target_sapce_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string/jumbo v1, "target_sapce_type"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    const-string/jumbo v1, "target_space_name"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetSpaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    const-string/jumbo v1, "target_dentry_id"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetDentryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    const-string/jumbo v1, "target_dentry_path"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->targetDentryPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    const-string/jumbo v1, "org_id"

    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string/jumbo v1, "_id=?"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 430
    iget-wide v2, p1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    return-wide v2
.end method

.method private updatePath(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "parentPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "path"

    invoke-virtual {v0, v4, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string/jumbo v4, "parent_path"

    invoke-static {p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 274
    .local v1, "result":I
    if-lez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public clearAllDentryLocalCache(Ljava/lang/String;)I
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1180
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 1181
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "account_name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v1

    return v1
.end method

.method public clearAllEncryptDentryLocalCache(Ljava/lang/String;)I
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1170
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v2, "cspace.db"

    const-string/jumbo v3, "cspace_dentry"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "crypt_local_url"

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1172
    const-string/jumbo v1, "local_url"

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1173
    const-string/jumbo v1, "account_name=?"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const-string/jumbo v1, "crypt=?"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    return v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 653
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v4, "cspace.db"

    const-string/jumbo v5, "cspace_dentry"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "server_id=?"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string/jumbo v1, "space_id=?"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v1

    int-to-long v2, v1

    .line 657
    .local v2, "result":J
    return-wide v2
.end method

.method public delete(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 645
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v1

    .line 648
    .local v1, "result":I
    if-lez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public deleteByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "includeDirty"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 828
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;)V

    .line 829
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "account_name=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string/jumbo v1, "space_id=?"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string/jumbo v1, "parent_path=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    if-nez p4, :cond_0

    .line 833
    const-string/jumbo v1, "dirty=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 836
    return-void
.end method

.method public dentryExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 240
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 241
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "account_name"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v2, "space_id"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 246
    .local v0, "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getCSpaceDataBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDentryById(J)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 756
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 757
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 760
    .local v1, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v1, :cond_0

    .line 761
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 662
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 663
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "account_name"

    invoke-virtual {v2, v3, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v3, "space_id"

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/orm/query/Select;

    const-string/jumbo v4, "server_id"

    .line 666
    invoke-virtual {v3, v4, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 669
    .local v1, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v1, :cond_0

    .line 670
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1114
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lain;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1116
    const-string/jumbo v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v10, v2

    if-ge v0, v10, :cond_3

    .line 1118
    aget-object v1, v2, v0

    .line 1125
    .local v1, "nameTmp":Ljava/lang/String;
    invoke-static {}, Lagr;->a()Lagr;

    move-result-object v10

    invoke-virtual {v10, v1}, Lagr;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1126
    .local v8, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    .local v5, "pinyinHeader":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1128
    .local v4, "pinyinAll":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 1129
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lagr$a;

    .line 1130
    .local v7, "token":Lagr$a;
    iget v10, v7, Lagr$a;->a:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 1133
    iget-object v3, v7, Lagr$a;->c:Ljava/lang/String;

    .line 1134
    .local v3, "pinyin":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1136
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    .end local v3    # "pinyin":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1139
    :cond_0
    iget-object v10, v7, Lagr$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1144
    .end local v7    # "token":Lagr$a;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    const-string/jumbo v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1149
    .end local v0    # "j":I
    .end local v1    # "nameTmp":Ljava/lang/String;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v4    # "pinyinAll":Ljava/lang/StringBuilder;
    .end local v5    # "pinyinHeader":Ljava/lang/StringBuilder;
    .end local v8    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lagr$a;>;"
    .end local v9    # "x":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1155
    :goto_3
    return-object v10

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto :goto_3
.end method

.method public insertDentrys(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const-wide/16 v10, 0x0

    .line 52
    if-eqz p2, :cond_4

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v1

    .line 55
    .local v1, "database":Lcom/alibaba/alimei/orm/IDatabase;
    invoke-interface {v1}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 57
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 59
    .local v2, "createTime":J
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 60
    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreateTime()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-nez v5, :cond_0

    .line 61
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 63
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-nez v5, :cond_1

    .line 64
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 66
    :cond_1
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSessionId(J)V

    .line 67
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 68
    invoke-virtual {v4, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildContentValues(Lcom/alibaba/alimei/cspace/model/DentryModel;)Landroid/content/ContentValues;

    move-result-object v0

    .line 73
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "cspace_dentry"

    const/4 v7, 0x0

    invoke-interface {v1, v5, v7, v0}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setId(J)V

    goto :goto_0

    .line 78
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "database":Lcom/alibaba/alimei/orm/IDatabase;
    .end local v2    # "createTime":J
    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 67
    .restart local v1    # "database":Lcom/alibaba/alimei/orm/IDatabase;
    .restart local v2    # "createTime":J
    .restart local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 76
    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V

    .line 77
    invoke-interface {v1}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 78
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v1    # "database":Lcom/alibaba/alimei/orm/IDatabase;
    .end local v2    # "createTime":J
    :cond_4
    return-object p2
.end method

.method public loopUpdateSubFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "spaceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 252
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v5, "space_id"

    invoke-virtual {v4, v5, p4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v5, "parent_path"

    invoke-static {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "existDentry":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    if-eqz v1, :cond_1

    .line 257
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 258
    .local v0, "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    iget-object v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "newPathSub":Ljava/lang/String;
    move-object v3, p2

    .line 260
    .local v3, "parentPath":Ljava/lang/String;
    iget-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-direct {p0, v6, v7, v2, v3}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->updatePath(JLjava/lang/String;Ljava/lang/String;)Z

    .line 261
    const-string/jumbo v6, "folder"

    iget-object v7, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    iget-object v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p3, p4}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->loopUpdateSubFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0    # "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v2    # "newPathSub":Ljava/lang/String;
    .end local v3    # "parentPath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public notifyDataChanged(Ljava/util/List;I)V
    .locals 10
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 124
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 125
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;

    invoke-direct {v0, p2}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;-><init>(I)V

    .line 126
    .local v0, "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v1, "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 128
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    const-string/jumbo v6, "file"

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 131
    .local v3, "index":I
    if-eq v3, v9, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    .line 145
    .end local v3    # "index":I
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentPath()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-interface {v1, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    packed-switch p2, :pswitch_data_0

    .line 161
    :goto_2
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->notifyDentryDataChanged(Lcom/alibaba/alimei/cspace/model/DentryGroupModel;)V

    .line 163
    .end local v0    # "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    .end local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_1
    return-void

    .line 134
    .restart local v0    # "dentryGroupModel":Lcom/alibaba/alimei/cspace/model/DentryGroupModel;
    .restart local v1    # "dentryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    .restart local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    const-string/jumbo v6, "folder"

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_3

    .line 137
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 139
    :cond_3
    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 140
    .local v4, "indexParent":I
    if-eq v4, v9, :cond_0

    .line 141
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v4    # "indexParent":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "/"

    goto :goto_1

    .line 149
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->setAddDentrys(Ljava/util/Map;)V

    goto :goto_2

    .line 154
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->setUpdateDentrys(Ljava/util/Map;)V

    goto :goto_2

    .line 157
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryGroupModel;->setDeleteDentrys(Ljava/util/Map;)V

    goto :goto_2

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public varargs queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "sortType"    # I
    .param p5, "includeDirty"    # Z
    .param p6, "excludePaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 440
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 441
    .local v7, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v8, "account_name"

    invoke-virtual {v7, v8, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v8, "space_id"

    invoke-virtual {v7, v8, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v8, "parent_path"

    invoke-static {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    if-nez p5, :cond_0

    .line 446
    const-string/jumbo v8, "dirty"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_0
    const/4 v8, 0x1

    if-ne p4, v8, :cond_6

    .line 450
    const-string/jumbo v8, "dirty DESC, type DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 458
    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    array-length v8, v0

    if-nez v8, :cond_8

    .line 459
    :cond_2
    const/4 v6, 0x0

    .line 467
    .local v6, "excludeMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v2, "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 469
    .local v4, "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    if-eqz v4, :cond_9

    .line 470
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 472
    .local v3, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v6, :cond_5

    iget-object v9, v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 475
    :cond_5
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 476
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 451
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v3    # "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v4    # "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    .end local v6    # "excludeMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_6
    const/4 v8, 0x2

    if-ne p4, v8, :cond_7

    .line 452
    const-string/jumbo v8, "dirty DESC, type DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    goto :goto_0

    .line 453
    :cond_7
    const/4 v8, 0x3

    if-ne p4, v8, :cond_1

    .line 454
    const-string/jumbo v8, "dirty DESC, type DESC, modified_time DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    goto :goto_0

    .line 461
    :cond_8
    new-instance v6, Ljava/util/HashMap;

    move-object/from16 v0, p6

    array-length v8, v0

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 462
    .restart local v6    # "excludeMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p6

    array-length v9, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_3

    aget-object v5, p6, v8

    .line 463
    .local v5, "epath":Ljava/lang/String;
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 479
    .end local v5    # "epath":Ljava/lang/String;
    .restart local v2    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .restart local v4    # "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    :cond_9
    return-object v2
.end method

.method public queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "includeDirty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 435
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/util/List;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "includeDirty"    # Z
    .param p5, "sortType"    # I
    .param p6, "top"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 769
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 770
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string/jumbo v5, "space_id"

    invoke-virtual {v4, v5, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string/jumbo v5, "parent_path"

    invoke-static {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    if-nez p4, :cond_0

    .line 775
    const-string/jumbo v5, "dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_0
    const/4 v5, 0x1

    if-ne p5, v5, :cond_2

    .line 779
    const-string/jumbo v5, "dirty DESC, type DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 786
    :cond_1
    :goto_0
    invoke-virtual {v4, p6}, Lcom/alibaba/alimei/orm/query/Select;->limit(I)Lcom/alibaba/alimei/orm/query/Select;

    .line 788
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v1, "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 790
    .local v3, "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    if-eqz v3, :cond_4

    .line 791
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 792
    .local v2, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 793
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 780
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v2    # "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v3    # "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    :cond_2
    const/4 v5, 0x2

    if-ne p5, v5, :cond_3

    .line 781
    const-string/jumbo v5, "dirty DESC, type DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    goto :goto_0

    .line 782
    :cond_3
    const/4 v5, 0x3

    if-ne p5, v5, :cond_1

    .line 783
    const-string/jumbo v5, "dirty DESC, type DESC, modified_time DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    goto :goto_0

    .line 796
    .restart local v1    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .restart local v3    # "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    :cond_4
    return-object v1
.end method

.method public queryDownloadFile()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 501
    const-string/jumbo v0, "local_url LIKE ? "

    .line 502
    .local v0, "KEYWORD_MATCH_RANGE":Ljava/lang/String;
    const-string/jumbo v5, "%/data/data/com.alibaba.%"

    .line 503
    .local v5, "keyword":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v8, "cspace.db"

    const-string/jumbo v9, "cspace_dentry"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-virtual {v6, v0, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v7, "dirty"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string/jumbo v7, "type"

    const-string/jumbo v8, "file"

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v2, "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 510
    .local v4, "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    if-eqz v4, :cond_0

    .line 511
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 512
    .local v3, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 513
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    :cond_0
    return-object v2
.end method

.method public varargs queryFoldersByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "excludePaths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 523
    if-eqz p4, :cond_0

    array-length v7, p4

    if-nez v7, :cond_4

    .line 524
    :cond_0
    const/4 v5, 0x0

    .line 532
    .local v5, "excludeMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 533
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "account_name"

    invoke-virtual {v6, v7, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v7, "space_id"

    invoke-virtual {v6, v7, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v7, "parent_path"

    invoke-static {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->fixParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "folder"

    invoke-virtual {v6, v7, v9}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string/jumbo v7, "dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string/jumbo v7, "dirty DESC, sort_key COLLATE NOCASE ASC"

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 542
    .local v3, "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    if-eqz v3, :cond_5

    .line 543
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 545
    .local v2, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v5, :cond_3

    iget-object v8, v2, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 549
    :cond_3
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 550
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v2    # "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v3    # "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    .end local v5    # "excludeMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    array-length v7, p4

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 527
    .restart local v5    # "excludeMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    array-length v9, p4

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v4, p4, v7

    .line 528
    .local v4, "epath":Ljava/lang/String;
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 553
    .end local v4    # "epath":Ljava/lang/String;
    .restart local v1    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .restart local v3    # "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    .restart local v6    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_5
    return-object v1
.end method

.method public queryLocalDirtyDentry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "localUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 484
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 485
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "account_name"

    invoke-virtual {v2, v3, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string/jumbo v3, "space_id"

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string/jumbo v3, "local_url"

    invoke-virtual {v2, v3, p4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 492
    .local v1, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v1, :cond_0

    .line 493
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLocalUrl(J)Z
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 613
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "local_url"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    const-string/jumbo v4, "downloaded_size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 618
    .local v1, "result":I
    if-lez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 168
    if-eqz p2, :cond_2

    .line 169
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buiddDentryEntry(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    move-result-object v0

    .line 171
    .local v0, "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 173
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    iget-wide v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_3

    .line 174
    const-string/jumbo v5, "_id"

    iget-wide v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 183
    .local v1, "existDentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v1, :cond_4

    .line 185
    iget-object v5, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getLastCommentIdInMixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "oldLastCommentId":Ljava/lang/String;
    iget-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getLastCommentIdInMixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "newLastCommentId":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "_new"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v5, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->localUrl:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->localUrl:Ljava/lang/String;

    .line 194
    iget-wide v8, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadedSize:J

    iput-wide v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadedSize:J

    .line 196
    iget-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->tempUrl:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->localUrl:Ljava/lang/String;

    .line 198
    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->downloadedSize:J

    .line 201
    :cond_1
    iget-wide v6, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    iput-wide v6, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    .line 203
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->update(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)J

    move-result-wide v6

    .line 215
    .end local v0    # "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v1    # "existDentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v2    # "newLastCommentId":Ljava/lang/String;
    .end local v3    # "oldLastCommentId":Ljava/lang/String;
    .end local v4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_2
    :goto_1
    return-wide v6

    .line 176
    .restart local v0    # "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .restart local v4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_3
    const-string/jumbo v5, "account_name"

    invoke-virtual {v4, v5, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v5, "space_id"

    iget-object v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v5, "server_id"

    iget-object v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    .restart local v1    # "existDentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    :cond_4
    iget-wide v8, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->commentCount:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_5

    .line 207
    const-string/jumbo v5, "_new"

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    .line 211
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->save()J

    move-result-wide v6

    goto :goto_1

    .line 209
    :cond_5
    const-string/jumbo v5, "0"

    iput-object v5, v0, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->lastCommentId:Ljava/lang/String;

    goto :goto_2
.end method

.method public searchDentry(Ljava/lang/String;IILjava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 678
    .local p4, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 683
    .local p5, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JI)Ljava/util/List;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p6, "orgId"    # J
    .param p8, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    .local p5, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JILjava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p6, "orgId"    # J
    .param p8, "searchType"    # I
    .param p9, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    .local p5, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 694
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    :cond_0
    :goto_0
    return-object v7

    .line 697
    :cond_1
    new-instance v8, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v10, "cspace.db"

    const-string/jumbo v11, "cspace_dentry"

    invoke-direct {v8, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .local v8, "select":Lcom/alibaba/alimei/orm/query/Select;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 699
    const-string/jumbo v9, "account_name"

    invoke-virtual {v8, v9, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_2
    const-string/jumbo v9, "name"

    move-object/from16 v0, p2

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnLikeAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const/4 v9, 0x4

    move/from16 v0, p8

    if-eq v0, v9, :cond_3

    const/4 v9, 0x5

    move/from16 v0, p8

    if-ne v0, v9, :cond_6

    .line 706
    :cond_3
    const-string/jumbo v9, "space_type_belong"

    const-string/jumbo v10, "cp"

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_4
    :goto_1
    const-string/jumbo v9, "modified_time DESC "

    invoke-virtual {v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 732
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 733
    .local v3, "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    if-eqz v3, :cond_a

    .line 735
    add-int v4, p3, p4

    .line 736
    .local v4, "end":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v7, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v5, 0x0

    .line 738
    .local v5, "index":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 739
    .local v2, "dentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    move/from16 v0, p3

    if-lt v5, v0, :cond_5

    if-ge v5, v4, :cond_5

    .line 740
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildDentryModel(Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v6

    .line 741
    .local v6, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v6    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_5
    if-ge v5, v4, :cond_0

    .line 746
    add-int/lit8 v5, v5, 0x1

    .line 747
    goto :goto_2

    .line 708
    .end local v2    # "dentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v3    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    .end local v4    # "end":I
    .end local v5    # "index":I
    .end local v7    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_6
    const/4 v9, 0x2

    move/from16 v0, p8

    if-ne v0, v9, :cond_8

    .line 710
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2013
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lti;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 710
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    .line 711
    const-string/jumbo v9, "space_id"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    :cond_7
    const-wide/16 v10, 0x0

    move-object/from16 v0, p9

    invoke-static {v0, v10, v11}, Lti;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 713
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 714
    const-string/jumbo v9, "parent_id"

    move-object/from16 v0, p9

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 717
    :cond_8
    const/4 v9, 0x1

    move/from16 v0, p8

    if-ne v0, v9, :cond_9

    .line 719
    const-string/jumbo v9, "space_id"

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 721
    :cond_9
    const/4 v9, 0x3

    move/from16 v0, p8

    if-eq v0, v9, :cond_4

    .line 726
    const-string/jumbo v9, "space_id"

    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 751
    .restart local v3    # "dentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto/16 :goto_0
.end method

.method public updateConflictType(JZ)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "override"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1160
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v2, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v5, "over_write"

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1162
    const-string/jumbo v5, "auto_rename"

    if-eqz p3, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1163
    const-string/jumbo v2, "_id=?"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 1165
    .local v1, "result":I
    if-lez v1, :cond_2

    :goto_2
    return v3

    .end local v1    # "result":I
    :cond_0
    move v2, v4

    .line 1161
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1162
    goto :goto_1

    .restart local v1    # "result":I
    :cond_2
    move v3, v4

    .line 1165
    goto :goto_2
.end method

.method public updateCryptLocalUrl(JLjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "cryptLocalUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 623
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "crypt_local_url"

    invoke-virtual {v0, v4, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 625
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 626
    const-string/jumbo v4, "crypt_status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    :cond_0
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 630
    .local v1, "result":I
    if-lez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateCryptStatus(JZ)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "cryptStatus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 635
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "crypt_status"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 639
    .local v1, "result":I
    if-lez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateDentrys(Ljava/lang/String;Ljava/util/List;)V
    .locals 14
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 90
    .local v0, "database":Lcom/alibaba/alimei/orm/IDatabase;
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 91
    const-string/jumbo v5, "_id=?"

    .line 92
    .local v5, "selectId":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 93
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v2, :cond_0

    .line 94
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buiddDentryEntry(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    move-result-object v1

    .line 95
    .local v1, "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    iget-wide v8, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 97
    const-string/jumbo v7, "cspace_dentry"

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildContentValues(Lcom/alibaba/alimei/cspace/model/DentryModel;)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v12, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v0, v7, v8, v5, v9}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "database":Lcom/alibaba/alimei/orm/IDatabase;
    .end local v1    # "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v5    # "selectId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 100
    .restart local v0    # "database":Lcom/alibaba/alimei/orm/IDatabase;
    .restart local v1    # "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .restart local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .restart local v5    # "selectId":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v4, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 101
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "account_name"

    invoke-virtual {v4, v7, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v7, "space_id"

    iget-object v8, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v7, "path"

    iget-object v8, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 105
    .local v3, "existDentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    if-eqz v3, :cond_2

    .line 106
    iget-wide v8, v3, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    iput-wide v8, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    .line 107
    const-string/jumbo v7, "cspace_dentry"

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildContentValues(Lcom/alibaba/alimei/cspace/model/DentryModel;)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v12, v1, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v0, v7, v8, v5, v9}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    const-string/jumbo v7, "cspace_dentry"

    const/4 v8, 0x0

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/cspace/db/datasource/impl/DentryDatasourceImpl;->buildContentValues(Lcom/alibaba/alimei/cspace/model/DentryModel;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 115
    .end local v1    # "dentryEntry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "existDentry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    .end local v4    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V

    .line 116
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 117
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v0    # "database":Lcom/alibaba/alimei/orm/IDatabase;
    .end local v5    # "selectId":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public updateDirtyDentryAccount()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 801
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-direct {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 802
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v7, "dirty=?"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 805
    .local v5, "entrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "DentryAccountUpdate count="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    if-eqz v5, :cond_1

    .line 807
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    .line 808
    .local v4, "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    iget-object v2, v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->accountName:Ljava/lang/String;

    .line 809
    .local v2, "accountName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DentryAccountUpdate init="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 811
    const-string/jumbo v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "accountArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v8, v1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 813
    aget-object v0, v1, v13

    .line 814
    .local v0, "account":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DentryAccountUpdate="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [1]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v8, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v9, "cspace.db"

    const-string/jumbo v10, "cspace_dentry"

    invoke-direct {v3, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .local v3, "dentryUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v8, "account_name"

    invoke-virtual {v3, v8, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 817
    const-string/jumbo v8, "_id=?"

    new-array v9, v12, [Ljava/lang/Object;

    iget-wide v10, v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    goto/16 :goto_0

    .line 823
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "accountArray":[Ljava/lang/String;
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "dentryUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v4    # "entry":Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;
    :cond_1
    return-void
.end method

.method public updateDownloadedSize(JJ)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "downloadedSize"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 591
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "downloaded_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 595
    .local v1, "result":I
    if-lez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateLocalUrl(JLjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "localUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 601
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "local_url"

    invoke-virtual {v0, v4, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    const-string/jumbo v4, "downloaded_size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 606
    :cond_0
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 608
    .local v1, "result":I
    if-lez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateUploadId(JLjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "uploadId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "upload_id"

    invoke-virtual {v0, v4, p3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    const-string/jumbo v4, "uploaded_size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    :cond_0
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 565
    .local v1, "result":I
    if-lez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateUploadedSize(JJ)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "uploadedSize"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 570
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_0

    .line 572
    const-string/jumbo v4, "uploaded_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    :cond_0
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 576
    .local v1, "result":I
    if-lez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateUploadedSizeAndUrl(JJLjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # J
    .param p3, "uploadedSize"    # J
    .param p5, "tempUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 581
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    const-string/jumbo v5, "cspace.db"

    const-string/jumbo v6, "cspace_dentry"

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v0, "fileUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "uploaded_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    const-string/jumbo v4, "temp_url"

    invoke-virtual {v0, v4, p5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    const-string/jumbo v4, "_id=?"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    .line 586
    .local v1, "result":I
    if-lez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
