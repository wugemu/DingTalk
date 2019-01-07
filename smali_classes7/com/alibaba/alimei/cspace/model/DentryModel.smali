.class public Lcom/alibaba/alimei/cspace/model/DentryModel;
.super Lcom/alibaba/alimei/cspace/model/DentryBaseModel;
.source "DentryModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_COMMENT_ID_NEW_APPEND:Ljava/lang/String; = "_new"


# instance fields
.field private accountName:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private authFlag:Ljava/lang/String;

.field private authPicCode:Ljava/lang/String;

.field private authPicUrl:Ljava/lang/String;

.field private autoRename:Z

.field private checked:Z

.field private cid:Ljava/lang/String;

.field private commentCount:J

.field private corpId:Ljava/lang/String;

.field private crypt:Z

.field private cryptLocalUrl:Ljava/lang/String;

.field private cryptStatus:Z

.field private displayAlbumUrl:Ljava/lang/String;

.field private downloadCount:J

.field private duration:J

.field private editorCount:I

.field private expireTime:J

.field private extend:Ljava/lang/String;

.field private featureFlag:I

.field private isESafeNetEncrypt:Z

.field private isSoft:Z

.field private lastCommentId:Ljava/lang/String;

.field private likeCount:J

.field private messageId:J

.field private orgId:J

.field private overWrite:Z

.field private parentId:Ljava/lang/String;

.field private picHeight:I

.field private picRotation:I

.field private picSize:J

.field private picUrl:Ljava/lang/String;

.field private picWidth:I

.field private previewCount:J

.field private privateTag:I

.field private proirity:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private sessionId:J

.field private sortKey:Ljava/lang/String;

.field private spaceTypeBelong:Ljava/lang/String;

.field private targetDentryId:Ljava/lang/String;

.field private targetDentryPath:Ljava/lang/String;

.field private targetSpaceId:Ljava/lang/String;

.field private targetSpaceName:Ljava/lang/String;

.field private targetSpaceType:Ljava/lang/String;

.field private transferCount:J

.field private unFinishEditorCount:I

.field private uploadErrorMsg:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;

.field public uploadStatus:I

.field private uploadedSize:J

.field private waitingForEdit:Z

.field private wifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 849
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/model/DentryModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->accountName:Ljava/lang/String;

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->overWrite:Z

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->autoRename:Z

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadedSize:J

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sessionId:J

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->wifiOnly:Z

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->checked:Z

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadId:Ljava/lang/String;

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extend:Ljava/lang/String;

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sortKey:Ljava/lang/String;

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->serverId:Ljava/lang/String;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->expireTime:J

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->crypt:Z

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptStatus:Z

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->appId:Ljava/lang/String;

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->corpId:Ljava/lang/String;

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->proirity:Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptLocalUrl:Ljava/lang/String;

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->lastCommentId:Ljava/lang/String;

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->commentCount:J

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->likeCount:J

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentId:Ljava/lang/String;

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authFlag:Ljava/lang/String;

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->duration:J

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picUrl:Ljava/lang/String;

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picWidth:I

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picHeight:I

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicUrl:Ljava/lang/String;

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicCode:Ljava/lang/String;

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picRotation:I

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picSize:J

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->editorCount:I

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->unFinishEditorCount:I

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->waitingForEdit:Z

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cid:Ljava/lang/String;

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->messageId:J

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->spaceTypeBelong:Ljava/lang/String;

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->featureFlag:I

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadErrorMsg:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt:Z

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft:Z

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceId:Ljava/lang/String;

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceType:Ljava/lang/String;

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceName:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryId:Ljava/lang/String;

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryPath:Ljava/lang/String;

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->orgId:J

    .line 847
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dentry"    # Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;-><init>()V

    .line 25
    if-eqz p1, :cond_1

    .line 26
    iput-object p2, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->accountName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->spaceId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->contentType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->createTime:J

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getExpireTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->expireTime:J

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->modifiedTime:J

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extension:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->size:J

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->versionType:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->serverId:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->getAliasEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->creatorEmail:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getCreator()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->creatorNick:Ljava/lang/String;

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->getAliasEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->modifierEmail:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;->getModifier()Lcom/alibaba/alimei/restfulapi/v2/data/Creator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/v2/data/Creator;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->modifierNick:Ljava/lang/String;

    .line 48
    :cond_1
    return-void
.end method

