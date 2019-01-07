.class public final Lgoc;
.super Ljava/lang/Object;
.source "ModelConvertTools.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    sput-object v0, Lgoc;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 8
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 126
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 127
    .local v1, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->creatorId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreatorEmail(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 132
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 133
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v3}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDirty(Z)V

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setContentType(Ljava/lang/String;)V

    .line 144
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->createTime:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 145
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->modifyTime:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 146
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAppId(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCorpId(Ljava/lang/String;)V

    .line 148
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setProirity(Ljava/lang/String;)V

    .line 149
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCrypt(Z)V

    .line 150
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPrivateTag(I)V

    .line 151
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 153
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 154
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 155
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 156
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 157
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 159
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picSize:J

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 160
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 162
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, "index":I
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 165
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "parentPath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setParentPath(Ljava/lang/String;)V

    .line 170
    .end local v0    # "index":I
    .end local v2    # "parentPath":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 171
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isESafeNetEncrypt:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    :goto_3
    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setESafeNetEncrypt(Z)V

    goto/16 :goto_0

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 149
    goto :goto_2

    :cond_4
    move v4, v5

    .line 171
    goto :goto_3
.end method

.method public static a(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 4
    .param p0, "csSpace"    # Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .prologue
    .line 932
    if-nez p0, :cond_0

    .line 933
    const/4 v0, 0x0

    .line 956
    :goto_0
    return-object v0

    .line 936
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 937
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 940
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getModifyTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 941
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getAclAuthFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v1

    invoke-static {v1}, Lgqu;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    sget v1, Lfzs$h;->org_personal:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 952
    :goto_1
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 953
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 954
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getType()I

    move-result v1

    invoke-static {v1}, Lgqu;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 947
    sget v1, Lfzs$h;->org_public_share:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 949
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Lgit;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 6
    .param p0, "coFolderModel"    # Lgit;

    .prologue
    const-wide/16 v4, 0x0

    .line 788
    if-nez p0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 806
    :goto_0
    return-object v0

    .line 792
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 793
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v1, p0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lgit;->f:Ljava/util/Date;

    if-nez v1, :cond_1

    move-wide v2, v4

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreateTime(J)V

    .line 797
    iget-object v1, p0, Lgit;->g:Ljava/util/Date;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 798
    iget-object v1, p0, Lgit;->h:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCreatorEmail(Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lgit;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAccountName(Ljava/lang/String;)V

    .line 801
    const-string/jumbo v1, "cp"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 802
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 803
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 804
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v1, p0, Lgit;->f:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1

    .line 797
    :cond_2
    iget-object v1, p0, Lgit;->g:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2
.end method

.method public static a(Lgiy;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 4
    .param p0, "orgConvModel"    # Lgiy;

    .prologue
    .line 828
    if-eqz p0, :cond_0

    iget-object v1, p0, Lgiy;->f:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 829
    :cond_0
    const/4 v0, 0x0

    .line 843
    :goto_0
    return-object v0

    .line 832
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 833
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {p0}, Lgps;->a(Lgiy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lgiy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lgiy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v2, "S_M_T"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 836
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 838
    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 839
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 840
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 841
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "modifiedTime"    # J

    .prologue
    .line 810
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    const/4 v0, 0x0

    .line 824
    :goto_0
    return-object v0

    .line 814
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 815
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 816
    sget v1, Lfzs$h;->org_public_share:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setModifiedTime(J)V

    .line 819
    const-string/jumbo v1, "org"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceTypeBelong(Ljava/lang/String;)V

    .line 820
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 821
    const-string/jumbo v1, "folder"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 822
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 88
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->creatorId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCorpId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getProirity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ligb;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPrivateTag()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTempUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->mediaId:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDuration()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicWidth()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicHeight()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicSize()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picSize:J

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicRotation()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isESafeNetEncrypt:I

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 96
    goto :goto_1
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    if-nez p0, :cond_1

    .line 224
    const/4 v0, 0x0

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 228
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v1}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 231
    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->length:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 232
    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 235
    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->createTime:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->createTime:J

    .line 236
    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->modifyTime:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->modifyTime:J

    .line 237
    iget-boolean v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->isEncrypt:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    .line 238
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->priority:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 1033
    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 238
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->priority:I

    .line 239
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->appId:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    .line 241
    iget v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->fileType:I

    if-nez v1, :cond_3

    .line 242
    const-string/jumbo v1, "folder"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 237
    goto :goto_1

    .line 243
    :cond_3
    iget v1, p0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->fileType:I

    if-ne v1, v2, :cond_0

    .line 244
    const-string/jumbo v1, "file"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 749
    if-nez p0, :cond_0

    .line 750
    const/4 v0, 0x0

    .line 764
    :goto_0
    return-object v0

    .line 753
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 754
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 755
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 756
    invoke-static {p0}, Lgqf;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 757
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileSize:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 758
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileExtension:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 759
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 760
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 761
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "0"

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 762
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    goto :goto_0

    .line 761
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Lght;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "recentFileModel"    # Lght;

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 184
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 185
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lght;->b:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lght;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lght;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lght;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lght;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->createTime:J

    .line 190
    iget-object v1, p0, Lght;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->modifyTime:J

    .line 191
    iget-object v1, p0, Lght;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 192
    iget-object v1, p0, Lght;->i:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lght;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    .line 194
    iget-object v1, p0, Lght;->n:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lght;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lght;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    .line 197
    const-string/jumbo v1, "file"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 574
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-object v2

    .line 577
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    new-instance v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 582
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 583
    iput-object p0, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 584
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lieb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 585
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 587
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 588
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    .line 589
    .local v3, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    const-string/jumbo v4, "cspace_video_preview_online_enable"

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "space_bubble_video_enable"

    .line 590
    invoke-virtual {v0, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 591
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    invoke-static {p0, v2}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 595
    :cond_2
    const-string/jumbo v4, "space_bubble_image_enable"

    invoke-virtual {v0, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 16609
    iput-object p0, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 16611
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 16612
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16613
    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 16614
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 16615
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    goto/16 :goto_0
.end method

.method public static a(Lgic;)Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .locals 8
    .param p0, "spaceModel"    # Lgic;

    .prologue
    const-wide/16 v6, 0x0

    .line 847
    if-nez p0, :cond_1

    .line 848
    const/4 v1, 0x0

    .line 889
    :cond_0
    :goto_0
    return-object v1

    .line 851
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->create()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    .line 853
    .local v1, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    iget-object v4, p0, Lgic;->a:Ljava/lang/Long;

    .line 21044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 853
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 854
    .local v3, "spaceId":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setId(Ljava/lang/String;)V

    .line 856
    iget-object v4, p0, Lgic;->j:Ljava/lang/String;

    invoke-static {v4}, Lgqu;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setType(I)V

    .line 857
    iget-object v4, p0, Lgic;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setTypeString(Ljava/lang/String;)V

    .line 859
    iget-object v4, p0, Lgic;->m:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setName(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setCreateTime(J)V

    .line 862
    iget-object v4, p0, Lgic;->b:Ljava/lang/Long;

    .line 22044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 862
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setModifyTime(J)V

    .line 864
    iget-object v4, p0, Lgic;->c:Ljava/lang/Long;

    .line 23044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 864
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setSpaceQuota(J)V

    .line 865
    iget-object v4, p0, Lgic;->d:Ljava/lang/Long;

    .line 24044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 865
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setSpaceUsedQuota(J)V

    .line 867
    iget-object v4, p0, Lgic;->e:Ljava/lang/Long;

    .line 25044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 867
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setTotalQuota(J)V

    .line 868
    iget-object v4, p0, Lgic;->f:Ljava/lang/Long;

    .line 26044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 868
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setTotalUsedQuota(J)V

    .line 870
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->create()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v0

    .line 871
    .local v0, "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setOrg(Lcom/alibaba/dingtalk/cspace/model/CsOrg;)V

    .line 872
    iget-object v4, p0, Lgic;->h:Ljava/lang/Long;

    .line 27044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 872
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->setId(J)V

    .line 874
    iget-object v4, p0, Lgic;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setConversationId(Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v4, p0, Lgic;->k:Ljava/util/List;

    invoke-static {v4}, Lgqd;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setAclAuthFlag(Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Lgic;->g:Ljava/util/Map;

    .line 878
    .local v2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 879
    const-string/jumbo v4, "eam_acl"

    .line 880
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "1"

    .line 879
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setAclEnabled(Z)V

    .line 881
    const-string/jumbo v4, "tmpl_c"

    .line 882
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "1"

    .line 881
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setTemplateFolderCreated(Z)V

    .line 883
    const-string/jumbo v4, "doc_readonly"

    .line 884
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "1"

    .line 883
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setReadOnlyEnabled(Z)V

    .line 885
    const-string/jumbo v4, "watermark"

    .line 886
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "1"

    .line 885
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setWaterMarkEnabled(Z)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 11
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "statisticSrc"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v9}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 354
    .local v9, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz p0, :cond_0

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 356
    .local v10, "token":Ljava/lang/String;
    invoke-static {v10}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 357
    .local v8, "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 364
    iput-object v8, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpx;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 368
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 369
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 370
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 372
    iget-object v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v1, "space_transfer_src"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v8    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "token":Ljava/lang/String;
    :cond_0
    return-object v9

    .line 358
    .restart local v8    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "token":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    .line 360
    invoke-static {v4, v5}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x316

    const/16 v6, 0x1000

    const/16 v7, 0x5a

    .line 358
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lght;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 13
    .param p0, "cSpaceRecentFileModel"    # Lght;
    .param p1, "statisticSrc"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x100

    const/4 v1, 0x0

    .line 305
    new-instance v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 306
    .local v10, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz p0, :cond_0

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 307
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 308
    .local v11, "token":Ljava/lang/String;
    invoke-static {v11}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 309
    .local v9, "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lght;->d:Ljava/lang/String;

    iget-object v2, p0, Lght;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "extension":Ljava/lang/String;
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v3

    iget-object v0, p0, Lght;->i:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    .line 311
    :goto_0
    iget-object v2, p0, Lght;->b:Ljava/lang/Long;

    if-nez v2, :cond_2

    const-string/jumbo v2, "0"

    .line 310
    :goto_1
    invoke-virtual {v3, v1, v0, v2, v8}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 313
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    .line 315
    invoke-static {v8}, Lgpx;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 318
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 329
    :goto_2
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    iget-object v2, p0, Lght;->i:Ljava/lang/Long;

    if-nez v2, :cond_6

    const-string/jumbo v2, "0"

    .line 330
    :goto_3
    iget-object v3, p0, Lght;->b:Ljava/lang/Long;

    if-nez v3, :cond_7

    const-string/jumbo v3, "0"

    .line 331
    :goto_4
    const-string/jumbo v4, "webp"

    const/16 v7, 0x3c

    move v5, v12

    move v6, v12

    .line 329
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 335
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    .line 337
    iget-object v0, p0, Lght;->d:Ljava/lang/String;

    iget-object v2, p0, Lght;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lgpx;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 338
    iget-object v0, p0, Lght;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 339
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 340
    iget-object v0, p0, Lght;->d:Ljava/lang/String;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 342
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v2, "space_transfer_src"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v1, "favorite_enter_hide"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v8    # "extension":Ljava/lang/String;
    .end local v9    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "token":Ljava/lang/String;
    :cond_0
    return-object v10

    .line 310
    .restart local v8    # "extension":Ljava/lang/String;
    .restart local v9    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "token":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lght;->i:Ljava/lang/Long;

    .line 311
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lght;->b:Ljava/lang/Long;

    .line 312
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 320
    :cond_3
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    iget-object v2, p0, Lght;->i:Ljava/lang/Long;

    if-nez v2, :cond_4

    const-string/jumbo v2, "0"

    .line 321
    :goto_5
    iget-object v3, p0, Lght;->b:Ljava/lang/Long;

    if-nez v3, :cond_5

    const-string/jumbo v3, "0"

    .line 322
    :goto_6
    iget-object v4, p0, Lght;->d:Ljava/lang/String;

    iget-object v5, p0, Lght;->e:Ljava/lang/String;

    .line 323
    invoke-static {v4, v5}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x316

    const/16 v6, 0x1000

    const/16 v7, 0x5a

    .line 320
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 326
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    goto/16 :goto_2

    .line 320
    :cond_4
    iget-object v2, p0, Lght;->i:Ljava/lang/Long;

    .line 321
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lght;->b:Ljava/lang/Long;

    .line 322
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 329
    :cond_6
    iget-object v2, p0, Lght;->i:Ljava/lang/Long;

    .line 330
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lght;->b:Ljava/lang/Long;

    .line 331
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 12
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "recentDentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .prologue
    const/16 v11, 0x100

    const/4 v1, 0x0

    .line 255
    if-eqz p1, :cond_0

    const-string/jumbo v0, "image"

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v10, v1

    .line 301
    :goto_0
    return-object v10

    .line 258
    :cond_1
    invoke-static {p0}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 259
    .local v9, "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 260
    .local v10, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v0, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "extension":Ljava/lang/String;
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 263
    invoke-static {v3, v4}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v0, v1, v2, v3, v8}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 265
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    .line 267
    invoke-static {v8}, Lgpx;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 270
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 281
    :goto_1
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 283
    invoke-static {v3, v4}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    .line 284
    invoke-static {v4, v1}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x3c

    move v5, v11

    move v6, v11

    .line 281
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 288
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    .line 290
    iget-object v0, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lgpx;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 291
    iget-wide v0, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->length:J

    iput-wide v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 292
    iget-object v0, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 293
    iget-wide v0, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverOpId:J

    iput-wide v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 294
    sget-object v0, Lgoc;->a:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    sput-object v0, Lgoc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "favorite_enter_hide"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2
    sget-object v0, Lgoc;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "space_transfer_src"

    const-string/jumbo v2, "filedynamic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lgoc;->a:Ljava/util/HashMap;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 300
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    goto/16 :goto_0

    .line 272
    :cond_3
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 274
    invoke-static {v3, v4}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    .line 275
    invoke-static {v4, v1}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x316

    const/16 v6, 0x1000

    const/16 v7, 0x5a

    .line 272
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 278
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    goto/16 :goto_1
.end method

.method private static a(J)Ljava/lang/String;
    .locals 10
    .param p0, "videoId"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 684
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 685
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 687
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "video_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 691
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 687
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 692
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 694
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 697
    if-eqz v7, :cond_0

    .line 698
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 701
    .end local v6    # "columnIndex":I
    :cond_0
    :goto_0
    return-object v0

    .line 697
    :cond_1
    if-eqz v7, :cond_2

    .line 698
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 701
    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 698
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgjy;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "serverShareModels":Ljava/util/List;, "Ljava/util/List<Lgjy;>;"
    const-wide/16 v6, 0x0

    .line 471
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    :cond_0
    const/4 v2, 0x0

    .line 509
    :cond_1
    return-object v2

    .line 475
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v2, "spaceLinkShareModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgjy;

    .line 478
    .local v0, "serverShareModel":Lgjy;
    if-eqz v0, :cond_3

    .line 482
    new-instance v1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;-><init>()V

    .line 484
    .local v1, "spaceLinkShareModel":Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    iget-object v4, v0, Lgjy;->d:Ljava/lang/Long;

    .line 5044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 484
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setCreateTime(J)V

    .line 485
    iget-object v4, v0, Lgjy;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setCreateTimeString(Ljava/lang/String;)V

    .line 486
    iget-object v4, v0, Lgjy;->e:Ljava/lang/Long;

    .line 6044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 486
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setExpireTime(J)V

    .line 487
    iget-object v4, v0, Lgjy;->p:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setExpireTimeString(Ljava/lang/String;)V

    .line 489
    iget-object v4, v0, Lgjy;->c:Ljava/lang/Long;

    .line 7044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 489
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setCreatorId(J)V

    .line 490
    iget-object v4, v0, Lgjy;->m:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setCreatorName(Ljava/lang/String;)V

    .line 492
    iget-object v4, v0, Lgjy;->q:Ljava/lang/Integer;

    .line 8033
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 492
    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setDentryType(I)V

    .line 493
    iget-object v4, v0, Lgjy;->g:Ljava/lang/Long;

    .line 8044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 493
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setFileLength(J)V

    .line 495
    iget-object v4, v0, Lgjy;->h:Ljava/lang/Long;

    .line 9044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 495
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setViewCount(J)V

    .line 496
    iget-object v4, v0, Lgjy;->i:Ljava/lang/Long;

    .line 10044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 496
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setDownloadCount(J)V

    .line 497
    iget-object v4, v0, Lgjy;->f:Ljava/lang/Long;

    .line 11044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 497
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setFileNumber(J)V

    .line 498
    iget-object v4, v0, Lgjy;->k:Ljava/lang/Long;

    .line 12044
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 498
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setOrgId(J)V

    .line 499
    iget-object v4, v0, Lgjy;->n:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setOrgName(Ljava/lang/String;)V

    .line 501
    iget-object v4, v0, Lgjy;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setPassword(Ljava/lang/String;)V

    .line 502
    iget-object v4, v0, Lgjy;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setShareName(Ljava/lang/String;)V

    .line 503
    iget-object v4, v0, Lgjy;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setShareUrl(Ljava/lang/String;)V

    .line 504
    iget-object v4, v0, Lgjy;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->setShortLink(Ljava/lang/String;)V

    .line 506
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static a(Lghy;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .param p0, "resultModel"    # Lghy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lghy;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-nez p0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    .line 517
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v0, "extModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;>;"
    iget-object v1, p0, Lghy;->c:Ljava/util/List;

    invoke-static {v1, v0}, Lgoc;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 519
    invoke-static {p1, v0}, Lgoc;->b(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 653
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 658
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {p0, v0}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 660
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 661
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 662
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 663
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 664
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDisplayAlbumUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 620
    .line 16629
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 16633
    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 16634
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 16635
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 17109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 16635
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    .line 16636
    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 17150
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 16636
    iput v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 16637
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 18150
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v3

    .line 16637
    iput v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 16639
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_4

    .line 16640
    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 19150
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 16641
    const/16 v3, 0x5a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_3

    .line 16642
    :cond_2
    iget v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 16643
    iget v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    iput v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    .line 16644
    iput v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    .line 16646
    :cond_3
    iput v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->rotation:I

    .line 19668
    :cond_4
    invoke-static {p0}, Lgoc;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 19669
    invoke-static {v4, v5}, Lgoc;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 19670
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 16649
    :cond_5
    :goto_1
    iput-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "ModelConvertTools"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fillVideoInfo: filePath: "

    aput-object v4, v3, v8

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", errorMsg: "

    aput-object v5, v3, v4

    .line 624
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 623
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19674
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 19673
    invoke-static {v1, v4, v5, v3, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19676
    invoke-static {v4, v5}, Lgoc;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 19677
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_5

    :cond_7
    move-object v1, v2

    .line 19680
    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lghx;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "lockDataList":Ljava/util/List;, "Ljava/util/List<Lghx;>;"
    .local p1, "extModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;>;"
    const-wide/16 v6, 0x0

    .line 525
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    :cond_0
    return-void

    .line 528
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lghx;

    .line 529
    .local v1, "lockData":Lghx;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lghx;->a:Ljava/lang/Long;

    .line 13044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 530
    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    iget-object v2, v1, Lghx;->b:Ljava/lang/String;

    .line 531
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 534
    iget-object v2, v1, Lghx;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 535
    .local v0, "extModel":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    if-nez v0, :cond_3

    .line 536
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .end local v0    # "extModel":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;-><init>()V

    .line 537
    .restart local v0    # "extModel":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    iget-object v2, v1, Lghx;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setDentryId(Ljava/lang/String;)V

    .line 538
    iget-object v2, v1, Lghx;->a:Ljava/lang/Long;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setSpaceId(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getDentryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_3
    iget-object v2, v1, Lghx;->c:Ljava/lang/Long;

    .line 15044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 542
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setEditor(J)V

    .line 543
    iget-object v2, v1, Lghx;->d:Ljava/lang/Boolean;

    .line 16022
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 543
    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setCanReleaseEditLock(Z)V

    goto :goto_0

    .line 538
    :cond_4
    iget-object v2, v1, Lghx;->a:Ljava/lang/Long;

    .line 14044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 539
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)J
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 706
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 708
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_data LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 714
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 716
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 719
    if-eqz v7, :cond_0

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 723
    .end local v6    # "columnIndex":I
    :cond_0
    :goto_0
    return-wide v0

    .line 719
    :cond_1
    if-eqz v7, :cond_2

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 719
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 4
    .param p0, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 768
    if-nez p0, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 784
    :goto_0
    return-object v0

    .line 771
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 772
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceId(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceType(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetSpaceName(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetDentryId(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTargetDentryPath(Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->linkSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->linkFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setName(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setExtension(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setType(Ljava/lang/String;)V

    .line 782
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileSize:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 783
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSoft(Z)V

    goto :goto_0
.end method

.method public static b(Lgit;)Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .locals 9
    .param p0, "coFolderModel"    # Lgit;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 893
    if-nez p0, :cond_0

    .line 894
    const/4 v1, 0x0

    .line 928
    :goto_0
    return-object v1

    .line 897
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->create()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    .line 899
    .local v1, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    iget-object v3, p0, Lgit;->a:Ljava/lang/Long;

    .line 28044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 899
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "spaceId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setId(Ljava/lang/String;)V

    .line 902
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setType(I)V

    .line 903
    const-string/jumbo v3, "cp"

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setTypeString(Ljava/lang/String;)V

    .line 905
    iget-object v3, p0, Lgit;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setName(Ljava/lang/String;)V

    .line 906
    iget-object v3, p0, Lgit;->f:Ljava/util/Date;

    if-nez v3, :cond_2

    move-wide v4, v6

    :goto_1
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setCreateTime(J)V

    .line 907
    iget-object v3, p0, Lgit;->g:Ljava/util/Date;

    if-nez v3, :cond_3

    move-wide v4, v6

    :goto_2
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setModifyTime(J)V

    .line 908
    iget-object v3, p0, Lgit;->h:Ljava/lang/Long;

    .line 29044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 908
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setCreatorId(J)V

    .line 909
    iget-object v3, p0, Lgit;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setCreatorName(Ljava/lang/String;)V

    .line 911
    iget-object v3, p0, Lgit;->d:Ljava/lang/Long;

    .line 30044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 911
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setSpaceQuota(J)V

    .line 912
    iget-object v3, p0, Lgit;->e:Ljava/lang/Long;

    .line 31044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 912
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setSpaceUsedQuota(J)V

    .line 914
    iget-object v3, p0, Lgit;->j:Lgjb;

    if-eqz v3, :cond_1

    .line 915
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->create()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v0

    .line 916
    .local v0, "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setOrg(Lcom/alibaba/dingtalk/cspace/model/CsOrg;)V

    .line 917
    iget-object v3, p0, Lgit;->j:Lgjb;

    iget-object v3, v3, Lgjb;->a:Ljava/lang/Long;

    .line 32044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 917
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->setId(J)V

    .line 918
    iget-object v3, p0, Lgit;->j:Lgjb;

    iget-object v3, v3, Lgjb;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->setName(Ljava/lang/String;)V

    .line 921
    .end local v0    # "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    :cond_1
    iget-object v3, p0, Lgit;->n:Ljava/lang/Boolean;

    .line 33022
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 921
    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setAclEnabled(Z)V

    .line 922
    iget-object v3, p0, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setConversationId(Ljava/lang/String;)V

    .line 924
    iget-object v3, p0, Lgit;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setShareUrl(Ljava/lang/String;)V

    .line 925
    iget-object v3, p0, Lgit;->k:Ljava/lang/Integer;

    .line 33033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 925
    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setCoFolderRole(I)V

    .line 926
    iget-object v3, p0, Lgit;->l:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setCoFolderRoleCount(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 906
    :cond_2
    iget-object v3, p0, Lgit;->f:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1

    .line 907
    :cond_3
    iget-object v3, p0, Lgit;->g:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    .locals 13
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 423
    if-nez p0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v1

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 429
    .local v9, "fileExtension":Ljava/lang/String;
    invoke-static {v9}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4246
    :cond_2
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 434
    .local v12, "token":Ljava/lang/String;
    invoke-static {v12}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 436
    .local v10, "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    invoke-direct {v11}, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;-><init>()V

    .line 437
    .local v11, "spaceAlbumModel":Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    iput-object v10, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->j:Ljava/util/Map;

    .line 438
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->k:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->i:J

    .line 440
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->a:J

    .line 441
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->b:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->c:Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->e:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPicRotation()I

    move-result v0

    iput v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->h:I

    .line 445
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    iput-boolean v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->l:Z

    .line 447
    invoke-static {v9}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    .line 452
    const/4 v0, 0x1

    iput v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->d:I

    .line 455
    :cond_3
    invoke-static {v9}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthPicUrl()Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, "displayAlbumUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDisplayAlbumUrl()Ljava/lang/String;

    move-result-object v8

    .line 462
    :cond_4
    iput-object v8, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDuration()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->g:J

    .line 464
    const/4 v0, 0x2

    iput v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->d:I

    .end local v8    # "displayAlbumUrl":Ljava/lang/String;
    :cond_5
    move-object v1, v11

    .line 467
    goto/16 :goto_0

    .line 448
    :cond_6
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "webp"

    const/16 v7, 0x3c

    move v6, v5

    .line 448
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 13
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "statisticSrc"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x100

    const/4 v1, 0x0

    .line 382
    new-instance v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 383
    .local v10, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz p0, :cond_0

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    .local v11, "token":Ljava/lang/String;
    invoke-static {v11}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 3486
    .local v9, "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lgpr;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 388
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    .line 390
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lgpx;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, "fileExtension":Ljava/lang/String;
    invoke-static {v8}, Lgpx;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 394
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 408
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    .line 410
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpx;->h(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 411
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 412
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 413
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 416
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v1, "space_transfer_src"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .end local v8    # "fileExtension":Ljava/lang/String;
    .end local v9    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "token":Ljava/lang/String;
    :cond_0
    return-object v10

    .line 396
    .restart local v8    # "fileExtension":Ljava/lang/String;
    .restart local v9    # "headerToken":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "token":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 401
    iput-object v9, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x316

    const/16 v6, 0x1000

    const/16 v7, 0x5a

    .line 396
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 404
    :cond_3
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "webp"

    const/16 v7, 0x3c

    move v5, v12

    move v6, v12

    .line 404
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static b(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p1, "extModelMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    return-void

    .line 553
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 554
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 556
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 560
    .local v1, "extModel":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .locals 4
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 729
    if-nez p0, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 745
    :goto_0
    return-object v0

    .line 732
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;-><init>()V

    .line 733
    .local v0, "spaceLinkDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->version:I

    .line 734
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    .line 735
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    .line 736
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    .line 737
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->filePath:Ljava/lang/String;

    .line 738
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    .line 739
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileExtension:Ljava/lang/String;

    .line 740
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    .line 741
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileSize:J

    .line 742
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->parentId:Ljava/lang/String;

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->creatorId:J

    .line 744
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->isLink:I

    goto :goto_0
.end method
