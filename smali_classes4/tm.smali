.class public final Ltm;
.super Ljava/lang/Object;
.source "ModelConvertTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 8
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    if-nez p0, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 79
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 47
    .local v1, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 48
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 49
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 50
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 51
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 52
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v5}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 61
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 62
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setContentType(Ljava/lang/String;)V

    .line 63
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->createTime:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 64
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->modifyTime:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 65
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAppId(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCorpId(Ljava/lang/String;)V

    .line 67
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setProirity(Ljava/lang/String;)V

    .line 68
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v5, v3, :cond_3

    :goto_2
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCrypt(Z)V

    .line 69
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPrivateTag(I)V

    .line 71
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "index":I
    if-lez v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 74
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "parentPath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    .end local v0    # "index":I
    .end local v2    # "parentPath":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 68
    goto :goto_2
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 121
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 122
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-nez p0, :cond_0

    .line 131
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 128
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->orgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 130
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 11
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "statisticSrc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0x100

    .line 86
    new-instance v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v8}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 87
    .local v8, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz p0, :cond_0

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "token":Ljava/lang/String;
    invoke-static {v9}, Luf;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 91
    .local v7, "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Luf;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 93
    iput-object v7, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 100
    iput-object v7, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 106
    iput-object v7, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Luh;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 110
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltg;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 114
    iget-object v0, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v1, "space_transfer_src"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v7    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "token":Ljava/lang/String;
    :cond_0
    return-object v8

    .line 96
    .restart local v7    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Luf;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Luh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x316

    const/16 v5, 0x1000

    const/16 v6, 0x5a

    .line 95
    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Luf;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webp"

    const/16 v6, 0x3c

    move v4, v10

    move v5, v10

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