.method public static fixParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "parentPath"    # Ljava/lang/String;

    .prologue
    .line 864
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    .end local p0    # "parentPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 867
    .restart local p0    # "parentPath":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public fillDentryDetail()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 674
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->localUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 676
    const-string/jumbo v3, "folder"

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    .line 682
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 709
    :cond_1
    :goto_1
    return-void

    .line 678
    :cond_2
    const-string/jumbo v3, "file"

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    goto :goto_0

    .line 686
    :cond_3
    const-string/jumbo v3, "file"

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 687
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, "index":I
    if-eq v0, v5, :cond_4

    .line 689
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    .line 690
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentPath:Ljava/lang/String;

    .line 693
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 695
    .local v1, "indexExtension":I
    if-eq v1, v5, :cond_1

    .line 696
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extension:Ljava/lang/String;

    goto :goto_1

    .line 699
    .end local v0    # "index":I
    .end local v1    # "indexExtension":I
    :cond_5
    const-string/jumbo v3, "folder"

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_6

    .line 701
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    .line 703
    :cond_6
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 704
    .local v2, "indexParent":I
    if-eq v2, v5, :cond_1

    .line 705
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentPath:Ljava/lang/String;

    .line 706
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPicCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->commentCount:J

    return-wide v0
.end method

.method public getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->corpId:Ljava/lang/String;

    return-object v0
.end method

.method public getCryptLocalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptLocalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayAlbumUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->displayAlbumUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->downloadCount:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->duration:J

    return-wide v0
.end method

.method public getEditorCount()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->editorCount:I

    return v0
.end method

.method public getExpireTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->expireTime:J

    return-wide v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureFlag()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->featureFlag:I

    return v0
.end method

.method public getLastCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->lastCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->likeCount:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 562
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->messageId:J

    return-wide v0
.end method

.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 666
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->orgId:J

    return-wide v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPicHeight()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picHeight:I

    return v0
.end method

.method public getPicRotation()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picRotation:I

    return v0
.end method

.method public getPicSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picSize:J

    return-wide v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPicWidth()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picWidth:I

    return v0
.end method

.method public getPreviewCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->previewCount:J

    return-wide v0
.end method

.method public getPrivateTag()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->privateTag:I

    return v0
.end method

.method public getProirity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->proirity:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sessionId:J

    return-wide v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceTypeBelong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->spaceTypeBelong:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDentryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDentryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSpaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSpaceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->transferCount:J

    return-wide v0
.end method

.method public getUnFinishEditorCount()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->unFinishEditorCount:I

    return v0
.end method

.method public getUploadErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatus()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    return v0
.end method

.method public getUploadedSize()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadedSize:J

    return-wide v0
.end method

.method public isAutoRename()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->autoRename:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->checked:Z

    return v0
.end method

.method public isCrypt()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->crypt:Z

    return v0
.end method

.method public isCryptStatus()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptStatus:Z

    return v0
.end method

.method public isESafeNetEncrypt()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt:Z

    return v0
.end method

.method public isOverWrite()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->overWrite:Z

    return v0
.end method

.method public isSoft()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft:Z

    return v0
.end method

.method public isWaitingForEdit()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->waitingForEdit:Z

    return v0
.end method

.method public isWifiOnly()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->wifiOnly:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->accountName:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->appId:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setAuthFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "authFlag"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authFlag:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setAuthPicCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authPicCode"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicCode:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setAuthPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "authPicUrl"    # Ljava/lang/String;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicUrl:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setAutoRename(Z)V
    .locals 0
    .param p1, "autoRename"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->autoRename:Z

    .line 327
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->checked:Z

    .line 359
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cid:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public setCommentCount(J)V
    .locals 1
    .param p1, "commentCount"    # J

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->commentCount:J

    .line 267
    return-void
.end method

.method public setCorpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->corpId:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setCrypt(Z)V
    .locals 0
    .param p1, "crypt"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->crypt:Z

    .line 415
    return-void
.end method

.method public setCryptLocalUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cryptLocalUrl"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptLocalUrl:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setCryptStatus(Z)V
    .locals 0
    .param p1, "cryptStatus"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptStatus:Z

    .line 423
    return-void
.end method

.method public setDisplayAlbumUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayAlbumUrl"    # Ljava/lang/String;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->displayAlbumUrl:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setDownloadCount(J)V
    .locals 1
    .param p1, "downloadCount"    # J

    .prologue
    .line 282
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->downloadCount:J

    .line 283
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 478
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->duration:J

    .line 479
    return-void
.end method

.method public setESafeNetEncrypt(Z)V
    .locals 0
    .param p1, "ESafeNetEncrypt"    # Z

    .prologue
    .line 606
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt:Z

    .line 607
    return-void
.end method

.method public setEditorCount(I)V
    .locals 0
    .param p1, "editorCount"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->editorCount:I

    .line 543
    return-void
.end method

.method public setExpireTime(J)V
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 406
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->expireTime:J

    .line 407
    return-void
