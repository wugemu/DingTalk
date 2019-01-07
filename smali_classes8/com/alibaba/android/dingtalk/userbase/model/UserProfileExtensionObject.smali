.class public Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
.super Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
.source "UserProfileExtensionObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2a65a3efde202c6L


# instance fields
.field public card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public crmContacts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;",
            ">;"
        }
    .end annotation
.end field

.field public friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mAllowChangeDingTalkId:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mIsEmailBind:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgEmployees:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field public partial:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 191
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>(Landroid/os/Parcel;)V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const-class v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    const-class v3, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->partial:Z

    .line 206
    return-void

    :cond_0
    move v0, v2

    .line 199
    goto :goto_0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_1

    :cond_2
    move v1, v2

    .line 205
    goto :goto_2
.end method

.method public static fromIDLModel(Lcgj;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 14
    .param p0, "model"    # Lcgj;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v5, 0x0

    .line 154
    :goto_0
    return-object v5

    .line 68
    :cond_0
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;-><init>()V

    .line 69
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v8, p0, Lcgj;->k:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    .line 69
    iput-boolean v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->partial:Z

    .line 70
    iget-object v8, p0, Lcgj;->l:Lche;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->fromIdl(Lche;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 71
    iget-object v8, p0, Lcgj;->a:Lcgk;

    if-eqz v8, :cond_6

    .line 72
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->j:Ljava/lang/Boolean;

    .line 1085
    if-nez v8, :cond_1

    .line 1086
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 72
    :cond_1
    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    .line 73
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->f:Ljava/util/Date;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dob:Ljava/util/Date;

    .line 74
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->k:Ljava/lang/Integer;

    .line 2033
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 74
    iput v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->ver:I

    .line 75
    iget v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->ver:I

    int-to-long v8, v8

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->latestVer:J

    .line 76
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 76
    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 77
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->e:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 78
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 80
    :try_start_0
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_2
    :goto_1
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->g:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->city:Ljava/lang/String;

    .line 86
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->d:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->gender:Ljava/lang/String;

    .line 87
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->i:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 88
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->b:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 89
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->c:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nickPinyin:Ljava/lang/String;

    .line 90
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->h:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 91
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->m:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    .line 91
    iput-boolean v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    .line 92
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->p:Ljava/lang/Integer;

    if-nez v8, :cond_5

    .line 93
    iput v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    .line 97
    :goto_2
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->q:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->extension:Ljava/lang/String;

    .line 98
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->q:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 99
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->o:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->realName:Ljava/lang/String;

    .line 100
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->l:Ljava/util/List;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->labels:Ljava/util/List;

    .line 101
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->t:Ljava/util/List;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->authOrgs:Ljava/util/List;

    .line 102
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->n:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    .line 102
    iput-boolean v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isOrgUser:Z

    .line 103
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->r:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    .line 104
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->s:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 105
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->u:Ljava/lang/Long;

    .line 4044
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 105
    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->activeTime:J

    .line 106
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->v:Ljava/lang/Integer;

    .line 5033
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 106
    iput v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->status:I

    .line 107
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->w:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmail:Ljava/lang/String;

    .line 108
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->x:Ljava/lang/Integer;

    .line 6033
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 108
    iput v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->industryCode:I

    .line 109
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->y:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->industry:Ljava/lang/String;

    .line 110
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->z:Ljava/lang/Integer;

    .line 7033
    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v8

    .line 110
    iput v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->numberType:I

    .line 111
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->B:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobile:Ljava/lang/String;

    .line 112
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->A:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->workMobileStateCode:Ljava/lang/String;

    .line 113
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->C:Lccz;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdl(Lccz;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 114
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->H:Lccz;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdl(Lccz;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 115
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->D:Ljava/util/List;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgIdList:Ljava/util/List;

    .line 116
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->E:Lcgm;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->fromIDLModel(Lcgm;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .line 117
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->G:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgInfoStr:Ljava/lang/String;

    .line 119
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    .line 7084
    iget-object v4, v8, Lccr;->d:Lccs;

    .line 120
    .local v4, "localizationConverter":Lccs;
    if-eqz v4, :cond_3

    .line 121
    invoke-interface {v4, v5}, Lccs;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 128
    .end local v4    # "localizationConverter":Lccs;
    :cond_3
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 129
    iget-object v8, p0, Lcgj;->b:Ljava/util/List;

    if-eqz v8, :cond_7

    .line 130
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v8, p0, Lcgj;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 131
    iget-object v8, p0, Lcgj;->b:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcev;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->fromIDLModel(Lcev;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v6

    .line 132
    .local v6, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_4

    .line 133
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 81
    .end local v2    # "i":I
    .end local v6    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 95
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_5
    iget-object v8, p0, Lcgj;->a:Lcgk;

    iget-object v8, v8, Lcgk;->p:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    goto/16 :goto_2

    .line 124
    :cond_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    .line 125
    const/4 v8, 0x1

    iput v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->status:I

    goto :goto_3

    .line 138
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    .line 139
    iget-object v8, p0, Lcgj;->i:Ljava/util/List;

    if-eqz v8, :cond_8

    .line 140
    iget-object v8, p0, Lcgj;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 141
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    if-ge v3, v7, :cond_8

    .line 142
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;-><init>()V

    iget-object v8, p0, Lcgj;->i:Ljava/util/List;

    .line 143
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcde;

    invoke-virtual {v9, v8}, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->fromIDLModel(Lcde;)Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    move-result-object v0

    .line 144
    .local v0, "crmContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 148
    .end local v0    # "crmContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
    .end local v3    # "j":I
    .end local v7    # "size":I
    :cond_8
    iget-object v8, p0, Lcgj;->c:Lcgh;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->fromIdl(Lcgh;)Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    .line 149
    iget-object v8, p0, Lcgj;->e:Lcgg;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;->fromIdl(Lcgg;)Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    .line 150
    iget-object v8, p0, Lcgj;->f:Ljava/lang/Boolean;

    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    iput-boolean v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    .line 151
    iget-object v8, p0, Lcgj;->g:Ljava/lang/Boolean;

    invoke-static {v8, v10}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v8

    iput-boolean v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    .line 152
    iget-object v8, p0, Lcgj;->d:Lcds;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->fromIdl(Lcds;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 153
    iget-object v8, p0, Lcgj;->j:Lcff;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;->fromIDLModel(Lcff;)Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    move-result-object v8

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    goto/16 :goto_0
.end method


# virtual methods
.method public copyExtensions(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 1
    .param p1, "other"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 51
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    .line 52
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    .line 53
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    .line 54
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    .line 55
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 56
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    .line 58
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 60
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getMailAddress()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 162
    .local v0, "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 167
    .end local v0    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userOverageObject:Lcom/alibaba/android/dingtalk/userbase/model/UserOverageObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 182
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->friendRequestObject:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->crmContacts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->relationObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgRelationObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 187
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->partial:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    :cond_1
    move v0, v2

    .line 183
    goto :goto_1

    :cond_2
    move v1, v2

    .line 187
    goto :goto_2
.end method