.end method

.method public setExtend(Ljava/lang/String;)V
    .locals 0
    .param p1, "extend"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extend:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setFeatureFlag(I)V
    .locals 0
    .param p1, "featureFlag"    # I

    .prologue
    .line 590
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->featureFlag:I

    .line 591
    return-void
.end method

.method public setLastCommentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCommentId"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->lastCommentId:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setLikeCount(J)V
    .locals 1
    .param p1, "likeCount"    # J

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->likeCount:J

    .line 275
    return-void
.end method

.method public setMessageId(J)V
    .locals 1
    .param p1, "messageId"    # J

    .prologue
    .line 566
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->messageId:J

    .line 567
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 670
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->orgId:J

    .line 671
    return-void
.end method

.method public setOverWrite(Z)V
    .locals 0
    .param p1, "overWrite"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->overWrite:Z

    .line 319
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentId:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setPicHeight(I)V
    .locals 0
    .param p1, "picHeight"    # I

    .prologue
    .line 502
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picHeight:I

    .line 503
    return-void
.end method

.method public setPicRotation(I)V
    .locals 0
    .param p1, "picRotation"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picRotation:I

    .line 527
    return-void
.end method

.method public setPicSize(J)V
    .locals 1
    .param p1, "picSize"    # J

    .prologue
    .line 534
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picSize:J

    .line 535
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picUrl:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public setPicWidth(I)V
    .locals 0
    .param p1, "picWidth"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picWidth:I

    .line 495
    return-void
.end method

.method public setPreviewCount(J)V
    .locals 1
    .param p1, "previewCount"    # J

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->previewCount:J

    .line 291
    return-void
.end method

.method public setPrivateTag(I)V
    .locals 0
    .param p1, "privateTag"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->privateTag:I

    .line 251
    return-void
.end method

.method public setProirity(Ljava/lang/String;)V
    .locals 0
    .param p1, "proirity"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->proirity:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->serverId:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setSessionId(J)V
    .locals 1
    .param p1, "sessionId"    # J

    .prologue
    .line 342
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sessionId:J

    .line 343
    return-void
.end method

.method public setSoft(Z)V
    .locals 0
    .param p1, "soft"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft:Z

    .line 623
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sortKey:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setSpaceTypeBelong(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceTypeBelong"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->spaceTypeBelong:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setTargetDentryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetDentryId"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryId:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public setTargetDentryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetDentryPath"    # Ljava/lang/String;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryPath:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public setTargetSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSpaceId"    # Ljava/lang/String;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceId:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setTargetSpaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSpaceName"    # Ljava/lang/String;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceName:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public setTargetSpaceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSpaceType"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceType:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setTransferCount(J)V
    .locals 1
    .param p1, "transferCount"    # J

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->transferCount:J

    .line 299
    return-void
.end method

.method public setTransferCount(Ljava/lang/Long;)V
    .locals 2
    .param p1, "transferCount"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 302
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->transferCount:J

    .line 303
    return-void
.end method

.method public setUnFinishEditorCount(I)V
    .locals 0
    .param p1, "unFinishEditorCount"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->unFinishEditorCount:I

    .line 575
    return-void
.end method

.method public setUploadErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadErrorMsg"    # Ljava/lang/String;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadErrorMsg:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadId:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setUploadStatus(I)V
    .locals 0
    .param p1, "uploadStatus"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    .line 375
    return-void
.end method

.method public setUploadedSize(J)V
    .locals 1
    .param p1, "uploadedSize"    # J

    .prologue
    .line 334
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadedSize:J

    .line 335
    return-void
.end method

.method public setWaitingForEdit(Z)V
    .locals 0
    .param p1, "waitingForEdit"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->waitingForEdit:Z

    .line 551
    return-void
.end method

.method public setWifiOnly(Z)V
    .locals 0
    .param p1, "wifiOnly"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->wifiOnly:Z

    .line 351
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 713
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 714
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 721
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 722
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->modifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 723
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->creatorEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->creatorNick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->modifierEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->modifierNick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->versionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->localUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->tempUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->dirty:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->downloadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 733
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->overWrite:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->autoRename:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 737
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sessionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 738
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->wifiOnly:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->checked:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->extend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->sortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 746
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->crypt:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptStatus:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->proirity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cryptLocalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->lastCommentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->commentCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 754
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->likeCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->parentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 758
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 759
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 760
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->authPicCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->picSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 767
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->editorCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->unFinishEditorCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->waitingForEdit:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->cid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->messageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 773
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->spaceTypeBelong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    iget v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->featureFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->uploadErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetSpaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->targetDentryPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 787
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryModel;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 788
    return-void
.end method
